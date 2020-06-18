import { Component, OnInit } from '@angular/core';
import { Movilidad } from '../../Models/movilidad';
import { MovilidadService } from 'src/app/services/movilidad.service';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';
import { AlertModalComponent } from 'src/app/@base/alert-modal/alert-modal.component';
import { Router } from '@angular/router';
import { User } from 'src/app/seguridad/user';

@Component({
  selector: 'app-consultar-movilidades',
  templateUrl: './consultar-movilidades.component.html',
  styleUrls: ['./consultar-movilidades.component.css']
})
export class ConsultarMovilidadesComponent implements OnInit {
  movilidades:Movilidad[];
  searchText:string;
  movilidad:Movilidad;
  usuario: User = (JSON.parse(localStorage.getItem('currentUser')));
  constructor(private router: Router,private movilidadService:MovilidadService, private modalService: NgbModal) { }

  ngOnInit(): void {
    if(this.usuario.tipo!="admin"){
      alert("Acceso denegado");
      this.router.navigate(['/Login']);
    }
    this.movilidadService.gets().subscribe(s=> {
      this.movilidades = s;
    })
    this.actualizarListaSignal();
  }
  private actualizarListaSignal(){
    this.movilidadService.signalRecived.subscribe((movilidad: Movilidad) => {
      this.movilidades.push(movilidad);
    });
  }
  consultarPorId(id:string){
    this.movilidadService.get(id).subscribe(s => {
      this.movilidad = s;
    });
  }

  cambiarEstado(estado:string){
    this.movilidad.estado = estado;
    this.movilidadService.put(this.movilidad).subscribe(m => {
      if(m != null){
        this.movilidad = m;
        const messageBox = this.modalService.open(AlertModalComponent)
        messageBox.componentInstance.title = "Resultado Operación";
        messageBox.componentInstance.message = 'Estado de solicitud actualizada';
      }
    });
  }
  

}
