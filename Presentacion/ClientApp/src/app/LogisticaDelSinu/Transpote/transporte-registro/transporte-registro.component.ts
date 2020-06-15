import { Component, OnInit } from '@angular/core';
import { FormGroup, FormBuilder, Validators } from '@angular/forms';
import { Transporte } from '../../Models/transporte';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';
import { TransporteService } from 'src/app/services/transporte.service';
import { AlertModalComponent } from 'src/app/@base/alert-modal/alert-modal.component';
import { Router } from '@angular/router';
import { User } from 'src/app/seguridad/user';

@Component({
  selector: 'app-transporte-registro',
  templateUrl: './transporte-registro.component.html',
  styleUrls: ['./transporte-registro.component.css']
})
export class TransporteRegistroComponent implements OnInit {
  formGroup: FormGroup;
  transporte:Transporte;
  usuario: User = (JSON.parse(localStorage.getItem('currentUser')));
  constructor(private router: Router,private transporteService:TransporteService, private formBuilder: FormBuilder, private modalService: NgbModal) { }

  ngOnInit(): void {
    if(this.usuario.tipo!="admin"){
      alert("Acceso denegado");
      this.router.navigate(['/Login']);
    }
    this.buildForm();
  }
  private buildForm() {
    this.transporte=new Transporte();
    this.transporte.nit = "";
    this.transporte.nombre = "";
    this.transporte.pais = "";
    this.transporte.ciudad = "";
    this.transporte.direccion = "";
    this.transporte.barrio = "";
    this.transporte.telefono = "";
    this.transporte.correoElectronico = "";
    this.transporte.sitioWeb = "";
    this.transporte.claseTransporte = "";
    this.transporte.capacidadAsientos = "";
    this.formGroup = this.formBuilder.group({
      nit: [this.transporte.nit, Validators.required],
      nombre: [this.transporte.nombre, Validators.required],
      pais: [this.transporte.pais, Validators.required],
      ciudad: [this.transporte.ciudad, Validators.required],
      direccion: [this.transporte.direccion, Validators.required],
      barrio: [this.transporte.barrio, Validators.required],
      telefono: [this.transporte.telefono, Validators.required],
      correoElectronico: [this.transporte.correoElectronico, [Validators.required, Validators.email]],
      sitioWeb: [this.transporte.sitioWeb, Validators.required],
      claseTransporte: [this.transporte.sitioWeb, Validators.required],
      capacidadAsientos: [this.transporte.sitioWeb, Validators.required]
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
    this.transporte = this.formGroup.value;
    this.transporteService.post(this.transporte).subscribe(p => {
      if (p != null) {
        const messageBox = this.modalService.open(AlertModalComponent)
        messageBox.componentInstance.title = "Resultado Operación";
        messageBox.componentInstance.message = 'restaurate registrado!!!';
        this.transporte = p;
      }
    });
  }

}
