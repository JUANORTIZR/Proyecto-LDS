using Entity;

namespace Logica
{
    public class GuardarUsuarioResponse
    {
        public GuardarUsuarioResponse(User usuario)
        {
            Error = false;
            Usuario = usuario;
        }
        public GuardarUsuarioResponse(string mensaje)
        {
            Error = true;
            Mensaje = mensaje;
        }
        public bool Error { get; set; }
        public string Mensaje { get; set; }
        public User Usuario { get; set; }
    }
}