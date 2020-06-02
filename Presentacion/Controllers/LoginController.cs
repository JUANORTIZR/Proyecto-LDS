using Datos;
using Logica;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Options;
using Presentacion.Configuraciones;
using Presentacion.Models.Loguin;
using Presentacion.Service;

namespace Presentacion.Controllers {

    [Authorize]
    [ApiController]
    [Route ("api/[controller]")]
    public class LoginController : ControllerBase {
        private JwtService _jwtService;
        private UserService _userService;
        private readonly LogisticaSinuContext _context;

        public LoginController (LogisticaSinuContext context, IOptions<AppSetting> appSettings) {
            _context = context;
            var admin = _context.Users.Find ("admin");
            if (admin == null) {
                _context.Users.Add (new Entity.User () {
                        Usuario = "admin",
                        Password = "admin",
                        Estado = "Activo",
                        PrimerNombre = "Adminitrador",
                        PrimerApellido = "Administrador",
                        Telefono = "31800000000",
                        Correo = "admin@gmail.com"
                });

                var i = _context.SaveChanges ();
            }
            _jwtService = new JwtService (appSettings);
            _userService = new UserService (context);
        }

        [AllowAnonymous]
        [HttpPost ()]
        public IActionResult Login (LoginInputModel model) {
            var user = _userService.ValidarUser (model.Usuario, model.Password);

            if (user == null) {
                ModelState.AddModelError ("Acceso Denegado", "Username or password is incorrect");
                var problemDetails = new ValidationProblemDetails (ModelState) {
                    Status = StatusCodes.Status400BadRequest,
                };
                return BadRequest (problemDetails);
            }
            var response = _jwtService.GenerarToken (user);

            return Ok (response);
        }

    }
}