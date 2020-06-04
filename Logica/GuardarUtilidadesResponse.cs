using Entity;

namespace Logica
{
    public class GuardarUtilidadesResponse
    {
        public bool Error { get; set; }
        public string Mensaje { get; set; }
        public Utilidad Utilidad { get; set; }

        public GuardarUtilidadesResponse(Utilidad utilidad)
        {
            Error = false;
            Utilidad = utilidad;
        }
        public GuardarUtilidadesResponse(string mensaje)
        {
             Error = true;
            Mensaje = mensaje;
        }
    }
}