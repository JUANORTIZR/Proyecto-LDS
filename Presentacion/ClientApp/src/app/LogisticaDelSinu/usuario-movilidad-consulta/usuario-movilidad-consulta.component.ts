import { Component, OnInit } from '@angular/core';
import { Movilidad } from '../Models/movilidad';
import { UsuarioService } from 'src/app/services/usuario.service';
import { MovilidadService } from 'src/app/services/movilidad.service';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';

@Component({
  selector: 'app-usuario-movilidad-consulta',
  templateUrl: './usuario-movilidad-consulta.component.html',
  styleUrls: ['./usuario-movilidad-consulta.component.css']
})
export class UsuarioMovilidadConsultaComponent implements OnInit {
  movilidades:Movilidad[];
  searchText:string;
  movilidad:Movilidad;
  constructor(private usuarioService:UsuarioService,private movilidadService:MovilidadService, private modalService: NgbModal) { }

  ngOnInit(): void {
    var usuario = (JSON.parse(localStorage.getItem('currentUser')));
    this.usuarioService.get(usuario.usuario,"Movilidad").subscribe(m => {
      this.movilidades = m.movilidades;
    });
  }
  consultarPorId(id:string){
    this.movilidadService.get(id).subscribe(m => {
      this.movilidad = m;
    });
  }

}
