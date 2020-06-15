import { Component, OnInit } from '@angular/core';
import { HotelService } from 'src/app/services/hotel.service';
import { Hotel } from '../../Models/hotel';
import { Router } from '@angular/router';
import { User } from 'src/app/seguridad/user';

@Component({
  selector: 'app-consulta-hotel',
  templateUrl: './consulta-hotel.component.html',
  styleUrls: ['./consulta-hotel.component.css']
})
export class ConsultaHotelComponent implements OnInit {
  hoteles:Hotel[];
  searchText:string;
  usuario: User = (JSON.parse(localStorage.getItem('currentUser')));
  constructor(private router: Router,private hotelServices: HotelService) { }

  ngOnInit(): void {
    if(this.usuario.tipo!="admin"){
      alert("Acceso denegado");
      this.router.navigate(['/Login']);
    }
    this.hotelServices.gets().subscribe(h => {
      this.hoteles = h;
    })
  }

}
