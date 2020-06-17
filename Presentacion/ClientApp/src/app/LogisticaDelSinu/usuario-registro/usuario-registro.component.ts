import { Component, OnInit } from '@angular/core';
import { FormGroup, FormBuilder, Validators, FormControl, AbstractControl, ValidatorFn } from '@angular/forms';
import { Usuario } from '../Models/usuario';
import { UsuarioService } from 'src/app/services/usuario.service';
import { stringify } from 'querystring';
import { Subscription } from 'rxjs';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';
import { AlertModalComponent } from 'src/app/@base/alert-modal/alert-modal.component';
import { User } from 'src/app/seguridad/user';
import { Router } from '@angular/router';

@Component({
  selector: 'app-usuario-registro',
  templateUrl: './usuario-registro.component.html',
  styleUrls: ['./usuario-registro.component.css']
})
export class UsuarioRegistroComponent implements OnInit {

  formGroup: FormGroup;
  usuario: User;
  otro: Usuario;
  loading= false;
  constructor(private router: Router,private usuarioService: UsuarioService,  private formBuilder: FormBuilder, private modalService: NgbModal) { }

  ngOnInit(): void {

    this.buildForm();
  }

  
  private buildForm() {
    this.usuario = new User();
    this.usuario.identificacion = "";
    this.usuario.primerNombre = "";
    this.usuario.segundoNombre = "";
    this.usuario.primerApellido = "";
    this.usuario.segundoAPellido = "";
    this.usuario.telefono = "";
    this.usuario.correo = "";
    this.usuario.usuario = "";
    this.usuario.password = "";

    this.formGroup = this.formBuilder.group({
      identificacion: [this.usuario.identificacion, [Validators.required]],
      primerNombre: [this.usuario.primerNombre, Validators.required],
      segundoNombre: [this.usuario.segundoNombre],
      primerApellido: [this.usuario.primerApellido, Validators.required],
      segundoAPellido: [this.usuario.segundoAPellido, Validators.required],
      telefono: [this.usuario.telefono, [Validators.required, Validators.minLength(10), Validators.maxLength(12)]],
      correo: [this.usuario.correo, [Validators.required, Validators.email]],
      usuario: [this.usuario.usuario, Validators.required],
      password: [this.usuario.password, [Validators.required, Validators.minLength(6)]],
      confirmacionClave: ["", [Validators.required, this.ClaveConfirmada('password')]]
    });
  }

  get control() {
    return this.formGroup.controls;
  }

  onSubmit() {
    if (this.formGroup.invalid) {
      return;
    }
    this.registrar();
  }

  registrar() {
    this.loading = true;
    this.usuario = this.formGroup.value;

    this.usuarioService.post(this.usuario).subscribe(u => {
      if (u != null) {
        const messageBox = this.modalService.open(AlertModalComponent)
        messageBox.componentInstance.title = "Resultado Operación";
        messageBox.componentInstance.message = 'Usuario creado, ya puedes iniciar sesión';
        this.usuario = u;
        if(this.usuario.tipo!="admin"){
          this.router.navigate(['/Login']);
        }
        
      }
      this.loading = false;
    });
  }

  ClaveConfirmada(otherControlName: string): ValidatorFn {
    return (control: AbstractControl): { [key: string]: any } => {
      const otherControl: AbstractControl = control.root.get(otherControlName);

      if (otherControl && control.value !== otherControl.value) {
        return { claveDiferente: true, messageError: "Las contraseñas no coinciden" };
      }

      return null;
    };
  }

}
