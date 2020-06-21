import { Component, OnInit } from '@angular/core';
import { FormGroup, FormBuilder, Validators } from '@angular/forms';
import { Movilidad } from '../../Models/movilidad';
import { User } from 'src/app/seguridad/user';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';
import { UsuarioService } from 'src/app/services/usuario.service';
import { MovilidadService } from 'src/app/services/movilidad.service';
import { AlertModalComponent } from 'src/app/@base/alert-modal/alert-modal.component';
import { Router } from '@angular/router';

@Component({
  selector: 'app-solicitud-movilidad',
  templateUrl: './solicitud-movilidad.component.html',
  styleUrls: ['./solicitud-movilidad.component.css']
})
export class SolicitudMovilidadComponent implements OnInit {
  formGroup: FormGroup;
  movilidad: Movilidad;
  usuario: User = (JSON.parse(localStorage.getItem('currentUser')));
  guiaCheked: boolean =true;
  guia: string;
  visitaCheked: boolean=true;
  visita: string;
  seguroCheked: boolean=true;
  seguro: string;
  agendaCheked: boolean=true;
  agenda: string;
  costoCheked: boolean=true;
  costo: string;
  idMovilida: string;
  lista:string[]=["Mañana", "Tarde", "Noche", "Transporte"];
  seleccionados:string[]=[];
  lista1:string[]=["Desayuno", "Almuerzo", "Cena"];
  seleccionados1:string[]=[];
  loading=false;
  constructor(private router: Router,private movilidadService: MovilidadService, private formBuilder: FormBuilder, private modalService: NgbModal) { }


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
    if (this.usuario == null) {
      const messageBox = this.modalService.open(AlertModalComponent)
      messageBox.componentInstance.title = "Resultado Operación";
      messageBox.componentInstance.message = 'Para poder hacer la solicitud de uno de nuestros servicios por favor inicia sesión o registrate';
    }
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
    this.movilidad.objervacion = "";
    this.movilidad.fechaSolicitud = new Date();
    this.formGroup = this.formBuilder.group({
      idMovilidad: [this.movilidad.idMovilidad, Validators.required],
      fechaEvento: [this.movilidad.fechaEvento],
      destino: [this.movilidad.destino, Validators.required],
      nocheAlojamiento: [this.movilidad.nocheAlojamiento, Validators.required],
      tipoAcomodacion: [this.movilidad.tipoAcomodacion],
      tipoHotel: [this.movilidad.tipoHotel],
      transporte: [this.movilidad.transporte],
      objervacion: [this.movilidad.objervacion],
      refrigerio : [this.movilidad.refrigerio],
      alimentacion: [this.movilidad.alimentacion]
    })
  }
  cambiarTipoAcomodacion(e) {
    this.control.tipoAcomodacion.setValue(e.target.value, {
      onlySelf: true,
    })
  }
  cambiarTipoHotel(e) {
    this.control.tipoHotel.setValue(e.target.value, {
      onlySelf: true,
    })
  }
  cambiarTransporte(e) {
    this.control.transporte.setValue(e.target.value, {
      onlySelf: true,
    })
  }
  cambiarRefrigerio(){
    if(this.seleccionados==null){
      alert("error");
    }
    var servicios="";
    this.seleccionados.forEach(element => {
      servicios+=element+",";
    });
   this.control.refrigerio.setValue(servicios);
   }


   seleccionarPlanAlimentacion() {
    if (this.seleccionados1 == null) {
      alert("error");
    }
    var alimentacion = "";
    this.seleccionados1.forEach(element => {
      alimentacion += element + ",";
    });
    this.control.alimentacion.setValue(alimentacion);
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

  

  onSubmit() {
    if (this.formGroup.invalid) {
      return;
    }
    this.registrar();
  }

  registrar() {
    this.loading = true;
    this.cambiarRefrigerio();
    this.seleccionarPlanAlimentacion();
    this.movilidad = this.formGroup.value;
    this.movilidad.fechaSolicitud = new Date();
    this.movilidad.acompanamientoGuia = this.guia;
    this.movilidad.visitaTecnica = this.visita;
    this.movilidad.seguroViaje = this.seguro;
    this.movilidad.organizacionAjenda = this.agenda;
    this.movilidad.costoEntrada = this.costo;
    this.movilidad.idCliente = this.usuario.identificacion;
    this.movilidad.nombreCliente = this.usuario.primerNombre +" "+ this.usuario.primerApellido;
    this.movilidad.correo = this.usuario.correo;
    this.movilidadService.post(this.movilidad).subscribe(m => {
      if (m != null) {
        this.loading = false;
        const messageBox = this.modalService.open(AlertModalComponent)
        messageBox.componentInstance.title = "Resultado Operación";
        messageBox.componentInstance.message = `Su solicitud de servicio ha sido registrada con exito, pronto le notificaremos el estado de su solicitud`;
        this.movilidad = m;
        this.contruirFormulario();
        this.movilidadService.getCantidad(this.usuario.identificacion).subscribe(c => {
          if(c!=null){
            this.idMovilida = this.usuario.identificacion+(c+1);
            this.control.idMovilidad.setValue(this.idMovilida);
          }
        });
      }
    })
  }
}
