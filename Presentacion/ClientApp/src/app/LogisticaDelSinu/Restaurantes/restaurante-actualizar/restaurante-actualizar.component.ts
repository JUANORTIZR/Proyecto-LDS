import { Component, OnInit } from '@angular/core';
import { FormGroup, FormBuilder, Validators } from '@angular/forms';
import { Restaurante } from '../../Models/restaurante';
import { RestaurantesService } from 'src/app/services/restaurantes.service';
import { ActivatedRoute } from '@angular/router';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';
import { AlertModalComponent } from 'src/app/@base/alert-modal/alert-modal.component';

@Component({
  selector: 'app-restaurante-actualizar',
  templateUrl: './restaurante-actualizar.component.html',
  styleUrls: ['./restaurante-actualizar.component.css']
})
export class RestauranteActualizarComponent implements OnInit {
  formGroup: FormGroup;
  restaurante:Restaurante;
  rEncontrado:Restaurante;
  nit = this.rutaActiva.snapshot.params.nit;
  constructor(private restauranteServices: RestaurantesService, private formBuilder: FormBuilder, private rutaActiva:ActivatedRoute, private modalService:NgbModal) { }

  ngOnInit(): void {
    
    this.restauranteServices.get(this.nit).subscribe(r => {
      this.rEncontrado = r;
      this.buildForm(this.rEncontrado);
    });
    
  }
  private buildForm(restauranteA:Restaurante) {
    this.restaurante = restauranteA;
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
  AsignarDatos(){

  }

  onSubmit() {
    if (this.formGroup.invalid) {
      return;
    }
    this.actualizar();
  }
  actualizar() {
    this.restaurante = this.formGroup.value;
    this.restauranteServices.put(this.restaurante).subscribe(r => {
      this.restaurante = r;
    });
    const messageBox = this.modalService.open(AlertModalComponent)
    messageBox.componentInstance.title = "Resultado Operación";
    messageBox.componentInstance.message = 'Sus datos se han actulizado correctamente';
  }
}
