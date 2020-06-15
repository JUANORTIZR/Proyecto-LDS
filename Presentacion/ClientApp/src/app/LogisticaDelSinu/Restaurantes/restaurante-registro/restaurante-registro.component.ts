import { Component, OnInit } from '@angular/core';
import { Restaurante } from '../../Models/restaurante';
import { RestaurantesService } from 'src/app/services/restaurantes.service';
import { FormGroup,FormBuilder, Validators } from '@angular/forms';
import { AlertModalComponent } from 'src/app/@base/alert-modal/alert-modal.component';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';
import { Router } from '@angular/router';
import { User } from 'src/app/seguridad/user';

@Component({
  selector: 'app-restaurante-registro',
  templateUrl: './restaurante-registro.component.html',
  styleUrls: ['./restaurante-registro.component.css']
})
export class RestauranteRegistroComponent implements OnInit {
  formGroup: FormGroup;
  restaurante:Restaurante;
  usuario: User = (JSON.parse(localStorage.getItem('currentUser')));
  constructor(private router: Router,private restauranteService:RestaurantesService, private formBuilder: FormBuilder, private modalService: NgbModal) { }

  ngOnInit(): void {
    if(this.usuario.tipo!="admin"){
      alert("Acceso denegado");
      this.router.navigate(['/Login']);
    }
    this.buildForm();
  }
  private buildForm() {
    this.restaurante = new Restaurante();
    this.restaurante.nit = "";
    this.restaurante.nombre = "";
    this.restaurante.pais = "";
    this.restaurante.ciudad = "";
    this.restaurante.direccion = "";
    this.restaurante.barrio = "";
    this.restaurante.telefono = "";
    this.restaurante.correoElectronico = "";
    this.restaurante.sitioWeb = "";
    this.restaurante.claseComida = "";
    this.formGroup = this.formBuilder.group({
      nit: [this.restaurante.nit, Validators.required],
      nombre: [this.restaurante.nombre, Validators.required],
      pais: [this.restaurante.pais, Validators.required],
      ciudad: [this.restaurante.ciudad, Validators.required],
      direccion: [this.restaurante.direccion, Validators.required],
      barrio: [this.restaurante.barrio, Validators.required],
      telefono: [this.restaurante.telefono, Validators.required],
      correoElectronico: [this.restaurante.correoElectronico, [Validators.required, Validators.email]],
      sitioWeb: [this.restaurante.sitioWeb, Validators.required],
      claseComida: [this.restaurante.claseComida, Validators.required]
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
    this.restaurante = this.formGroup.value;
    this.restauranteService.post(this.restaurante).subscribe(p => {
      if (p != null) {
        const messageBox = this.modalService.open(AlertModalComponent)
        messageBox.componentInstance.title = "Resultado Operación";
        messageBox.componentInstance.message = 'restaurate registrado!!!';
        this.restaurante = p;
      }
    });
  }



}
