using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Entity
{
    public class Utilidad
    {
        [Key]
        [Column(TypeName = "varchar(20)")]
        public string IdPago { get; set; }
        [Column(TypeName = "varchar(20)")]
        public decimal Precio { get; set; }
        [Column(TypeName = "varchar(20)")]
        public decimal Costo { get; set; }
        [Column(TypeName = "varchar(20)")]
        public decimal UtilidadTotal { get; set; }   

        public void CalcularUtilidades(){
            UtilidadTotal=Precio-Costo;

        }
    }
}