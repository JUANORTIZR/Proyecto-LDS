import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { TransporteService } from 'src/app/services/transporte.service';
import { Transporte } from '../../Models/transporte';
import { AlertModalComponent } from 'src/app/@base/alert-modal/alert-modal.component';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';
import { User } from 'src/app/seguridad/user';

@Component({
  selector: 'app-trasporte-actualizar',
  templateUrl: './trasporte-actualizar.component.html',
  styleUrls: ['./trasporte-actualizar.component.css']
})
export class TrasporteActualizarComponent implements OnInit {
  formGroup: FormGroup;
  transporte:Transporte;
  tEncontrar:Transporte;
  nit = this.rutaActiva.snapshot.params.nit;
  usuario: User = (JSON.parse(localStorage.getItem('currentUser')));
  constructor(private router: Router,private transporteServices: TransporteService, private formBuilder: FormBuilder, private rutaActiva:ActivatedRoute, private modalService:NgbModal) { }

  ngOnInit(): void {
    if(this.usuario.tipo!="admin"){
      alert("Acceso denegado");
      this.router.navigate(['/Login']);
    }
    this.transporteServices.get(this.nit).subscribe(r => {
      this.tEncontrar = r;
      this.buildForm(this.tEncontrar);
    })
    
  }
  private buildForm(transporteA:Transporte) {
    this.transporte= transporteA;

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
      claseTransporte: [this.transporte.claseTransporte, Validators.required],
      capacidadAsientos: [this.transporte.capacidadAsientos, Validators.required]
    });
  }
  get control() {
    return this.formGroup.controls;
  }

  onSubmit() {
    if (this.formGroup.invalid) {
      return;
    }
    this.actualizar();
  }
  actualizar() {
    this.transporte = this.formGroup.value;
    this.transporteServices.put(this.transporte).subscribe(t => {

    });
    const messageBox = this.modalService.open(AlertModalComponent)
    messageBox.componentInstance.title = "Resultado Operación";
    messageBox.componentInstance.message = 'Sus datos se han actulizado correctamente';
  }

}
