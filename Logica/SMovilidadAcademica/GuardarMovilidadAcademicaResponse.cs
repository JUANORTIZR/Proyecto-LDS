using Entity;

namespace Logica.SMovilidadAcademica
{
    public class GuardarMovilidadAcademicaResponse
    {
        public bool Error { get; set; }
        public MovilidadAcademica Movilidad { get; set; }
        public string Mensaje { get; set; }

        public GuardarMovilidadAcademicaResponse(string mensaje)
        {
            Error = true;
            Mensaje = mensaje;
        }

        public GuardarMovilidadAcademicaResponse(MovilidadAcademica movilidad)
        {
            Error = false;
            Movilidad = movilidad;
        }
    }
}