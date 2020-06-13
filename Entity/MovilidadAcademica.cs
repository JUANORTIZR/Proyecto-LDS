using System;
using System.ComponentModel.DataAnnotations;
using System.Runtime.ConstrainedExecution;
using System.Security.AccessControl;
namespace Entity {
    public class MovilidadAcademica {
        [Key]
        public string IdMovilidad { get; set; }
        public string IdCliente { get; set; }
        public DateTime FechaEvento { get; set; }
        public DateTime FechaSolicitud { get; set; }
        public string Destino { get; set; }
        public string NocheAlojamiento { get; set; }
        public string TipoAcomodacion { get; set; }
        public string Transporte { get; set; }
        public string Alimentacion { get; set; }
        public string AcompañamientoGuia { get; set; }
        public string SeguroViaje { get; set; }
        public string OrganizacionAjenda { get; set; }
        public string VisitaTecnica { get; set; }
        public string CostoEntrada { get; set; }
        public string Objervacion { get; set; }
        public string TipoHotel { get; set; }
        public string Refrigerio { get; set; }
        public string Estado { get; set; }
    }
}