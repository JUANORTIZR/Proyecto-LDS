﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Net.Http.Headers;
using System.Resources;
using System.Runtime.CompilerServices;
using Datos;
using Entity;
using Infraestructura;

namespace Logica {
    public class UsuarioService {

        private  readonly  LogisticaSinuContext  _Context;

        public UsuarioService (LogisticaSinuContext  _context) {
            _Context = _context;

        }

        public GuardarUsuarioResponse Guardar (User usuario) {
            try {
                string mensajeEmail = string.Empty;
                Email email = new Email ();
                var UsuarioBuscado = _Context.Users.Find (usuario.Usuario);
                if (UsuarioBuscado != null) {
                    return new GuardarUsuarioResponse ("Identificaion y/o nombre de usuario ya se encuentra registrado");
                }
                _Context.Users.Add (usuario);
                _Context.SaveChanges ();
                mensajeEmail = email.EnviarEmail (usuario.Correo, EscribirCuerpo(usuario.PrimerNombre),EscribirEncabezado());
                return new GuardarUsuarioResponse (usuario);
            } catch (Exception e) {
                return new GuardarUsuarioResponse ($"Error de la Aplicacion: {e.Message}");
            }
        }
        public string EscribirEncabezado(){
            return "Registro de Usuario " + DateTime.Now.ToString ("dd/MMM/yyy hh:mm:ss");
        }
        public string EscribirCuerpo(string nombre){
            return $"<b>¡¡Bienvenido a logística educativa del Sinú¡¡</b><br>"+
                $"Le informamos que el usuario {nombre} se ha registrado satisfactoriamente.<br><br><br>"+
                
                "Acceso a tu cuenta<br><br> para realizar cambios en la cuenta en cualquier momento inicia sesión en nuestra aplicación web <a href='https://logisticaeducativadelsinu.azurewebsites.net' >Logistica educativa del sinú</a>"+
                "<br><br>Desde aquí podrás acceder a la aplicación, para actualizar la información<br> de tu cuenta y los ajustes de seguridad.";
        }

        public ConsultarUsuarioResponse Consultar () {
            try {

                List<User> usuarios = _Context.Users.ToList ();
                return new ConsultarUsuarioResponse (usuarios);
            } catch (Exception e) {
                return new ConsultarUsuarioResponse ($"Error de la Aplicaion: {e.Message}");
            }
        }

        public User BuscarxIdentificacion (string identificacion, string tipoServicio) {
             var usuario = _Context.Users.Find (identificacion);
            if (tipoServicio == "Movilidad") {
                if (usuario != null) {
                    var movilidades = _Context.Movilidades.ToList ();
                    foreach (var item in movilidades) {
                        if (item.IdCliente == usuario.Identificacion) {
                            usuario.Movilidades.Add (item);
                        }
                    }
                    
                }
                return usuario;
            }
            if (usuario != null) {
                var servicios = _Context.Servicios.ToList ();
                foreach (var item in servicios) {
                    if (item.IdCliente == usuario.Identificacion) {
                        usuario.Servicios.Add (item);
                    }
                }
            }

            return usuario;
        }

        public ActualizarUsuarioResponse Modificar (User usuarioNuevo) {
            try {

                var personaVieja = _Context.Users.Find (usuarioNuevo.Usuario);
                if (personaVieja != null) {
                    personaVieja.PrimerNombre = usuarioNuevo.PrimerNombre;
                    personaVieja.SegundoNombre = usuarioNuevo.SegundoNombre;
                    personaVieja.PrimerApellido = usuarioNuevo.PrimerApellido;
                    personaVieja.SegundoApellido = usuarioNuevo.SegundoApellido;
                    personaVieja.Telefono = usuarioNuevo.Telefono;
                    personaVieja.Correo = usuarioNuevo.Correo;
                    personaVieja.Password = usuarioNuevo.Password;
                    _Context.Users.Update (personaVieja);
                    _Context.SaveChanges ();
                    return new ActualizarUsuarioResponse (personaVieja);
                } else {
                    return new ActualizarUsuarioResponse ($"Lo sentimos, {usuarioNuevo.Identificacion} no se encuentra registrada.");
                }
            } catch (Exception e) {

                return new ActualizarUsuarioResponse ($"Error de la Aplicación: {e.Message}");
            }

        }
    }
}