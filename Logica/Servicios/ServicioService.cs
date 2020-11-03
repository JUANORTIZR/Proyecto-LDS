using System;
using System.Collections.Generic;
using System.Linq;
using Datos;
using Entity;
using Infraestructura;

namespace Logica.Servicios {
    public class ServicioService {
        private readonly LogisticaSinuContext  _context;
        public ServicioService (LogisticaSinuContext context) {
            _context = context;
        }

        public GuardarServicioResponse Guardar (Servicio servicio) {
            try {
                string mensajeEmail = string.Empty;
                Email email = new Email ();
                var servicioBuscado = _context.Servicios.Find (servicio.IdServicio);
                if (servicioBuscado != null) {
                    return new GuardarServicioResponse ("Su solicitud de servicio registrada");
                }
                _context.Servicios.Add (servicio);
                _context.SaveChanges ();
                mensajeEmail = email.EnviarEmail (servicio.Correo, EscribirCuerpo (servicio.NombreCliente, "Solicitud", servicio.IdServicio), EscribirEncabezado ("Solicitud"));
                return new GuardarServicioResponse (servicio);
            } catch (Exception e) {
                return new GuardarServicioResponse ($"Error de la aplicacion {e.Message}");
            }
        }

        public string EscribirEncabezado (string tipo) {
            if (tipo == "Solicitud") {
                return "Solicitud de servicio " + DateTime.Now.ToString ("dd/MMM/yyy hh:mm:ss");
            }
            return "Informacion de estado de solicitud " + DateTime.Now.ToString ("dd/MMM/yyy hh:mm:ss");
        }
        public string EscribirCuerpo (string nombre, string tipo, string numero) {
            if (tipo == "Solicitud") {
                return $"<b>¡¡Bienvenido a logística educativa del Sinú¡¡</b><br>" +
                    $"Hola {nombre}.<br>" +
                    "Gracias por preferirnos al momento de organizar y realizar sus eventos académicos. <br>" +
                    $"Tenemos el gusto de informarle que su solicitud de servicio número {numero} fue registrada con éxito.<br>" +
                    "También puede consultar el estado de su solicitud en nuestro aplicativo web a través del siguiente enlace.<br>" +
                    "<a href='https://logisticaeducativadelsinu.azurewebsites.net/usuarioServicioConsulta'>Mis servicios</a>";
            }
            if (tipo == "Aceptada") {
                return "<b>¡¡Bienvenido a logística educativa del Sinú¡¡</b><br>" +
                    $"Hola {nombre} <br>" +
                    "Gracias por preferirnos al momento de organizar y realizar sus eventos académicos.<br>" +
                    $"Tenemos el gusto de informarle que su solicitud de servicio número {numero} fue <b>aceptada</b>." +
                    "Para mayor información visite nuestra aplicación web a través de siguiente enlace.<br>" +
                    "<a href='https://logisticaeducativadelsinu.azurewebsites.net/usuarioServicioConsulta'>Mis servicios</a>";
            }
            return "<b>¡¡Bienvenido a logística educativa del Sinú¡¡</b><br>" +
                $"Hola {nombre}<br>" +
                "Gracias por preferirnos al momento de organizar y realizar sus eventos académicos.<br>" +
                $"Le informamos que su solicitud de servicio número {numero} fue rechazada por el momento no podemos ofrecerle nuestros servicios.<br>" +
                "Para mayor información o si desea agendar una nueva solicitud de servicio visite nuestra aplicación web a través de siguiente enlace.<br>" +
                "<a href='https://logisticaeducativadelsinu.azurewebsites.net/usuarioServicioConsulta'>Mis servicios</a>";

        }

        public ConsultarServicioResponse Consultar () {
            try {
                List<Servicio> servicios = _context.Servicios.ToList ();
                return new ConsultarServicioResponse (servicios);
            } catch (Exception e) {
                return new ConsultarServicioResponse ($"Error de aplicacion {e.Message}");
            }
        }

        public int ConsultarCantidad (string identificacion) {
            int cantidad = _context.Servicios.Count (s => s.IdCliente == identificacion);
            cantidad += _context.Movilidades.Count (s => s.IdCliente == identificacion);
            return cantidad;
        }

        public Servicio BuscarxIdentificacion (string identificacion) {
            var servicio =  _context.Servicios.Find (identificacion);
            return servicio;
        }

        public ActualizarServicioResponse Modificar (Servicio servicioNuevo) {

            string mensajeEmail = string.Empty;
            Email email = new Email ();
            var servicioViejo = _context.Servicios.Find (servicioNuevo.IdServicio);

            if (servicioViejo != null) {

                servicioViejo.Estado = servicioNuevo.Estado;
                _context.Servicios.Update (servicioViejo);
                _context.SaveChanges ();
                mensajeEmail = email.EnviarEmail (servicioNuevo.Correo, 
                EscribirCuerpo (servicioViejo.NombreCliente, servicioViejo.Estado, servicioViejo.IdServicio), 
                EscribirEncabezado (""));
                return new ActualizarServicioResponse (servicioViejo);

            } else {

                return new ActualizarServicioResponse ($"Lo sentimos, {servicioViejo.IdServicio} no se encuentra registrada.");

            }

        }
    }
}