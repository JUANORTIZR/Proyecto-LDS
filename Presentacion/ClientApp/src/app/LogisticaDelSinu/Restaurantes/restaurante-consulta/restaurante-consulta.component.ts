import { Component, OnInit } from '@angular/core';
import { Restaurante } from '../../Models/restaurante';
import { RestaurantesService } from 'src/app/services/restaurantes.service';
import { Router } from '@angular/router';
import { User } from 'src/app/seguridad/user';

@Component({
  selector: 'app-restaurante-consulta',
  templateUrl: './restaurante-consulta.component.html',
  styleUrls: ['./restaurante-consulta.component.css']
})
export class RestauranteConsultaComponent implements OnInit {
  restaurantes:Restaurante[];
  searchText:string;
  usuario: User = (JSON.parse(localStorage.getItem('currentUser')));
  constructor(private router: Router,private restauranteServices:RestaurantesService) { }

  ngOnInit(): void {
    if(this.usuario.tipo!="admin"){
      alert("Acceso denegado");
      this.router.navigate(['/Login']);
    }
   this.restauranteServices.gets().subscribe(r => {
      this.restaurantes = r;
    });

  }

}
