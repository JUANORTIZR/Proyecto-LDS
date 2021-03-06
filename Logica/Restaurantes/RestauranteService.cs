using System;
using System.Collections.Generic;
using System.Linq;
using Datos;
using Entity;
using Infraestructura;
using Logica.Restaurantes;

namespace Logica.Restaurantes {
    public class RestauranteService {
        private  readonly  LogisticaSinuContext  _Context;
        public RestauranteService (LogisticaSinuContext  _context) {
            _Context = _context;
        }
        public GuardarRestauranteResponse Guardar (Restaurante restaurante) {
            try {
                string MensajeEmail = string.Empty;
                Email email = new Email ();
                var RestauranteBuscado = _Context.Restaurantes.Find (restaurante.Nit);
                if (RestauranteBuscado != null) {
                    return new GuardarRestauranteResponse ("El Restaurante ya se encuentra registrado");
                }
                _Context.Restaurantes.Add (restaurante);
                _Context.SaveChanges ();
                 MensajeEmail = email.EnviarEmail (restaurante.CorreoElectronico, EscribirCuerpo(restaurante.Nombre),EscribirEncabezado());
                return new GuardarRestauranteResponse (restaurante);
            } catch (Exception e) {
                return new GuardarRestauranteResponse ($"Error de la Aplicacion: {e.Message}");
            }
        }

        public string EscribirEncabezado(){
            return "Registro de Restaurante " + DateTime.Now.ToString ("dd/MMM/yyy hh:mm:ss");
        }
        public string EscribirCuerpo(string nombre){
            return  $"<b>{nombre }</b> <br " +
                $" > se ha realizado su registro Sartisfactoriamente";
        }
        public ConsultarRestauranteResponse Consultar () {
            try {
                List<Restaurante> restaurantes = _Context.Restaurantes.ToList ();
                return new ConsultarRestauranteResponse (restaurantes);
            } catch (Exception e) {
                return new ConsultarRestauranteResponse ($"Error de la Aplicaion: {e.Message}");
            }
        }

        public Restaurante BuscarxNit (string nit) {
            Restaurante restaurante = _Context.Restaurantes.Find (nit);
            return restaurante;
        }
        public string Modificar (Restaurante restauranteNuevo) {
            try {
                var restauranteViejo = _Context.Restaurantes.Find (restauranteNuevo.Nit);
                if (restauranteViejo != null) {
                    restauranteViejo.Nombre = restauranteNuevo.Nombre;
                    restauranteViejo.Pais = restauranteNuevo.Pais;
                    restauranteViejo.Ciudad = restauranteNuevo.Ciudad;
                    restauranteViejo.Direccion = restauranteNuevo.Direccion;
                    restauranteViejo.Barrio = restauranteNuevo.Barrio;
                    restauranteViejo.Telefono = restauranteNuevo.Telefono;
                    restauranteViejo.CorreoElectronico = restauranteNuevo.CorreoElectronico;
                    restauranteViejo.SitioWeb = restauranteNuevo.SitioWeb;
                    restauranteViejo.ClaseComida=restauranteNuevo.ClaseComida;
                    _Context.Restaurantes.Update (restauranteViejo);
                    _Context.SaveChanges();
                    return ($"El registro {restauranteNuevo.Nombre} se ha modificado satisfactoriamente.");
                } else {
                    return ($"Lo sentimos, {restauranteNuevo.Nit} no se encuentra registrada.");
                }
            } catch (Exception e) {
                return $"Error de la Aplicación: {e.Message}";
            }
        }

    }
}