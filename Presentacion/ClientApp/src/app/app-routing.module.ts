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
import { UsuarioMovilidadConsultaComponent } from './LogisticaDelSinu/usuario-movilidad-consulta/usuario-movilidad-consulta.component';
import { SolicitudMovilidadComponent } from './LogisticaDelSinu/Movilidad/solicitud-movilidad/solicitud-movilidad.component';
import { ModificarMovilidadComponent } from './LogisticaDelSinu/Movilidad/modificar-movilidad/modificar-movilidad.component';
import { ConsultarMovilidadesComponent } from './LogisticaDelSinu/Movilidad/consultar-movilidades/consultar-movilidades.component';
import { AuthGuard } from './services/auth.guard';



const routes: Routes = [
  {
    path: 'UsuarioRegistro',
    component: UsuarioRegistroComponent
  },
  {
    path: 'UsuarioConsulta',
    component: UsuarioConsultaComponent,
    canActivate: [AuthGuard]
  },
  {
    path: 'ActualizarUsuario/:identificacion',
    component: ActualizarUsuarioComponent,
    canActivate: [AuthGuard]
  },
  {
    path: 'RegistroHotel',
    component: RegistroHotelComponent,
    canActivate: [AuthGuard]
  },
  {
    path: 'ConsultaHotel',
    component: ConsultaHotelComponent,
    canActivate: [AuthGuard]
  },
  {
    path: 'ActualizarHotel/:nit',
    component: ActualizarHotelComponent,
    canActivate: [AuthGuard]
  },
  {
    path: 'RestauranteRegistro',
    component: RestauranteRegistroComponent,
    canActivate: [AuthGuard]
  },
  {
    path: 'RestauranteConsulta',
    component: RestauranteConsultaComponent,
    canActivate: [AuthGuard]
  },
  {
    path: 'RestauranteActualizar/:nit',
    component: RestauranteActualizarComponent,
    canActivate: [AuthGuard]
  },
  {
    path: 'TransporteRegistro',
    component: TransporteRegistroComponent,
    canActivate: [AuthGuard]
  },
  {
    path: 'TransporteConsulta',
    component: TransporteConsultaComponent,
    canActivate: [AuthGuard]
  },
  {
    path: 'TrasporteActualizar/:nit',
    component: TrasporteActualizarComponent,
    canActivate: [AuthGuard]
  },
  {
    path: 'Login',
    component: LoginComponent
  },
  {
    path: 'RegistroUtilidad',
    component: UtilidadRegistroComponent,
    canActivate: [AuthGuard]
  },
  {
    path: 'UtilidadConsulta',
    component: UtilidadConsultaComponent,
    canActivate: [AuthGuard]
  },
  {
    path: 'ConsultarSolicitudes',
    component: ConsultarSolicitudesComponent,
    canActivate: [AuthGuard]
  },
  {
    path: 'ModificarSolicitud/:id',
    component: ModificarSolicitudComponent,
    canActivate: [AuthGuard]
  },
  {
    path: 'usuarioServicioConsulta',
    component: UsuarioServicioConsultaComponent,
    canActivate: [AuthGuard]
  },
  {
    path: 'usuarioMovilidadConsulta',
    component: UsuarioMovilidadConsultaComponent,
    canActivate: [AuthGuard]
  },
  {
    path: 'modificarMovilidad',
    component: ModificarMovilidadComponent,
    canActivate: [AuthGuard]
  },
  {
    path: 'consultarMovilidad',
    component: ConsultarMovilidadesComponent,
    canActivate: [AuthGuard]
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
