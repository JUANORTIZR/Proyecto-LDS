import { UsuarioRegistroComponent } from './logisticaDelSinu/usuario-registro/usuario-registro.component';
import { NgModule, Component } from '@angular/core';
import { CommonModule } from '@angular/common';
import { Routes, RouterModule } from '@angular/router';
import { UsuarioConsultaComponent } from './LogisticaDelSinu/usuario-consulta/usuario-consulta.component';
import { ActualizarUsuarioComponent } from './LogisticaDelSinu/actualizar-usuario/actualizar-usuario.component';
import { RegistroHotelComponent } from './LogisticaDelSinu/Hoteles/registro-hotel/registro-hotel.component';
import { ConsultaHotelComponent } from './LogisticaDelSinu/Hoteles/consulta-hotel/consulta-hotel.component';
import { ActualizarHotelComponent } from './LogisticaDelSinu/Hoteles/actualizar-hotel/actualizar-hotel.component';
import { RestauranteRegistroComponent } from './LogisticaDelSinu/Restaurantes/restaurante-registro/restaurante-registro.component';
import { RestauranteConsultaComponent } from './LogisticaDelSinu/Restaurantes/restaurante-consulta/restaurante-consulta.component';
import { RestauranteActualizarComponent } from './LogisticaDelSinu/Restaurantes/restaurante-actualizar/restaurante-actualizar.component';
import { LoginComponent } from './LogisticaDelSinu/Login/login/login.component';
import { TrasporteActualizarComponent } from './LogisticaDelSinu/Transpote/trasporte-actualizar/trasporte-actualizar.component';
import { TransporteRegistroComponent } from './LogisticaDelSinu/Transpote/transporte-registro/transporte-registro.component';
import { TransporteConsultaComponent } from './LogisticaDelSinu/Transpote/transporte-consulta/transporte-consulta.component';
import { UtilidadConsultaComponent } from './LogisticaDelSinu/utilidad-consulta/utilidad-consulta.component';
import { UtilidadRegistroComponent } from './LogisticaDelSinu/utilidad-registro/utilidad-registro.component';
import { SolitudServicioComponent } from './LogisticaDelSinu/Servicio/solitud-servicio/solitud-servicio.component';
import { ConsultarSolicitudesComponent } from './LogisticaDelSinu/Servicio/consultar-solicitudes/consultar-solicitudes.component';
import { ModificarSolicitudComponent } from './LogisticaDelSinu/Servicio/modificar-solicitud/modificar-solicitud.component';
import { UsuarioServicioConsultaComponent } from './LogisticaDelSinu/usuario-servicio-consulta/usuario-servicio-consulta.component';



const routes: Routes = [
  {
    path: 'UsuarioRegistro',
    component: UsuarioRegistroComponent
  },
  {
    path: 'UsuarioConsulta',
    component: UsuarioConsultaComponent
  },
  {
    path: 'ActualizarUsuario/:identificacion',
    component: ActualizarUsuarioComponent
  },
  {
    path: 'RegistroHotel',
    component: RegistroHotelComponent
  },
  {
    path: 'ConsultaHotel',
    component: ConsultaHotelComponent
  },
  {
    path: 'ActualizarHotel/:nit',
    component: ActualizarHotelComponent
  },
  {
    path: 'RestauranteRegistro',
    component: RestauranteRegistroComponent
  },
  {
    path: 'RestauranteConsulta',
    component: RestauranteConsultaComponent
  },
  {
    path: 'RestauranteActualizar/:nit',
    component: RestauranteActualizarComponent
  },
  {
    path: 'TransporteRegistro',
    component: TransporteRegistroComponent
  },
  {
    path: 'TransporteConsulta',
    component: TransporteConsultaComponent
  },
  {
    path: 'TrasporteActualizar/:nit',
    component: TrasporteActualizarComponent
  },
  {
    path: 'Login',
    component: LoginComponent
  },
  {
    path: 'RegistroUtilidad',
    component: UtilidadRegistroComponent
  },
  {
    path: 'UtilidadConsulta',
    component: UtilidadConsultaComponent
  },
  {
    path: 'SolicitudServicio',
    component: SolitudServicioComponent
  },
  {
    path: 'ConsultarSolicitudes',
    component: ConsultarSolicitudesComponent
  },
  {
    path: 'ModificarSolicitud/:id',
    component: ModificarSolicitudComponent
  },
  {
    path: 'usuarioServicioConsulta',
    component: UsuarioServicioConsultaComponent
  }

];

@NgModule({
  declarations: [],
  imports: [
    CommonModule,
    RouterModule.forRoot(routes)
  ],
  exports: [RouterModule]
})
export class AppRoutingModule { }
