import { Component, OnInit } from '@angular/core';
import { FormGroup, FormBuilder } from '@angular/forms';
import { Movilidad } from '../../Models/movilidad';
import { User } from 'src/app/seguridad/user';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';
import { UsuarioService } from 'src/app/services/usuario.service';
import { MovilidadService } from 'src/app/services/movilidad.service';

@Component({
  selector: 'app-solicitud-movilidad',
  templateUrl: './solicitud-movilidad.component.html',
  styleUrls: ['./solicitud-movilidad.component.css']
})
export class SolicitudMovilidadComponent implements OnInit {
  formGroup: FormGroup;
  movilidad:Movilidad;
  usuario: User = (JSON.parse(localStorage.getItem('currentUser')));
  guiaCheked:boolean=false;
  guia:string;
  visitaCheked:boolean= false;
  visita:string;
  seguroCheked:boolean;
  seguro:string;
  agendaCheked:boolean=false;
  agenda:string;
  costoCheked:boolean= false;
  costo:string;
  refrigerio:string[]=[];
  //Seleccionados para plan alimentacion
  planAlimentacion:string[]=[];
  
  constructor(private movilidadService:MovilidadService, private formBuilder: FormBuilder, private modalService: NgbModal) { }

  ngOnInit(): void {
    
  }

  cambiarGuia(){
    this.guiaCheked=!this.guiaCheked;
    if(this.guiaCheked){
      this.guia = "SI";
      return;
    }
    this.guia = "NO";
  }
  cambiarVisita(){
    this.visitaCheked=!this.visitaCheked;
    if(this.visitaCheked){
      this.visita = "SI";
      return;
    }
    this.visita = "NO";
  }
  cambiarSeguro(){
    this.seguroCheked=!this.seguroCheked;
    if(this.seguroCheked){
      this.seguro = "SI";
      return;
    }
    this.seguro = "NO";
  }
  cambiarAgenda(){
    this.agendaCheked=!this.agendaCheked;
    if(this.agendaCheked){
      this.agenda = "SI";
      return;
    }
    this.agenda = "NO";
  }
  cambiarCosto(){
    this.costoCheked=!this.costoCheked;
    if(this.costoCheked){
      this.costo = "SI";
      return;
    }
    this.costo = "NO";
  }
  seleccionarRefrigerio(){
    if(this.refrigerio==null){
      alert("error");
    }
    var servicios="";
    this.refrigerio.forEach(element => {
      servicios+=element+",";
    });
    alert(servicios);
   //this.control.refrigerio.setValue(servicios);
  }
  seleccionarPlanAlimentacion(){
    if(this.planAlimentacion==null){
      alert("error");
    }
    var planAlimentacion="";
    this.planAlimentacion.forEach(element => {
      planAlimentacion+=element+",";
    });
   //this.control.tipoServicio.setValue(servicios);
  }

  Prueba(){
  
  }
}
