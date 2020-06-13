import { Servicio } from "../LogisticaDelSinu/Models/servicio";

export class User {
    usuario:string;
    identificacion:string;
    password:string;
    estado:string;
    primerNombre:string;
    segundoNombre:string;
    primerApellido:string;
    segundoAPellido:string;
    telefono:string;
    correo:string;
    tipo:string;
    servicios:Servicio[];
    token:string;
  movilidades: import("a:/Escritorio/ProyectoNuevo/Proyecto-LDS/Presentacion/ClientApp/src/app/LogisticaDelSinu/Models/movilidad").Movilidad[];
}