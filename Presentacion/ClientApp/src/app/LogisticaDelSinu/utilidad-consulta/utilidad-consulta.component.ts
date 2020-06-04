import { Component, OnInit } from '@angular/core';
import { UtilidadService } from 'src/app/services/utilidad.service';
import { Utilidad } from '../Models/utilidad';

@Component({
  selector: 'app-utilidad-consulta',
  templateUrl: './utilidad-consulta.component.html',
  styleUrls: ['./utilidad-consulta.component.css']
})
export class UtilidadConsultaComponent implements OnInit {
  
  utilidades:Utilidad[];
  searchText:string;
  constructor(private utilidadService:UtilidadService) { }

  ngOnInit():void{
    this.utilidadService.gets().subscribe(result=>{
      this.utilidades = result;
    });
  }

}
