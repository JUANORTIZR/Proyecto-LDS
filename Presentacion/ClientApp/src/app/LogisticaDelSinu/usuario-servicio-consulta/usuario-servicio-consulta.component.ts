import { Component, OnInit } from '@angular/core';
import { Servicio } from '../Models/servicio';
import { UsuarioService } from 'src/app/services/usuario.service';
import { ServicioService } from 'src/app/services/servicio.service';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';

@Component({
  selector: 'app-usuario-servicio-consulta',
  templateUrl: './usuario-servicio-consulta.component.html',
  styleUrls: ['./usuario-servicio-consulta.component.css']
})
export class UsuarioServicioConsultaComponent implements OnInit {
  servicios:Servicio[];
  searchText:string;
  servicio:Servicio;

  constructor(private usuarioService:UsuarioService,private servicioService:ServicioService, private modalService: NgbModal) { }

  ngOnInit(): void {
    var usuario = (JSON.parse(localStorage.getItem('currentUser')));
    this.usuarioService.get(usuario.usuario).subscribe(s => {
      alert(s.usuario);
      this.servicios = s.servicios;
    });
  }
  consultarPorId(id:string){
    this.servicioService.get(id).subscribe(s => {
      this.servicio = s;
    });
  }
}
