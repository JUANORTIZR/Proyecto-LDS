using Entity;

namespace Presentacion.Models.Loguin
{
    public class LoginViewModel: LoginInputModel
    {
        public LoginViewModel(User usuario)
        {
            Usuario=usuario.Usuario;
            Password=usuario.Password;
            Estado=usuario.Estado;
            PrimerNombre=usuario.PrimerNombre;
            PrimerApellido=usuario.PrimerApellido;         
            Correo=usuario.Correo;
            Telefono=usuario.Telefono;
            Token=usuario.Token;
        }
    }
}