using System;
using System.ComponentModel.DataAnnotations;
using Entity;

namespace Presentacion.Models.Servicio
{
    public class ServicioInputModel
    {
        [Required(ErrorMessage = "El id del servicio es requerido")]
        public string IdServicio { get; set; }
        [Required(ErrorMessage = "El cliente es requerido")]
        public string IdCliente { get; set; }        
        [Required(ErrorMessage = "La fecha en la que se realizara el evento es requerida")]
        public DateTime FechaEvento { get; set; }
        [Required(ErrorMessage = "La fecha en la que se solicita el servicio es requerida")]
        public DateTime FechaSolicitud { get; set; }
        [Required(ErrorMessage = "El tipo de servicio es requerido")]
        public string TipoServicio { get; set; }
        [Required(ErrorMessage = "La descripcion del servicio es requerida")]
        public string Descripcion { get; set; }
        [Required(ErrorMessage = "Debe indicar si requiere refrigerio o no")]
        public string Refrigerio { get; set; }
        [Required(ErrorMessage = "Debe indicar si requiere ponentes o no")]
        public string Ponentes { get; set; }
        [Required(ErrorMessage = "Debe indicar si requiere la logistica completa o no")]
        public string LogisticaCompleta { get; set; }
        public string Observacion { get; set; }
        public string Estado { get; set; }
    }
}