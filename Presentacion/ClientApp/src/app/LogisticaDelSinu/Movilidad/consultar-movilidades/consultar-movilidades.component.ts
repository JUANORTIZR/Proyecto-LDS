import { Component, OnInit } from '@angular/core';
import { Movilidad } from '../../Models/movilidad';
import { MovilidadService } from 'src/app/services/movilidad.service';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';
import { AlertModalComponent } from 'src/app/@base/alert-modal/alert-modal.component';
import { Router } from '@angular/router';
import { User } from 'src/app/seguridad/user';
import { EnvioService } from 'src/app/services/envio.service';
import { ModalInfoMovilidadComponent } from 'src/app/@base/modal-info-movilidad/modal-info-movilidad.component';

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
  constructor(private envio:EnvioService,private router: Router,private movilidadService:MovilidadService, private modalService: NgbModal) { }

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

  abrir(movilidad:Movilidad){
    this.envio.EnviarMovilidad(movilidad);
    this.modalService.open(ModalInfoMovilidadComponent, {size: 'lg', centered:true});
  }
  

}
