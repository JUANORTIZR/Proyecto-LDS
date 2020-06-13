using System;
using System.Collections.Generic;
using Entity;

namespace Logica.SMovilidadAcademica {
    
    public class ConsultarMovilidadAcademicaResponse {

        public string Mensaje { get; set; }
        public bool Error { get; set; }
        public List<MovilidadAcademica> Movilidades { get; set; }

        public ConsultarMovilidadAcademicaResponse (List<MovilidadAcademica> movilidades) {
            Error = false;
            Movilidades = movilidades;
        }
        public ConsultarMovilidadAcademicaResponse (string mensaje) {
            Error = true;
            Mensaje = mensaje;
        }
    }
}