using System;
using System.Collections.Generic;
using System.Linq;
using Datos;
using Entity;
using Infraestructura;

namespace Logica.Transportes {
    public class TransporteService {
        private  readonly  LogisticaSinuContext  _Context;
        public TransporteService (LogisticaSinuContext  _context) {
            _Context = _context;
        }

        public GuardarTransporteResponse Guardar (Transporte transporte) {
            try {
                string MensajeEmail = string.Empty;
                Email email = new Email ();
                var TrasporteBuscado = _Context.Transportes.Find (transporte.Nit);
                if (TrasporteBuscado != null) {
                    return new GuardarTransporteResponse ("El transporte ya se encuentra registrado");
                }
                _Context.Transportes.Add (transporte);
                _Context.SaveChanges ();
                 MensajeEmail = email.EnviarEmail (transporte.CorreoElectronico, EscribirCuerpo(transporte.Nombre),EscribirEncabezado());
                return new GuardarTransporteResponse (transporte);
            } catch (Exception e) {
                return new GuardarTransporteResponse ($"Error de la Aplicacion: {e.Message}");
            }
        }

        public string EscribirEncabezado(){
            return "Registro de transporte " + DateTime.Now.ToString ("dd/MMM/yyy hh:mm:ss");
        }
        public string EscribirCuerpo(string nombre){
            return  $"<b> {nombre }</b> <br " +
                $" > se ha realizado su registro Sartisfactoriamente";
        }
        public ConsultarTransporteResponse Consultar () {
            try {
                List<Transporte> transportes = _Context.Transportes.ToList ();
                return new ConsultarTransporteResponse (transportes);
            } catch (Exception e) {
                return new ConsultarTransporteResponse ($"Error de la Aplicaion: {e.Message}");
            }
        }

        public Transporte BuscarxNit (string nit) {
            Transporte transporte = _Context.Transportes.Find (nit);
            return transporte;
        }
        public string Modificar (Transporte transporteNuevo) {
            try {

                var trasporteViejo = _Context.Transportes.Find (transporteNuevo.Nit);
                if (trasporteViejo != null) {
                    trasporteViejo.Nombre = transporteNuevo.Nombre;
                    trasporteViejo.Pais = transporteNuevo.Pais;
                    trasporteViejo.Ciudad = transporteNuevo.Ciudad;
                    trasporteViejo.Direccion = transporteNuevo.Direccion;
                    trasporteViejo.Barrio = transporteNuevo.Barrio;
                    trasporteViejo.Telefono = transporteNuevo.Telefono;
                    trasporteViejo.CorreoElectronico = transporteNuevo.CorreoElectronico;
                    trasporteViejo.SitioWeb = transporteNuevo.SitioWeb;
                    trasporteViejo.ClaseTransporte = transporteNuevo.ClaseTransporte;
                    trasporteViejo.CapacidadAsientos = transporteNuevo.CapacidadAsientos;
                    _Context.Transportes.Update (trasporteViejo);
                    _Context.SaveChanges ();
                    return ($"El registro {transporteNuevo.Nombre} se ha modificado satisfactoriamente.");
                } else {
                    return ($"Lo sentimos, {transporteNuevo.Nit} no se encuentra registrada.");
                }
            } catch (Exception e) {

                return $"Error de la Aplicación: {e.Message}";
            }

        }

    }
}