using System.ComponentModel.DataAnnotations;

namespace Entity
{
    public class Utilidad
    {
        [Key]
        public string IdPago { get; set; }
        public decimal Precio { get; set; }
        public decimal Costo { get; set; }
        public decimal UtilidadTotal { get; set; }   

        public void CalcularUtilidades(){
            UtilidadTotal=Precio-Costo;

        }
    }
}