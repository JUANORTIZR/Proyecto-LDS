using System;
using System.Collections.Generic;
using System.Linq;
using Datos;
using Entity;
using Infraestructura;

namespace Logica.SMovilidadAcademica {
    public class MovilidadAcademicaService {
        private readonly LogisticaSinuContext  _context;
        public MovilidadAcademicaService (LogisticaSinuContext context) {
            _context = context;
        }

        public GuardarMovilidadAcademicaResponse Guardar (MovilidadAcademica movilidad) {
            try {
                string mensajeEmail = string.Empty;
                Email email = new Email ();
                var movilidadBuscada = _context.Movilidades.Find (movilidad.IdMovilidad);
                if (movilidadBuscada != null) {
                    return new GuardarMovilidadAcademicaResponse ("Su solicitud de servicio registrada");
                }
                _context.Movilidades.Add (movilidad);
                _context.SaveChanges ();
                mensajeEmail = email.EnviarEmail (movilidad.Correo, EscribirCuerpo (movilidad.NombreCliente,"Solicitud",movilidad.IdMovilidad), EscribirEncabezado ("Solicitud"));
                return new GuardarMovilidadAcademicaResponse (movilidad);
            } catch (Exception e) {
                return new GuardarMovilidadAcademicaResponse ($"Error de la aplicacion {e.Message}");
            }
        }

        public string EscribirEncabezado (string tipo) {
            if (tipo == "Solicitud") {
                return "Solicitud de servicio " + DateTime.Now.ToString ("dd/MMM/yyy hh:mm:ss");
            }
            return "Informacion de estado de solicitud " + DateTime.Now.ToString ("dd/MMM/yyy hh:mm:ss");
        }
        public string EscribirCuerpo (string nombre,string tipo,string numero) {
            if(tipo == "Solicitud"){
                return $"<b>¡¡Bienvenido a logística educativa del Sinú¡¡</b><br>"+
                $"Hola {nombre}.<br>"+
                "Gracias por preferirnos al momento de organizar y realizar sus eventos académicos. <br>"+
                $"Tenemos el gusto de informarle que su solicitud de servicio número {numero} fue registrada con éxito.<br>"+
                "También puede consultar el estado de su solicitud en nuestro aplicativo web a través del siguiente enlace.<br>"+
                "<a href='https://logisticaeducativadelsinu.azurewebsites.net/usuarioMovilidadConsulta'>Mis servicios</a>";
            }
            if(tipo == "Aceptada"){
                return "<b>¡¡Bienvenido a logística educativa del Sinú¡¡</b><br>"+
                $"Hola {nombre} <br>"+
                "Gracias por preferirnos al momento de organizar y realizar sus eventos académicos.<br>"+
                $"Tenemos el gusto de informarle que su solicitud de servicio número {numero} fue <b>aceptada</b>."+
                "Para mayor información visite nuestra aplicación web a través de siguiente enlace.<br>"+
                "<a href='https://logisticaeducativadelsinu.azurewebsites.net/usuarioMovilidadConsulta'>Mis servicios</a>";
            }
            return "<b>¡¡Bienvenido a logística educativa del Sinú¡¡</b><br>"+
            $"Hola {nombre}<br>"+
            "Gracias por preferirnos al momento de organizar y realizar sus eventos académicos.<br>"+
            $"Le informamos que su solicitud de servicio número {numero} fue rechazada por el momento no podemos ofrecerle nuestros servicios.<br>"+
            "Para mayor información o si desea agendar una nueva solicitud de servicio visite nuestra aplicación web a través de siguiente enlace.<br>"+
            "<a href='https://logisticadelsinu.azurewebsites.net/usuarioMovilidadConsulta'>Mis servicios</a>";
        }
        public ConsultarMovilidadAcademicaResponse Consultar () {
            try {
                List<MovilidadAcademica> movilidades = _context.Movilidades.ToList ();
                return new ConsultarMovilidadAcademicaResponse (movilidades);
            } catch (Exception e) {
                return new ConsultarMovilidadAcademicaResponse ($"Error de aplicacion {e.Message}");
            }
        }

        public MovilidadAcademica BuscarxIdentificacion (string identificacion) {
            var movilidad =  _context.Movilidades.Find(identificacion);
            return movilidad;
        }

         public ActualizarMovilidadAcademicaResponse Modificar (MovilidadAcademica movilidadNueva) {
            try {
                string mensajeEmail = string.Empty;
                Email email = new Email ();
                var movilidadViejo = _context.Movilidades.Find (movilidadNueva.IdMovilidad);
                if (movilidadViejo != null) {
                    movilidadViejo.Estado = movilidadNueva.Estado;
                    _context.Movilidades.Update (movilidadViejo);
                    _context.SaveChanges ();
                    mensajeEmail = email.EnviarEmail (movilidadViejo.Correo, EscribirCuerpo (movilidadViejo.NombreCliente,movilidadViejo.Estado,movilidadViejo.IdMovilidad), EscribirEncabezado ("Solicitud"));
                    return new ActualizarMovilidadAcademicaResponse (movilidadViejo);
                } else {
                    return new ActualizarMovilidadAcademicaResponse ($"Lo sentimos, {movilidadViejo.IdMovilidad} no se encuentra registrada.");
                }
            } catch (Exception e) {

                return new ActualizarMovilidadAcademicaResponse ($"Error de la Aplicación: {e.Message}");
            }

        }

    }
}