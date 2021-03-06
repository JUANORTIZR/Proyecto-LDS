import { Component, OnInit } from '@angular/core';
import { Servicio } from '../../Models/servicio';
import { ServicioService } from 'src/app/services/servicio.service';
import { AlertModalComponent } from 'src/app/@base/alert-modal/alert-modal.component';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';
import { Router } from '@angular/router';
import { User } from 'src/app/seguridad/user';
import { Subscription } from 'rxjs';
import { ModalInfoComponent } from 'src/app/@base/modal-info/modal-info.component';
import { EnvioService } from 'src/app/services/envio.service';

@Component({
  selector: 'app-consultar-solicitudes',
  templateUrl: './consultar-solicitudes.component.html',
  styleUrls: ['./consultar-solicitudes.component.css']
})
export class ConsultarSolicitudesComponent implements OnInit {
  servicios:Servicio[]=[];
  searchText:string;
  servicio:Servicio;
  usuario: User = (JSON.parse(localStorage.getItem('currentUser')));
  loading=false;
  suscripcion: Subscription;
  constructor(private router: Router,private servicioService:ServicioService, private modalService: NgbModal, private envio:EnvioService) { }

  ngOnInit(): void {
    if(this.usuario.tipo!="admin"){
      alert("Acceso denegado");
      this.router.navigate(['/Login']);
    }
    
    this.servicioService.gets().subscribe(s=> {
      
      this.loading = false;
      this.servicios = s;
    })
    this.actualizarListaSignal();
  }
  filtro(estado:string){
    this.searchText=estado;
  }
  private actualizarListaSignal(){
    this.servicioService.signalRecived.subscribe((servicio: Servicio) => {
      this.servicios.push(servicio);
    });
  }
  consultarPorId(id:string){
    this.servicioService.get(id).subscribe(s => {
      this.servicio = s;
    });
    
  }
  abrir(serivicio:Servicio){
    this.envio.EnviarServicio(serivicio);
    this.modalService.open(ModalInfoComponent,{ size: 'lg',centered: true });
  }
}
