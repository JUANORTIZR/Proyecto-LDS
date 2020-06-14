import { Component, OnInit } from '@angular/core';
import { UsuarioService } from 'src/app/services/usuario.service';
import { Usuario } from '../Models/usuario';
import { User } from 'src/app/seguridad/user';
import { Router } from '@angular/router';

@Component({
  selector: 'app-usuario-consulta',
  templateUrl: './usuario-consulta.component.html',
  styleUrls: ['./usuario-consulta.component.css']
})
export class UsuarioConsultaComponent implements OnInit {

  usuarios:User[];
  searchText:string;
  usuario: User = (JSON.parse(localStorage.getItem('currentUser')));
  constructor(private router: Router,private usuarioService:UsuarioService) { }

  ngOnInit() {
    if(this.usuario.tipo=="admin"){
      this.usuarioService.gets().subscribe(result=>{
        this.usuarios = result;
      });
      return;
    }
    alert("Acceso denegado");
    this.router.navigate(['/Login']);
  }

}
