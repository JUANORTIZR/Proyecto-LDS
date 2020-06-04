using Microsoft.AspNetCore.Mvc;
using Logica;
using Presentacion.Models.UtilidadModels;
using Entity;
using Microsoft.AspNetCore.Http;
using System.Collections.Generic;
using System.Linq;
using Datos;

namespace Presentacion.Controllers
{
    [Route ("api/[controller]")]
    [ApiController]
    public class UtilidadController: ControllerBase
    {
        private readonly UtilidadService _utilidadService;

        public UtilidadController(LogisticaSinuContext context)
        {
            _utilidadService= new UtilidadService(context);
        }


        [HttpPost]
          public ActionResult<UtilidadViewModel> Post (UtilidadInputModel UtilidadInput) {
            Utilidad utilidad = MapearUtilidad (UtilidadInput);
            var response = _utilidadService.Guardar (utilidad);
            if (response.Error) {
                ModelState.AddModelError ("Guardar Utilidad", response.Mensaje);
                var problemDetails = new ValidationProblemDetails (ModelState) {
                    Status = StatusCodes.Status400BadRequest,
                };
                return BadRequest (problemDetails);
            }
            return Ok (response.Utilidad);
        }

        private Utilidad MapearUtilidad (UtilidadInputModel utilidadInput) {
            var utilidad = new Utilidad {
               IdPago=utilidadInput.IdPago,
               Precio=utilidadInput.Precio,
               Costo=utilidadInput.Costo,
               
            };
            return utilidad;
        }

        [HttpGet]
        public IEnumerable<UtilidadViewModel> Gets () {
            var utilidades = _utilidadService.Consultar().Utilidades.Select(u=>new UtilidadViewModel(u));
            return utilidades;
        }

    }
}