import { Component, OnInit } from '@angular/core';
import { AbstractControl, ValidatorFn, Validators, FormBuilder, FormGroup } from '@angular/forms';
import { UsuarioService } from 'src/app/services/usuario.service';
import { Usuario } from '../Models/usuario';
import { ActivatedRoute } from '@angular/router';
import { AlertModalComponent } from 'src/app/@base/alert-modal/alert-modal.component';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';

@Component({
  selector: 'app-actualizar-usuario',
  templateUrl: './actualizar-usuario.component.html',
  styleUrls: ['./actualizar-usuario.component.css']
})
export class ActualizarUsuarioComponent implements OnInit {

  formGroup: FormGroup;
  usuario: Usuario;
  uEncontrado:Usuario;
  identificacion = this.rutaActiva.snapshot.params.identificacion;
  constructor(private usuarioService: UsuarioService, private formBuilder: FormBuilder, private rutaActiva: ActivatedRoute, private modalService: NgbModal) { }

  ngOnInit(): void {
    this.usuarioService.get(this.identificacion).subscribe(result => {
      this.uEncontrado = result;
       this.buildForm(this.uEncontrado);
    });

   
  }
  private buildForm(usuarioA:Usuario) {
    this.usuario = usuarioA;
  
    this.formGroup = this.formBuilder.group({
      identificacion: [this.usuario.identificacion, Validators.required],
      primerNombre: [this.usuario.primerNombre, Validators.required],
      segundoNombre: [this.usuario.segundoNombre],
      primerApellido: [this.usuario.primerApellido, Validators.required],
      segundoAPellido: [this.usuario.segundoAPellido, Validators.required],
      telefono: [this.usuario.telefono, [Validators.required, Validators.minLength(10), Validators.maxLength(12)]],
      correoElectronico: [this.usuario.correoElectronico, [Validators.required, Validators.email]],
      clave: [this.usuario.clave, [Validators.required, Validators.minLength(6)]],
      confirmacionClave: ["", [Validators.required, this.ClaveConfirmada('clave')]]
    });
  }

  get control() {
    return this.formGroup.controls;
  }

  onSubmit() {
    if (this.formGroup.invalid) {
      return;
    }
    this.update();
  }
  update() {
    this.usuario = this.formGroup.value;
    alert("aqui si")
    this.usuarioService.put(this.usuario).subscribe(p => {
      this.usuario = p;
    });
    const messageBox = this.modalService.open(AlertModalComponent)
    messageBox.componentInstance.title = "Resultado Operación";
    messageBox.componentInstance.message = 'Sus datos se han actulizado correctamente';
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
