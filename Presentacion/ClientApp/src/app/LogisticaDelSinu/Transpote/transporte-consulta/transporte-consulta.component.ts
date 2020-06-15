import { Component, OnInit } from '@angular/core';
import { Transporte } from '../../Models/transporte';
import { TransporteService } from 'src/app/services/transporte.service';
import { Router } from '@angular/router';
import { User } from 'src/app/seguridad/user';

@Component({
  selector: 'app-transporte-consulta',
  templateUrl: './transporte-consulta.component.html',
  styleUrls: ['./transporte-consulta.component.css']
})
export class TransporteConsultaComponent implements OnInit {
  
  searchText:string;
  transportes:Transporte[];
  usuario: User = (JSON.parse(localStorage.getItem('currentUser')));
  constructor(private router: Router,private transporteServices:TransporteService) { }

  ngOnInit(): void {
    if(this.usuario.tipo!="admin"){
      alert("Acceso denegado");
      this.router.navigate(['/Login']);
    }
    this.transporteServices.gets().subscribe(t=> {
      this.transportes = t;
    });
  }

}
