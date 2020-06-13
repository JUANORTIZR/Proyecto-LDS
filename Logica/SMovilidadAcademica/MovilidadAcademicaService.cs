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
                //  mensajeEmail = email.EnviarEmail(servicio.IdCliente.CorreoElectronico,servicio.IdCliente.PrimerNombre);
                return new GuardarMovilidadAcademicaResponse (movilidad);
            } catch (Exception e) {
                return new GuardarMovilidadAcademicaResponse ($"Error de la aplicacion {e.Message}");
            }
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

                var movilidadViejo = _context.Movilidades.Find (movilidadNueva.IdMovilidad);
                if (movilidadViejo != null) {
                    movilidadViejo.Estado = movilidadNueva.Estado;
                    _context.Movilidades.Update (movilidadViejo);
                    _context.SaveChanges ();
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