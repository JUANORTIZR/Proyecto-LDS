import { Component, OnInit } from '@angular/core';
import { Servicio } from '../../Models/servicio';
import { ServicioService } from 'src/app/services/servicio.service';
import { AlertModalComponent } from 'src/app/@base/alert-modal/alert-modal.component';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';

@Component({
  selector: 'app-consultar-solicitudes',
  templateUrl: './consultar-solicitudes.component.html',
  styleUrls: ['./consultar-solicitudes.component.css']
})
export class ConsultarSolicitudesComponent implements OnInit {
  servicios:Servicio[];
  searchText:string;
  servicio:Servicio;
  constructor(private servicioService:ServicioService, private modalService: NgbModal) { }

  ngOnInit(): void {
    this.servicioService.gets().subscribe(s=> {
      this.servicios = s;
    })

  }
  consultarPorId(id:string){
    this.servicioService.get(id).subscribe(s => {
      this.servicio = s;
    });
  }
  
  cambiarEstado(){
    this.servicio.estado = "Revisado";
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
