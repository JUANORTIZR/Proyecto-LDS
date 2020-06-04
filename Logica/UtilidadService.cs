using System;
using System.Collections.Generic;
using System.Linq;
using Datos;
using Entity;

namespace Logica {
    public class UtilidadService {
        private  readonly  LogisticaSinuContext  _Context;

        public UtilidadService (LogisticaSinuContext  _context) {
            _Context = _context;

        }

        public GuardarUtilidadesResponse Guardar (Utilidad utilidad) {
            try {
                var UtulidadBuscada = _Context.Utilidades.Find (utilidad.IdPago);
                if (UtulidadBuscada != null) {
                    return new GuardarUtilidadesResponse ("El Hotel ya se encuentra registrado");
                }
                utilidad.CalcularUtilidades();
                _Context.Utilidades.Add (utilidad);
                _Context.SaveChanges ();
                return new GuardarUtilidadesResponse (utilidad);
            } catch (Exception e) {
                return new GuardarUtilidadesResponse ($"Error de la Aplicacion: {e.Message}");
            }
        }

        public ConsultarUtilidadesResponse Consultar () {
            try {
                List<Utilidad> Utilidades = _Context.Utilidades.ToList ();
                return new ConsultarUtilidadesResponse (Utilidades);
            } catch (Exception e) {
                return new ConsultarUtilidadesResponse ($"Error de la Aplicaion: {e.Message}");
            }
        }

        /*public List<Utilidad> Consultar(){
            List<Utilidad> Utilidades = _Context.Utilidades.ToList ();
            return Utilidades;

        }*/
    }
}