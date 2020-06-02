using System;
using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;
using System.Text;
using Entity;
using Microsoft.Extensions.Options;
using Microsoft.IdentityModel.Tokens;
using Presentacion.Configuraciones;
using Presentacion.Models.Loguin;

namespace Presentacion.Service {
    public class JwtService {
        private readonly AppSetting _appSetting;
        public JwtService (IOptions<AppSetting> appSetting) {
            _appSetting = appSetting.Value;
        }
        public LoginViewModel GenerarToken (User usuario) {
            if (usuario == null)
                return null;

            var usuarioResponse = new LoginViewModel (usuario) {
                PrimerNombre = usuario.PrimerNombre,
                PrimerApellido = usuario.PrimerApellido,
                Usuario = usuario.Usuario
            };
            // authentication successful so generate jwt token
            var tokenHandler = new JwtSecurityTokenHandler ();
            var key = Encoding.ASCII.GetBytes (_appSetting.Secret);

            var tokenDescriptor = new SecurityTokenDescriptor {
                Subject = new ClaimsIdentity (new Claim[] {
                new Claim (ClaimTypes.Name, usuario.Usuario.ToString ()),
                new Claim (ClaimTypes.Email, usuario.Correo.ToString ()),
                new Claim (ClaimTypes.MobilePhone, usuario.Telefono.ToString ()),
                new Claim (ClaimTypes.Role, "Rol1"),
                new Claim (ClaimTypes.Role, "Rol2"),
                }),
                Expires = DateTime.UtcNow.AddDays (7),
                SigningCredentials = new SigningCredentials (new SymmetricSecurityKey (key), SecurityAlgorithms.HmacSha256Signature)
            };
            var token = tokenHandler.CreateToken (tokenDescriptor);
            usuarioResponse.Token = tokenHandler.WriteToken (token);

            return usuarioResponse;
        }
    }
}