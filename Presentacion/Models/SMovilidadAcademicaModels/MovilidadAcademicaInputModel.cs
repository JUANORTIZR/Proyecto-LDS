using System;
using System.ComponentModel.DataAnnotations;

namespace Presentacion.Models.SMovilidadAcademica
{
    public class MovilidadAcademicaInputModel
    {
        [Required(ErrorMessage = "El id del servicio es requerido")]
        public string IdMovilidad { get; set; }
        [Required(ErrorMessage = "El cliente es requerido")]
        public string IdCliente { get; set; }
        [Required(ErrorMessage = "La fecha en la que se realizara el evento es requerida")]
        public DateTime FechaEvento { get; set; }
         [Required(ErrorMessage = "La fecha en la que se solicita el servicio es requerida")]
        public DateTime FechaSolicitud { get; set; }
         [Required(ErrorMessage = "El destino del evento es requerido")]
        public string Destino { get; set; }
        [Required(ErrorMessage = "Las noches de alojamiento son requeridas")]
        public string NocheAlojamiento { get; set; }
         [Required(ErrorMessage = "El tipo de acomodacion es requerido")]
        public string TipoAcomodacion { get; set; }
         [Required(ErrorMessage = "El transporte es requerido")]
        public string Transporte { get; set; }
        [Required(ErrorMessage = "La alimentacion es requerida")]
        public string Alimentacion { get; set; }
        [Required(ErrorMessage = "El acompañamiento guia es requerido")]
        public string AcompañamientoGuia { get; set; }
        [Required(ErrorMessage = "El seguro de viaje es requerido")]
        public string SeguroViaje { get; set; }
        [Required(ErrorMessage = "La organizacion de agenda es requerida")]
        public string OrganizacionAjenda { get; set; }
        [Required(ErrorMessage = "L avisita tecnica es requerida")]
        public string VisitaTecnica { get; set; }
        [Required(ErrorMessage = "El costo de entrada es requerido")]
        public string CostoEntrada { get; set; }
        [Required(ErrorMessage = "La observacion es requerida")]
        public string Objervacion { get; set; }
        [Required(ErrorMessage = "El Tipo de hotal es requerido")]
        public string TipoHotel { get; set; }
        [Required(ErrorMessage = "El refrigerio es requerido")]
        public string Refrigerio { get; set; }

        public string Estado { get; set; }
    }
}