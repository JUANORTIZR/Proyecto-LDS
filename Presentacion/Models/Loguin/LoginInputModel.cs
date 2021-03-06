using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
namespace Presentacion.Models.Loguin
{
    public class LoginInputModel
    {
        public string  Usuario { get; set; }
        public string Identificacion { get; set; }
        public string  Password { get; set; }
        public string  Estado { get; set; }
        public string  PrimerNombre { get; set; }
        public string SegundoNombre { get; set; }
        public string  PrimerApellido { get; set; }
        public string SegundoApellido { get; set; }
        [Required(ErrorMessage = "El correo electronico es requerido")]
        [StringLength(50,ErrorMessage="No se permiten mas de 50 caracteres en el correo")]
        [EmailAddress(ErrorMessage="Correo Electronico no valido")]
        public string  Correo { get; set; }
        public string  Telefono { get; set; }
        public string Tipo { get; set; }
        public List<Entity.Servicio> Servicios { get; set; }
        public List<Entity.MovilidadAcademica> Movilidades { get; set; }
        public string Token { get; set; }
        
    }
}