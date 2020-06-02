using System;
using System.Collections.Generic;
using System.Linq;
using Datos;
using Entity;
using Infraestructura;

namespace Logica {
    public class UserService {
        private  readonly  LogisticaSinuContext  _Context;

        public UserService (LogisticaSinuContext  _context) {
            _Context = _context;
        }

        public User ValidarUser (string usuario, string password) {
            try {
                return _Context.Users.Where (u => u.Usuario == usuario && u.Password == password && (u.Estado == "Activo" || u.Estado == "Modificado")).FirstOrDefault ();
            } catch (Exception e) {
                return null;
            }
        }

    }
}