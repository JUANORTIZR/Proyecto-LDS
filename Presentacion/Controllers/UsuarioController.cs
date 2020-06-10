using System.Collections.Generic;
using System.Linq;
using Datos;
using Entity;
using Logica;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Presentacion.Models;
using Presentacion.Models.Loguin;

namespace Presentacion.Controllers {
    [Route ("api/[controller]")]
    [ApiController]
    public class UsuarioController : ControllerBase {
        private readonly UsuarioService _usuarioService;

        public UsuarioController (LogisticaSinuContext context) {
            _usuarioService = new UsuarioService (context);
        }

        [HttpPost]
        public ActionResult<LoginViewModel> Post (LoginInputModel UsuarioInput) {
            User usuario = MapearUsuario (UsuarioInput);
            var response = _usuarioService.Guardar (usuario);
            if (response.Error) {
                ModelState.AddModelError ("Guardar Usuario", response.Mensaje);
                var problemDetails = new ValidationProblemDetails (ModelState) {
                    Status = StatusCodes.Status400BadRequest,
                };
                return BadRequest (problemDetails);
            }
            return Ok (response.Usuario);
        }

        private User MapearUsuario (LoginInputModel usuarioInput) {
            var usuario = new User {
                Identificacion = usuarioInput.Identificacion,
                PrimerNombre = usuarioInput.PrimerNombre,
                SegundoNombre = usuarioInput.SegundoNombre,
                PrimerApellido = usuarioInput.PrimerApellido,
                SegundoApellido = usuarioInput.SegundoApellido,
                Telefono = usuarioInput.Telefono,
                Correo = usuarioInput.Correo,
                Usuario = usuarioInput.Usuario,
                Password = usuarioInput.Password,
                Tipo = "Usuario",
                Estado = "Activo"
            };
            return usuario;
        }

        [HttpGet ("{identificacion}")]
        public ActionResult<LoginViewModel> Get (string identificacion) {
            var usuario = _usuarioService.BuscarxIdentificacion (identificacion);
            if (usuario == null) return NotFound ();
            var usuarioViewModel = new LoginViewModel (usuario);
            return usuarioViewModel;
        }

        [HttpGet]
        public IEnumerable<LoginViewModel> Gets () {
            var usuarios = _usuarioService.Consultar ().Usuarios.Select (p => new LoginViewModel (p));
            return usuarios;
        }

        [HttpPut ("{identificacion}")]
        public ActionResult<LoginViewModel> Put (string identificacion, User usuario) {
            var id = _usuarioService.BuscarxIdentificacion (usuario.Usuario);
            if (id == null) {
                return BadRequest ("No encontrado");
            }
            var response = _usuarioService.Modificar (usuario);
            if(response.Error){
                ModelState.AddModelError ("Actualizar Usuario", response.Mensaje);
                var problemDetails = new ValidationProblemDetails (ModelState) {
                    Status = StatusCodes.Status400BadRequest,
                };
                return BadRequest (problemDetails);
            }
            return Ok (response.Usuario);
        }
    }
}