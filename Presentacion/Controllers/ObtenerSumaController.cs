using Datos;
using Logica.Servicios;
using Microsoft.AspNetCore.Mvc;


namespace Presentacion.Controllers {
    [Route ("api/[controller]")]
    [ApiController]
    public class ObtenerSumaController : ControllerBase  {     
            private readonly ServicioService _servicioService;

            public ObtenerSumaController (LogisticaSinuContext context) {
                _servicioService = new ServicioService (context);
            } 
        [HttpGet("{identificacion}")]
        public int GetCantidad (string identificacion) {
            var cantidad = _servicioService.ConsultarCantidad(identificacion);
            return cantidad;
        }
    }
}