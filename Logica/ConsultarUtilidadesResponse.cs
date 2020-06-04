using System.Collections.Generic;
using Entity;

namespace Logica {
    public class ConsultarUtilidadesResponse {
        public bool Error { get; set; }
        public string Mensaje { get; set; }
        public List<Utilidad> Utilidades { get; set; }

        public ConsultarUtilidadesResponse (List<Utilidad> utilidades) {
            Error = false;
            Utilidades = utilidades;
        }
        public ConsultarUtilidadesResponse(string mensaje)
        {
              Error = true;
            Mensaje = mensaje;
        }
    }
}