using Entity;
using System;
namespace Presentacion.Models.UtilidadModels {

    public class UtilidadViewModel : UtilidadInputModel {
        public decimal UtilidadTotal { get; set; }
        public UtilidadViewModel () {

        }
        public UtilidadViewModel (Utilidad utilidad) {
            IdPago = utilidad.IdPago.Trim ();
            Costo = utilidad.Costo;
            Precio = utilidad.Precio;
            UtilidadTotal = utilidad.UtilidadTotal;

        }
    }
}