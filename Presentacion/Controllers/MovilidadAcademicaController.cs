using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Datos;
using Entity;
using Logica.SMovilidadAcademica;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.SignalR;
using Presentacion.Hubs;
using Presentacion.Models.SMovilidadAcademica;
using Presentacion.Models.SMovilidadAcademicaModels;

namespace Presentacion.Controllers {
    [Route ("api/[controller]")]
    [ApiController]
    public class MovilidadAcademicaController : ControllerBase {
        private readonly MovilidadAcademicaService _movilidadService;
        private readonly IHubContext<SignalHub> _hubContext;
        public MovilidadAcademicaController (LogisticaSinuContext context, IHubContext<SignalHub> hubContext) {
            _movilidadService = new MovilidadAcademicaService (context);
            _hubContext = hubContext;
        }

        [HttpPost]
        public async Task<ActionResult<MovilidadAcademicaViewModel>> Post (MovilidadAcademicaInputModel movilidadInput) {
            MovilidadAcademica movilidad = MapearUsuario (movilidadInput);
            var response = _movilidadService.Guardar (movilidad);
            if (response.Error) {
                ModelState.AddModelError ("Guardar Servicio", response.Mensaje);
                var problemDetails = new ValidationProblemDetails (ModelState) {
                    Status = StatusCodes.Status400BadRequest,
                };
                return BadRequest (problemDetails);
            }
            var movilidadView = new MovilidadAcademicaViewModel (response.Movilidad);
            await _hubContext.Clients.All.SendAsync ("movilidadRegistrada", movilidadView);
            return Ok (movilidadView);
        }

        private MovilidadAcademica MapearUsuario (MovilidadAcademicaInputModel movilidadInput) {
            var movilidad = new MovilidadAcademica {
                IdMovilidad = movilidadInput.IdMovilidad,
                IdCliente = movilidadInput.IdCliente,
                NombreCliente = movilidadInput.NombreCliente,
                Correo = movilidadInput.Correo,
                FechaEvento = movilidadInput.FechaEvento,
                FechaSolicitud = movilidadInput.FechaSolicitud,
                Destino = movilidadInput.Destino,
                NocheAlojamiento = movilidadInput.NocheAlojamiento,
                TipoAcomodacion = movilidadInput.TipoAcomodacion,
                Transporte = movilidadInput.Transporte,
                Alimentacion = movilidadInput.Alimentacion,
                AcompanamientoGuia = movilidadInput.AcompanamientoGuia,
                SeguroViaje = movilidadInput.SeguroViaje,
                OrganizacionAjenda = movilidadInput.OrganizacionAjenda,
                VisitaTecnica = movilidadInput.VisitaTecnica,
                CostoEntrada = movilidadInput.CostoEntrada,
                Objervacion = movilidadInput.Objervacion,
                TipoHotel = movilidadInput.TipoHotel,
                Refrigerio = movilidadInput.Refrigerio,
                Estado = "Sin revisar"
            };
            return movilidad;
        }

        [HttpGet]
        public IEnumerable<MovilidadAcademicaViewModel> Gets () {
            var movilidad = _movilidadService.Consultar ().Movilidades.Select (M => new MovilidadAcademicaViewModel (M));
            return movilidad;
        }

        [HttpGet ("{identificacion}")]
        public ActionResult<MovilidadAcademicaViewModel> Get (string identificacion) {
            var usuario = _movilidadService.BuscarxIdentificacion (identificacion);
            if (usuario == null) return NotFound ();
            var usuarioViewModel = new MovilidadAcademicaViewModel (usuario);
            return usuarioViewModel;
        }

        [HttpPut ("{identificacion}")]
        public ActionResult<MovilidadAcademicaViewModel> Put (string identificacion, MovilidadAcademica movilidad) {
            var id = _movilidadService.BuscarxIdentificacion (movilidad.IdMovilidad);
            if (id == null) {
                return BadRequest ("No encontrado");
            }
            var response = _movilidadService.Modificar (movilidad);
            if (response.Error) {
                ModelState.AddModelError ("Actualizar Usuario", response.Mensaje);
                var problemDetails = new ValidationProblemDetails (ModelState) {
                    Status = StatusCodes.Status400BadRequest,
                };
                return BadRequest (problemDetails);
            }
            return Ok (response.Movilidad);
        }
    }
}