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
  tipoAcomodacion:string[] = ["Sencilla","Multiple","Individual"];
  tipoHotel:string[] = ["Sencillo","3 Estrellas","4 Estrellas","5 Estrellas"];
  transporte:string[] = ["Aereo","Terrestre"];
  usuario: User = (JSON.parse(localStorage.getItem('currentUser')));
  constructor(private movilidadService:MovilidadService, private usuarioService: UsuarioService, private formBuilder: FormBuilder, private modalService: NgbModal) { }

  ngOnInit(): void {
  }

}
