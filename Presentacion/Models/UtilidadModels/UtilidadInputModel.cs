using System.ComponentModel.DataAnnotations;

namespace Presentacion.Models.UtilidadModels
{
    public class UtilidadInputModel
    {
         [Required(ErrorMessage = "El Id de Pago es requerido")]
        public string IdPago { get; set; }
         [Required(ErrorMessage = "El Precio es requerido")]
        public decimal Precio { get; set; }
         [Required(ErrorMessage = "El Costo es requerido")]
        public decimal Costo { get; set; }
    }
}