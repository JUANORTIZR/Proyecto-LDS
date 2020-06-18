import { Component, OnInit } from '@angular/core';
import { Servicio } from '../../Models/servicio';
import { ServicioService } from 'src/app/services/servicio.service';
import { AlertModalComponent } from 'src/app/@base/alert-modal/alert-modal.component';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';
import { Router } from '@angular/router';
import { User } from 'src/app/seguridad/user';
import { Subscription } from 'rxjs';

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
  constructor(private router: Router,private servicioService:ServicioService, private modalService: NgbModal) { }

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

  cambiarEstado(estado:string){
    this.servicio.estado = estado;
    this.servicioService.put(this.servicio).subscribe(s => {
      if(s != null){
        this.servicio = s;
        const messageBox = this.modalService.open(AlertModalComponent)
        messageBox.componentInstance.title = "Resultado Operación";
        messageBox.componentInstance.message = 'Estado de solicitud actualizada';
      }
    });
  }
}
