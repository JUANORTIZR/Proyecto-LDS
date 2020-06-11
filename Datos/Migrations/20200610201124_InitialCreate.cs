using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace Datos.Migrations
{
    public partial class InitialCreate : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Hoteles",
                columns: table => new
                {
                    Nit = table.Column<string>(nullable: false),
                    Nombre = table.Column<string>(nullable: true),
                    Pais = table.Column<string>(nullable: true),
                    Ciudad = table.Column<string>(nullable: true),
                    Direccion = table.Column<string>(nullable: true),
                    Barrio = table.Column<string>(nullable: true),
                    Telefono = table.Column<string>(nullable: true),
                    CorreoElectronico = table.Column<string>(nullable: true),
                    SitioWeb = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Hoteles", x => x.Nit);
                });

            migrationBuilder.CreateTable(
                name: "Restaurantes",
                columns: table => new
                {
                    Nit = table.Column<string>(nullable: false),
                    Nombre = table.Column<string>(nullable: true),
                    Pais = table.Column<string>(nullable: true),
                    Ciudad = table.Column<string>(nullable: true),
                    Direccion = table.Column<string>(nullable: true),
                    Barrio = table.Column<string>(nullable: true),
                    Telefono = table.Column<string>(nullable: true),
                    CorreoElectronico = table.Column<string>(nullable: true),
                    SitioWeb = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Restaurantes", x => x.Nit);
                });

            migrationBuilder.CreateTable(
                name: "Servicios",
                columns: table => new
                {
                    IdServicio = table.Column<string>(nullable: false),
                    IdCliente = table.Column<string>(nullable: true),
                    FechaEvento = table.Column<DateTime>(nullable: false),
                    FechaSolicitud = table.Column<DateTime>(nullable: false),
                    TipoServicio = table.Column<string>(nullable: true),
                    Descripcion = table.Column<string>(nullable: true),
                    Refrigerio = table.Column<string>(nullable: true),
                    Ponentes = table.Column<string>(nullable: true),
                    LogisticaCompleta = table.Column<string>(nullable: true),
                    Observacion = table.Column<string>(nullable: true),
                    Estado = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Servicios", x => x.IdServicio);
                });

            migrationBuilder.CreateTable(
                name: "Transportes",
                columns: table => new
                {
                    Nit = table.Column<string>(nullable: false),
                    Nombre = table.Column<string>(nullable: true),
                    Pais = table.Column<string>(nullable: true),
                    Ciudad = table.Column<string>(nullable: true),
                    Direccion = table.Column<string>(nullable: true),
                    Barrio = table.Column<string>(nullable: true),
                    Telefono = table.Column<string>(nullable: true),
                    CorreoElectronico = table.Column<string>(nullable: true),
                    SitioWeb = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Transportes", x => x.Nit);
                });

            migrationBuilder.CreateTable(
                name: "Users",
                columns: table => new
                {
                    Usuario = table.Column<string>(nullable: false),
                    Identificacion = table.Column<string>(nullable: true),
                    Password = table.Column<string>(nullable: true),
                    Estado = table.Column<string>(nullable: true),
                    PrimerNombre = table.Column<string>(nullable: true),
                    SegundoNombre = table.Column<string>(nullable: true),
                    PrimerApellido = table.Column<string>(nullable: true),
                    SegundoApellido = table.Column<string>(nullable: true),
                    Correo = table.Column<string>(nullable: true),
                    Telefono = table.Column<string>(nullable: true),
                    Tipo = table.Column<string>(nullable: true),
                    Token = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Users", x => x.Usuario);
                });

            migrationBuilder.CreateTable(
                name: "Usuarios",
                columns: table => new
                {
                    Identificacion = table.Column<string>(nullable: false),
                    PrimerNombre = table.Column<string>(nullable: true),
                    SegundoNombre = table.Column<string>(nullable: true),
                    PrimerApellido = table.Column<string>(nullable: true),
                    SegundoApellido = table.Column<string>(nullable: true),
                    Telefono = table.Column<string>(nullable: true),
                    CorreoElectronico = table.Column<string>(nullable: true),
                    Clave = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Usuarios", x => x.Identificacion);
                });

            migrationBuilder.CreateTable(
                name: "Utilidades",
                columns: table => new
                {
                    IdPago = table.Column<string>(nullable: false),
                    Precio = table.Column<decimal>(nullable: false),
                    Costo = table.Column<decimal>(nullable: false),
                    UtilidadTotal = table.Column<decimal>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Utilidades", x => x.IdPago);
                });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Hoteles");

            migrationBuilder.DropTable(
                name: "Restaurantes");

            migrationBuilder.DropTable(
                name: "Servicios");

            migrationBuilder.DropTable(
                name: "Transportes");

            migrationBuilder.DropTable(
                name: "Users");

            migrationBuilder.DropTable(
                name: "Usuarios");

            migrationBuilder.DropTable(
                name: "Utilidades");
        }
    }
}
