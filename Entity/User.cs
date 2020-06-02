using System.ComponentModel.DataAnnotations;
using System;
namespace Entity
{
    public class User
    {
        [Key]
        public string  Usuario { get; set; }
        public string  Password { get; set; }
        public string  Estado { get; set; }
        public string  PrimerNombre { get; set; }
        public string  PrimerApellido { get; set; }
        public string  Correo { get; set; }
        public string  Telefono { get; set; }
        public string Token { get; set; }
        
    }
}