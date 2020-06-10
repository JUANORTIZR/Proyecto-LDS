using Presentacion.Models.Servicio;

namespace Presentacion.Models
{
    public class ServcioViewModel : ServicioInputModel
    {
        public ServcioViewModel(Entity.Servicio servicio)
        {
            IdServicio = servicio.IdServicio;
            IdCliente = servicio.IdCliente;
            FechaEvento  = servicio.FechaEvento;
            FechaSolicitud = servicio.FechaSolicitud;
            TipoServicio = servicio.TipoServicio;
            Descripcion = servicio.Descripcion;
            Refrigerio = servicio.Refrigerio;
            Ponentes = servicio.Ponentes;
            LogisticaCompleta = servicio.LogisticaCompleta;
            Estado = servicio.Estado;
        }
    }
}