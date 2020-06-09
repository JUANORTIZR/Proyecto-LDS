using System.Collections.Generic;
using System.Linq;
using Datos;
using Entity;
using Logica.Servicios;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Presentacion.Models;
using Presentacion.Models.Servicio;
using Microsoft.Extensions.Configuration;
namespace Presentacion.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ServicioController:ControllerBase
    {
        private readonly ServicioService _servicioService;

        public ServicioController(LogisticaSinuContext context)
        {
            _servicioService = new ServicioService(context);
        }

        [HttpPost]
        public ActionResult<ServcioViewModel> Post (ServicioInputModel servicioInput) {
            Servicio servicio = MapearUsuario (servicioInput);
            var response = _servicioService.Guardar (servicio);
            if (response.Error) {
                ModelState.AddModelError ("Guardar Servicio", response.Mensaje);
                var problemDetails = new ValidationProblemDetails (ModelState) {
                    Status = StatusCodes.Status400BadRequest,
                };
                return BadRequest (problemDetails);
            }
            return Ok (response.Servicio);
        }

        private Servicio MapearUsuario (ServicioInputModel servicioInput) {
            var servicio = new Servicio {
                IdServicio = servicioInput.IdServicio,
                IdCliente = servicioInput.IdCliente,
                FechaEvento = servicioInput.FechaEvento,
                FechaSolicitud = servicioInput.FechaSolicitud,
                TipoServicio = servicioInput.TipoServicio,
                Descripcion = servicioInput.Descripcion,
                Refrigerio = servicioInput.Refrigerio,
                Ponentes = servicioInput.Ponentes,
                LogisticaCompleta = servicioInput.LogisticaCompleta,
                Observacion = servicioInput.Observacion
            };
            return servicio;
        }

        [HttpGet]
        public IEnumerable<ServcioViewModel> Gets () {
            var servicio = _servicioService.Consultar ().Servicios.Select (p => new ServcioViewModel (p));
            return servicio;
        }
    }
}