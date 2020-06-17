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
                NombreCliente = servicioInput.NombreCliente,
                FechaEvento = servicioInput.FechaEvento,
                FechaSolicitud = servicioInput.FechaSolicitud,
                TipoServicio = servicioInput.TipoServicio,
                Descripcion = servicioInput.Descripcion,
                Refrigerio = servicioInput.Refrigerio,
                Ponentes = servicioInput.Ponentes,
                LogisticaCompleta = servicioInput.LogisticaCompleta,
                Correo = servicioInput.Correo,
                Observacion = servicioInput.Observacion,
                Estado = "Sin revisar"
            };
            return servicio;
        }

        [HttpGet]
        public IEnumerable<ServcioViewModel> Gets () {
            var servicio = _servicioService.Consultar ().Servicios.Select (p => new ServcioViewModel (p));
            return servicio;
        }

        

        [HttpGet ("{identificacion}")]
        public ActionResult<ServcioViewModel> Get (string identificacion) {
            var usuario = _servicioService.BuscarxIdentificacion (identificacion);
            if (usuario == null) return NotFound ();
            var usuarioViewModel = new ServcioViewModel (usuario);
            return usuarioViewModel;
        }

         [HttpPut ("{identificacion}")]
        public ActionResult<ServcioViewModel> Put (string identificacion, Servicio servicio) {
            var id = _servicioService.BuscarxIdentificacion (servicio.IdServicio);
            if (id == null) {
                return BadRequest ("No encontrado");
            }
            var response = _servicioService.Modificar (servicio);
            if(response.Error){
                ModelState.AddModelError ("Actualizar Usuario", response.Mensaje);
                var problemDetails = new ValidationProblemDetails (ModelState) {
                    Status = StatusCodes.Status400BadRequest,
                };
                return BadRequest (problemDetails);
            }
            return Ok (response.Servicio);
        }
    }
}