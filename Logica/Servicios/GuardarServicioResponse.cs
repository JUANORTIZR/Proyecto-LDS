using Entity;

namespace Logica.Servicios
{
    public class GuardarServicioResponse
    {
        public bool Error { get; set; }
        public Servicio Servicio { get; set; }
        public string Mensaje { get; set; }
        public GuardarServicioResponse(string mensaje)
        {
            Error = true;
            Mensaje = mensaje;
        }

        public GuardarServicioResponse(Servicio servicio)
        {
            Error = false;
            Servicio = servicio;
        }
    }
}