using Entity;
using Presentacion.Models.SMovilidadAcademica;

namespace Presentacion.Models.SMovilidadAcademicaModels
{
    public class MovilidadAcademicaViewModel:MovilidadAcademicaInputModel
    {
        public MovilidadAcademicaViewModel(MovilidadAcademica movilidad)
        {
            IdMovilidad=movilidad.IdMovilidad;
            NombreCliente = movilidad.NombreCliente;
            Correo = movilidad.Correo;
            IdCliente=movilidad.IdCliente;
            FechaEvento=movilidad.FechaEvento;
            FechaSolicitud=movilidad.FechaSolicitud;
            Destino=movilidad.Destino;
            NocheAlojamiento=movilidad.NocheAlojamiento;
            TipoAcomodacion=movilidad.TipoAcomodacion;
            Transporte=movilidad.Transporte;
            Alimentacion=movilidad.Alimentacion;
            AcompanamientoGuia=movilidad.AcompanamientoGuia;
            SeguroViaje=movilidad.SeguroViaje;
            OrganizacionAjenda=movilidad.OrganizacionAjenda;
            VisitaTecnica=movilidad.VisitaTecnica;
            CostoEntrada=movilidad.CostoEntrada;
            Objervacion=movilidad.Objervacion;
            TipoHotel=movilidad.TipoHotel;
            Refrigerio=movilidad.Refrigerio;
            Estado=movilidad.Estado;
        }
    }
}