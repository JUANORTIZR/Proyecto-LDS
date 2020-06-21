import { Component, OnInit, Output, EventEmitter } from '@angular/core';
import { FormGroup, FormBuilder, Validators } from '@angular/forms';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';
import { AlertModalComponent } from 'src/app/@base/alert-modal/alert-modal.component';
import { Servicio } from '../../Models/servicio';
import { ServicioService } from 'src/app/services/servicio.service';
import { Usuario } from '../../Models/usuario';
import { UsuarioService } from 'src/app/services/usuario.service';
import { User } from 'src/app/seguridad/user';
import { Router } from '@angular/router';


@Component({
  selector: 'app-solitud-servicio',
  templateUrl: './solitud-servicio.component.html',
  styleUrls: ['./solitud-servicio.component.css']
})
export class SolitudServicioComponent implements OnInit {

  formGroup: FormGroup;
  servicio:Servicio;
  checkedRefrigerio:boolean=true;
  checkedPonente:boolean=true;
  checkedLogistica:boolean=true;
  listaServicios:string[] = ["Seminario","Taller","Congreso"];
  servicioSele:string;
  refrigerio:string;
  ponente:string;
  logistica:string;
  idServicio:string;
  lista:string[]=["hola","que","tal", "estas"];
  seleccionados:string[]=[];
  loading=false;
  usuario: User = (JSON.parse(localStorage.getItem('currentUser')));
  constructor(private router: Router,private servicioService: ServicioService, private usuarioService: UsuarioService, private formBuilder: FormBuilder, private modalService: NgbModal) {
    
   }

  ngOnInit(): void {
    this.buildForm();
    this.servicioService.getCantidad(this.usuario.identificacion).subscribe(c => {
      if(c!=null){
        this.idServicio = this.usuario.identificacion+(c+1);
        this.control.idServicio.setValue(this.idServicio);
      }
    });
    this.cambiarLogistica();
    this.cambiarPonentes();
    this.cambiarRefrigerio();
    if(this.usuario==null){
      const messageBox = this.modalService.open(AlertModalComponent)
          messageBox.componentInstance.title = "Resultado Operación";
          messageBox.componentInstance.message = 'Para poder hacer la solicitud de uno de nuestros servicios por favor inicia sesión o registrate';
    }
  }

  private buildForm() {
    this.servicio = new Servicio();
    this.servicio.fechaEvento = new Date();
    this.servicio.idServicio = "";
    this.servicio.tipoServicio = "";
    this.servicio.descripcion = "";
    this.servicio.observacion = "";

    this.formGroup = this.formBuilder.group({
      idServicio : [this.servicio.idServicio, Validators.required],
      fechaEvento : [this.servicio.fechaEvento, Validators.required],
      tipoServicio : [this.servicio.tipoServicio, Validators.required],
      descripcion : [this.servicio.descripcion, Validators.required],
      observacion : [this.servicio.observacion]
    });
  }

 cambiarTipoServicio(e){
    this.control.tipoServicio.setValue(e.target.value, {
      onlySelf: true,  
    })
  }

 

  cambiarRefrigerio(){
    this.checkedRefrigerio=!this.checkedRefrigerio;
    if(this.checkedRefrigerio){
      this.refrigerio = "SI";
      return;
    }
    this.refrigerio = "NO";
  }
  cambiarPonentes(){
    this.checkedPonente=!this.checkedPonente;
    if(this.checkedPonente){
      this.ponente = "SI";
      return;
    }
    this.ponente = "NO";

  }
  cambiarLogistica(){
    this.checkedLogistica=!this.checkedLogistica;
    if(this.checkedLogistica){
      this.logistica = "SI";
      return;
    }
    this.logistica = "NO";
  }

  get control() {
    return this.formGroup.controls;
  }

  onSubmit() {
    if(this.formGroup.invalid){
      return;
    }
    this.registrar();
  }

  registrar() {
    this.loading = true;
    this.servicio = this.formGroup.value;
    this.servicio.fechaSolicitud = new Date();
    this.servicio.correo = this.usuario.correo;
    this.servicio.nombreCliente = this.usuario.primerNombre +" "+ this.usuario.primerApellido;
    this.servicio.refrigerio = this.refrigerio;
    this.servicio.ponentes = this.ponente;
    this.servicio.logisticaCompleta = this.logistica;
    this.servicio.idCliente = this.usuario.identificacion ;
      this.servicioService.post(this.servicio).subscribe(s => {
        if (s != null) {
          this.loading = false;
          const messageBox = this.modalService.open(AlertModalComponent)
          messageBox.componentInstance.title = "Resultado Operación";
          messageBox.componentInstance.message = `Su solicitud de servicio ha sido registrada con exito, pronto le notificaremos el estado de su solicitud`;
         this.servicio = s;
         this.buildForm();
         this.servicioService.getCantidad(this.usuario.identificacion).subscribe(c => {
          if(c!=null){
            this.idServicio = this.usuario.identificacion+(c+1);
            this.control.idServicio.setValue(this.idServicio);
          }
        });
        }
      });
  }
  
  
}
