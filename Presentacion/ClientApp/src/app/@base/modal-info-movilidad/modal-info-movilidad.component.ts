import { Component, OnInit } from '@angular/core';
import { Movilidad } from 'src/app/LogisticaDelSinu/Models/movilidad';
import { Subscription } from 'rxjs';
import { NgbModal, NgbActiveModal } from '@ng-bootstrap/ng-bootstrap';
import { ServicioService } from 'src/app/services/servicio.service';
import { EnvioService } from 'src/app/services/envio.service';
import { MovilidadService } from 'src/app/services/movilidad.service';
import { AlertModalComponent } from '../alert-modal/alert-modal.component';

@Component({
  selector: 'app-modal-info-movilidad',
  templateUrl: './modal-info-movilidad.component.html',
  styleUrls: ['./modal-info-movilidad.component.css']
})
export class ModalInfoMovilidadComponent implements OnInit {
  movilidad:Movilidad;
  suscripcion:Subscription;
  usuario = (JSON.parse(localStorage.getItem('currentUser')));
  loading1=false;
  loading = false;
  constructor(public activeModal:NgbActiveModal, private envio:EnvioService, private movilidadService:MovilidadService, private modalService:NgbModal) { }

  ngOnInit(): void {
    this.suscripcion = this.envio.Movilidad.subscribe((movilidad)=> (this.movilidad = movilidad));
  }

  ngOnDestroy() {
    if (this.suscripcion != null) {
      this.suscripcion.unsubscribe();
    }
  }

  cambiarEstado(estado:string){
    if(estado=="Rechazada"){this.loading=true}
    if(estado=="Aceptada"){this.loading1=true}
    this.movilidad.estado = estado;
    this.movilidadService.put(this.movilidad).subscribe(m => {
      if(m != null){
        this.movilidad = m;
        this.loading = false;
        this.loading1 = false;
        const messageBox = this.modalService.open(AlertModalComponent)
        messageBox.componentInstance.title = "Resultado Operación";
        messageBox.componentInstance.message = 'Estado de solicitud actualizada';
      }
    });
  }
}
