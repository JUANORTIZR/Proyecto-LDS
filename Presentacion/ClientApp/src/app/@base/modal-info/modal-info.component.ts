import { Component, OnInit, Input } from '@angular/core';
import { NgbModal, NgbActiveModal } from '@ng-bootstrap/ng-bootstrap';
import { Servicio } from 'src/app/LogisticaDelSinu/Models/servicio';
import { Subscription } from 'rxjs';
import { EnvioService } from 'src/app/services/envio.service';
import { ServicioService } from 'src/app/services/servicio.service';
import { AlertModalComponent } from '../alert-modal/alert-modal.component';

@Component({
  selector: 'app-modal-info',
  templateUrl: './modal-info.component.html',
  styleUrls: ['./modal-info.component.css']
})
export class ModalInfoComponent implements OnInit {
  servicio:Servicio;
  suscripcion:Subscription;
  usuario = (JSON.parse(localStorage.getItem('currentUser')));
  loading=false;
  loading1=false;
  constructor(public activeModal:NgbActiveModal, private envio:EnvioService, private servicioService:ServicioService, private modalService:NgbModal) { }
  ngOnInit(): void {
    this.suscripcion = this.envio.Servicio.subscribe((servicio)=> (this.servicio = servicio));
  }

  ngOnDestroy() {
    if (this.suscripcion != null) {
      this.suscripcion.unsubscribe();
    }
  }

  cambiarEstado(estado:string){
    if(estado=="Rechazada"){this.loading=true;}
    if(estado=="Aceptada"){this.loading1=true}
    this.servicio.estado = estado;
    this.servicioService.put(this.servicio).subscribe(s => {
      if(s != null){
        this.servicio = s;
        this.loading = false;
        this.loading1 = false;
        const messageBox = this.modalService.open(AlertModalComponent)
        messageBox.componentInstance.title = "Resultado Operación";
        messageBox.componentInstance.message = 'Estado de solicitud actualizada';
        this.ngOnDestroy();
      }
    });
  }

}
