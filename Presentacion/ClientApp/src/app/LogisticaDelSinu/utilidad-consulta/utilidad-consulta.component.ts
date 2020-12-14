import { Component, OnInit } from '@angular/core';
import { UtilidadService } from 'src/app/services/utilidad.service';
import { Utilidad } from '../Models/utilidad';
import { Router } from '@angular/router';
import { User } from 'src/app/seguridad/user';

@Component({
  selector: 'app-utilidad-consulta',
  templateUrl: './utilidad-consulta.component.html',
  styleUrls: ['./utilidad-consulta.component.css']
})
export class UtilidadConsultaComponent implements OnInit {
  
  utilidades:Utilidad[];
  searchText:string;
  usuario: User = (JSON.parse(localStorage.getItem('currentUser')));
  canvas: any;
  gtx:any;
  constructor(private router: Router,private utilidadService:UtilidadService) { }

  ngOnInit():void{
    if(this.usuario.tipo!="admin"){
      alert("Acceso denegado");
      this.router.navigate(['/Login']);
    }
    this.utilidadService.gets().subscribe(result=>{
      this.utilidades = result;
    });
 
  }

 
}
