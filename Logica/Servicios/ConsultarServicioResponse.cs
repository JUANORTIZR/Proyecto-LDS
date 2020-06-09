using System.Collections.Generic;
using Entity;

namespace Logica.Servicios
{
    public class ConsultarServicioResponse
    {
        public string Mensaje { get; set; }
        public bool Error { get; set; }
        public List<Servicio> Servicios { get; set; }
        public ConsultarServicioResponse(List<Servicio> servicios)
        {
            Error = false;
            Servicios = servicios;
        }
        public ConsultarServicioResponse(string mensaje)
        {
            Error = true;
            Mensaje = mensaje;
        }
    }
}