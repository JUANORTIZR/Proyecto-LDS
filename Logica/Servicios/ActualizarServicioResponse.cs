using Entity;

namespace Logica.Servicios
{
    public class ActualizarServicioResponse
    {
        public string Mensaje { get; set; }
        public bool Error { get; set; }
        public Servicio Servicio { get; set; }
        public ActualizarServicioResponse(string mensaje)
        {
            Error = true;
            Mensaje = mensaje;

        }

        public ActualizarServicioResponse(Servicio servicio)
        {
            Error = false;
            Servicio = servicio;
        }
    }
}