using System;
using System.ComponentModel.DataAnnotations;

namespace Entity
{
    public class Servicio
    {
        [Key]
        public string IdServicio { get; set; }
        public string IdCliente { get; set; }        
        public DateTime FechaEvento { get; set; }
        public DateTime FechaSolicitud { get; set; }
        public string TipoServicio { get; set; }
        public string Descripcion { get; set; }
        public string Refrigerio { get; set; }
        public string Ponentes { get; set; }
        public string LogisticaCompleta { get; set; }
        public string Observacion { get; set; }
        public string Estado { get; set; }
    }
}