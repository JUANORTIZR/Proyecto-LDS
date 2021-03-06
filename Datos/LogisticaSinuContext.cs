using Entity;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Design;

namespace Datos {
    public class LogisticaSinuContext : DbContext {

        public LogisticaSinuContext (DbContextOptions options) : base (options) {

        }
        public DbSet<Hotel> Hoteles { get; set; }
        public DbSet<Usuario> Usuarios { get; set; }
        public DbSet<Restaurante> Restaurantes { get; set; }
        public DbSet<Transporte> Transportes { get; set; }
        public DbSet<User> Users { get; set; }
        public DbSet<Utilidad> Utilidades { get; set; }
        public DbSet<Servicio> Servicios { get; set; }
        public DbSet<MovilidadAcademica> Movilidades { get; set; }

    }

    
}