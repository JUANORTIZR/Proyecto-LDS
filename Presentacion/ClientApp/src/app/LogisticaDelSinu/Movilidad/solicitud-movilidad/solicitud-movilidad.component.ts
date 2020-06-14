import { Component, OnInit } from '@angular/core';
import { FormGroup, FormBuilder, Validators } from '@angular/forms';
import { Movilidad } from '../../Models/movilidad';
import { User } from 'src/app/seguridad/user';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';
import { UsuarioService } from 'src/app/services/usuario.service';
import { MovilidadService } from 'src/app/services/movilidad.service';
import { AlertModalComponent } from 'src/app/@base/alert-modal/alert-modal.component';

@Component({
  selector: 'app-solicitud-movilidad',
  templateUrl: './solicitud-movilidad.component.html',
  styleUrls: ['./solicitud-movilidad.component.css']
})
export class SolicitudMovilidadComponent implements OnInit {
  formGroup: FormGroup;
  movilidad: Movilidad;
  usuario: User = (JSON.parse(localStorage.getItem('currentUser')));
  guiaCheked: boolean;
  guia: string;
  visitaCheked: boolean;
  visita: string;
  seguroCheked: boolean;
  seguro: string;
  agendaCheked: boolean;
  agenda: string;
  costoCheked: boolean;
  costo: string;
  refrigerio: string[] = [];
  planAlimentacion: string[] = [];
  idMovilida:string;
  constructor(private movilidadService: MovilidadService, private formBuilder: FormBuilder, private modalService: NgbModal) { }

  ngOnInit(): void {
    this.contruirFormulario();
    this.movilidadService.getCantidad(this.usuario.identificacion).subscribe(c => {
      if(c!=null){
        this.idMovilida = this.usuario.identificacion+(c+1);
        this.control.idMovilidad.setValue(this.idMovilida);
      }
    });
    this.cambiarGuia();
    this.cambiarVisita();
    this.cambiarSeguro();
    this.cambiarAgenda();
    this.cambiarCosto();
  }

  contruirFormulario() {
    this.movilidad = new Movilidad();
    this.movilidad.idMovilidad = "";
    this.movilidad.fechaEvento = new Date;
    this.movilidad.destino = "";
    this.movilidad.nocheAlojamiento = "";
    this.movilidad.tipoAcomodacion = "";
    this.movilidad.tipoHotel = "";
    this.movilidad.transporte = "";
    this.movilidad.refrigerio = "";
    this.movilidad.alimentacion = "";
    this.movilidad.acompanamientoGuia = "NO";
    this.movilidad.visitaTecnica = "NO";
    this.movilidad.seguroViaje = "NO";
    this.movilidad.organizacionAgenda = "NO";
    this.movilidad.costoEntrada = "NO";
    this.movilidad.objervacion = "";
    this.movilidad.fechaSolicitud = new Date();
    this.formGroup = this.formBuilder.group({
      idMovilidad: [this.movilidad.idMovilidad, Validators.required],
      fechaEvento: [this.movilidad.fechaEvento, Validators.required],
      destino: [this.movilidad.destino, Validators.required],
      nocheAlojamiento: [this.movilidad.nocheAlojamiento, Validators.required],
      tipoAcomodacion: [this.movilidad.tipoAcomodacion, Validators.required],
      tipoHotel: [this.movilidad.tipoHotel, Validators.required],
      transporte: [this.movilidad.transporte, Validators.required],
      observacion: [this.movilidad.objervacion]
    })
  }
  cambiarTipoAcomodacion(e) {
    this.control.tipoAcomodacion.setValue(e.target.value, {
      onlySelf: true,
    })
    alert(this.control.tipoAcomodacion.value);
  }
  cambiarTipoHotel(e) {
    this.control.tipoHotel.setValue(e.target.value, {
      onlySelf: true,
    })
    alert(this.control.tipoHotel.value);
  }
  cambiarTransporte(e) {
    this.control.transporte.setValue(e.target.value, {
      onlySelf: true,
    })
    alert(this.control.transporte.value);
  }

  get control() {
    return this.formGroup.controls;
  }


  cambiarGuia() {
    this.guiaCheked = !this.guiaCheked;
    if (this.guiaCheked) {
      this.guia = "SI";
      return;
    }
    this.guia = "NO";
  }
  cambiarVisita() {
    this.visitaCheked = !this.visitaCheked;
    if (this.visitaCheked) {
      this.visita = "SI";
      return;
    }
    this.visita = "NO";
  }
  cambiarSeguro() {
    this.seguroCheked = !this.seguroCheked;
    if (this.seguroCheked) {
      this.seguro = "SI";
      return;
    }
    this.seguro = "NO";
  }
  cambiarAgenda() {
    this.agendaCheked = !this.agendaCheked;
    if (this.agendaCheked) {
      this.agenda = "SI";
      return;
    }
    this.agenda = "NO";
  }
  cambiarCosto() {
    this.costoCheked = !this.costoCheked;
    if (this.costoCheked) {
      this.costo = "SI";
      return;
    }
    this.costo = "NO";
  }
  seleccionarRefrigerio(): string {
    var refrigerioI = "";
    this.refrigerio.forEach(element => {
      refrigerioI += element + ",";
    });
    return refrigerioI;
  }
  seleccionarPlanAlimentacion(): string {
    var planAlimentacionI = "";
    this.planAlimentacion.forEach(element => {
      planAlimentacionI += element + ",";
    });
    return planAlimentacionI;
  }
  onSubmit(){
    if(this.formGroup.invalid){
      return;
    }
    this.Registrar();
  }

  Registrar() {
    this.movilidad = this.formGroup.value;
    this.movilidad.acompanamientoGuia = this.guia;
    this.movilidad.visitaTecnica = this.visita;
    this.movilidad.seguroViaje = this.seguro;
    this.movilidad.organizacionAgenda = this.agenda;
    this.movilidad.costoEntrada = this.costo;
    this.movilidad.refrigerio = this.seleccionarRefrigerio();
    this.movilidad.alimentacion = this.seleccionarPlanAlimentacion();
    this.movilidadService.post(this.movilidad).subscribe(m => {
      if (m != null) {
        this.movilidad = m;
        const messageBox = this.modalService.open(AlertModalComponent)
        messageBox.componentInstance.title = "Resultado Operación";
        messageBox.componentInstance.message = 'Su solicitud de servicio ha sido registrada con exito!!!';
      }
    })
  }
}
