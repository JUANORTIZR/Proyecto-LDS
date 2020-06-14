using System.Resources;
using Entity;

namespace Presentacion.Models.Loguin
{
    public class LoginViewModel: LoginInputModel
    {
        public LoginViewModel(User usuario)
        {
            Usuario=usuario.Usuario;
            Identificacion = usuario.Identificacion;
            Password=usuario.Password;
            Estado=usuario.Estado;
            PrimerNombre=usuario.PrimerNombre;
            SegundoNombre = usuario.SegundoNombre;
            PrimerApellido=usuario.PrimerApellido;
            SegundoApellido = usuario.SegundoApellido;         
            Correo=usuario.Correo;
            Telefono=usuario.Telefono;
            Tipo = usuario.Tipo;
            Servicios=usuario.Servicios;
            Movilidades=usuario.Movilidades;
            Token=usuario.Token;
        }
    }
}