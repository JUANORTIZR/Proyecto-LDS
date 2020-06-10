using Entity;

namespace Logica
{
    public class ActualizarUsuarioResponse
    {
        public string Mensaje { get; set; }
        public bool Error { get; set; }
        public User Usuario { get; set; }
        public ActualizarUsuarioResponse(User usuario)
        {
            Error = false;
            Usuario = usuario;
        }

        public ActualizarUsuarioResponse(string mensaje)
        {
            Error = true;
            Mensaje = mensaje;
        }
    }
}