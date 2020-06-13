using System;
using System.Collections.Generic;
using System.Linq;
using Datos;
using Entity;
using Infraestructura;

namespace Logica.Servicios
{
    public class ServicioService
    {
        private readonly LogisticaSinuContext  _context;
        public ServicioService(LogisticaSinuContext context)
        {
            _context = context;
        }

        public GuardarServicioResponse Guardar(Servicio servicio){
            try
            {
                string mensajeEmail = string.Empty;
                Email email = new Email();
                var servicioBuscado = _context.Servicios.Find(servicio.IdServicio);
                if(servicioBuscado != null){
                    return new GuardarServicioResponse("Su solicitud de servicio registrada");
                }
                _context.Servicios.Add(servicio);
                _context.SaveChanges();
              //  mensajeEmail = email.EnviarEmail(servicio.IdCliente.CorreoElectronico,servicio.IdCliente.PrimerNombre);
                return new GuardarServicioResponse(servicio);
            }
            catch (Exception e)
            {
                return new GuardarServicioResponse($"Error de la aplicacion {e.Message}");
            }
        }

        public ConsultarServicioResponse Consultar(){
            try
            {
                List<Servicio> servicios = _context.Servicios.ToList();
                return new ConsultarServicioResponse(servicios);
            }
            catch (Exception e)
            {
                return new ConsultarServicioResponse($"Error de aplicacion {e.Message}");
            }
        }

        public int ConsultarCantidad(string identificacion){
            int cantidad = _context.Servicios.Count(s => s.IdCliente==identificacion);
            return cantidad;
        }

        public Servicio BuscarxIdentificacion (string identificacion) {
            var servicio =  _context.Servicios.Find(identificacion);
            return servicio;
        }

        public ActualizarServicioResponse Modificar (Servicio servicioNuevo) {
            try {

                var servicioViejo = _context.Servicios.Find (servicioNuevo.IdServicio);
                if (servicioViejo != null) {
                    servicioViejo.Estado = servicioNuevo.Estado;
                    _context.Servicios.Update (servicioViejo);
                    _context.SaveChanges ();
                    return new ActualizarServicioResponse (servicioViejo);
                } else {
                    return new ActualizarServicioResponse ($"Lo sentimos, {servicioViejo.IdServicio} no se encuentra registrada.");
                }
            } catch (Exception e) {

                return new ActualizarServicioResponse ($"Error de la Aplicación: {e.Message}");
            }

        }
    }
}