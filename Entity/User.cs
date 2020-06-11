using System.ComponentModel.DataAnnotations;
using System;
namespace Entity
{
    public class User
    {
        [Key]
        public string  Usuario { get; set; }
        public string Identificacion { get; set; }     
        public string  Password { get; set; }
        public string  Estado { get; set; }
        public string  PrimerNombre { get; set; }
        public string SegundoNombre { get; set; }
        public string  PrimerApellido { get; set; }
        public string SegundoApellido { get; set; }
        public string  Correo { get; set; }
        public string  Telefono { get; set; }
        public string Tipo { get; set; }
        public string Token { get; set; }
        
    }
}