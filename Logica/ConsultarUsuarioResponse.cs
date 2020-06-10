using System.Collections.Generic;
using Entity;

namespace Logica
{
    public class ConsultarUsuarioResponse
    {
        public bool Error { get; set; }
        public string Mensaje { get; set; }
        public List<User> Usuarios { get; set; }
        public ConsultarUsuarioResponse(List<User> usuarios)
        {
            Error = false;
            Usuarios = usuarios;
        }

        public ConsultarUsuarioResponse(string mensaje)
        {
            Error = true;
            Mensaje = mensaje;
        }
    }
}