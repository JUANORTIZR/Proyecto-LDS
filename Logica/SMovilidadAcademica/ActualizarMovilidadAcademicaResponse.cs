using Entity;

namespace Logica.SMovilidadAcademica
{
    public class ActualizarMovilidadAcademicaResponse
    {
        public bool Error { get; set; }
        public MovilidadAcademica Movilidad { get; set; }
        public string Mensaje { get; set; }

        public ActualizarMovilidadAcademicaResponse(string mensaje)
        {
            Error = true;
            Mensaje = mensaje;
        }
        public ActualizarMovilidadAcademicaResponse(MovilidadAcademica movilidad)
        {
            Error = false;
            Movilidad = movilidad;
        }
    }
}