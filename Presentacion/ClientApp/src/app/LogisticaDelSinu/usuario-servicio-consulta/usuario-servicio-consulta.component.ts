import { Component, OnInit } from '@angular/core';
import { Servicio } from '../Models/servicio';
import { UsuarioService } from 'src/app/services/usuario.service';
import { ServicioService } from 'src/app/services/servicio.service';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';
import { AlertModalComponent } from 'src/app/@base/alert-modal/alert-modal.component';
import { ModalInfoComponent } from 'src/app/@base/modal-info/modal-info.component';
import { EnvioService } from 'src/app/services/envio.service';

@Component({
  selector: 'app-usuario-servicio-consulta',
  templateUrl: './usuario-servicio-consulta.component.html',
  styleUrls: ['./usuario-servicio-consulta.component.css']
})
export class UsuarioServicioConsultaComponent implements OnInit {
  servicios:Servicio[];
  searchText:string;
  servicio:Servicio;
  
  constructor(private envio:EnvioService,private usuarioService:UsuarioService,private servicioService:ServicioService, private modalService: NgbModal) { }

  ngOnInit(): void {
    var usuario = (JSON.parse(localStorage.getItem('currentUser')));
    this.usuarioService.get(usuario.usuario,"Servicio").subscribe(s => {
      this.servicios = s.servicios;
    });
  }

  abrir(servicio:Servicio){
    this.envio.EnviarServicio(servicio);
    const messageBox = this.modalService.open(ModalInfoComponent, { size: 'lg',centered: true })
  }
  filtro(estado:string){
    this.searchText = estado
  }
  
}
