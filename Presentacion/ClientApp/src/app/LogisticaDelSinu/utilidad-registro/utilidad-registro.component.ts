import { Component, OnInit } from '@angular/core';
import { UtilidadService } from 'src/app/services/utilidad.service';
import { Utilidad } from '../Models/utilidad';
import { FormGroup, FormBuilder, Validators } from '@angular/forms';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';
import { AlertModalComponent } from 'src/app/@base/alert-modal/alert-modal.component';

@Component({
  selector: 'app-utilidad-registro',
  templateUrl: './utilidad-registro.component.html',
  styleUrls: ['./utilidad-registro.component.css']
})
export class UtilidadRegistroComponent implements OnInit {
  formGroup: FormGroup;
  utilidad: Utilidad;
  
  constructor(private utilidadService: UtilidadService, private formBuilder: FormBuilder, private modalService: NgbModal) { }

  ngOnInit(): void {
    this.buildForm();
  }
  private buildForm() {
    this.utilidad = new Utilidad();
    this.utilidad.idPago = "";
    this.utilidad.precio =null;
    this.utilidad.costo =null;
    this.utilidad.utilidadTotal=null;

    this.formGroup = this.formBuilder.group({
      idPago: [this.utilidad.idPago, Validators.required],
      precio: [this.utilidad.precio,[Validators.required,Validators.min(1)]],
      costo: [this.utilidad.costo,[Validators.required,Validators.min(1)]],
      utilidadTotal:[this.utilidad.utilidadTotal],
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
    this.utilidad = this.formGroup.value;
    this.utilidadService.post(this.utilidad).subscribe(u => {
      if (u != null) {
        this.control.utilidadTotal.setValue(this.utilidad.utilidadTotal);
        this.utilidad = u;
        const messageBox = this.modalService.open(AlertModalComponent)
        messageBox.componentInstance.title = "Resultado Operación";
        messageBox.componentInstance.message = 'Utilidad Calculada :'+ this.utilidad.utilidadTotal;
       
      }
    });
  }

}
