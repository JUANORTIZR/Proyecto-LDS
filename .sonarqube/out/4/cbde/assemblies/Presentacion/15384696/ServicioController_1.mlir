// Skipping function Post(none), it contains poisonous unsupported syntaxes

func @_Presentacion.Controllers.ServicioController.MapearUsuario$Presentacion.Models.Servicio.ServicioInputModel$(none) -> none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :45 :8) {
^entry (%_servicioInput : none):
%0 = cbde.alloca none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :45 :40)
cbde.store %_servicioInput, %0 : memref<none> loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :45 :40)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :46 :27) // new Servicio {                  IdServicio = servicioInput.IdServicio,                  IdCliente = servicioInput.IdCliente,                  NombreCliente = servicioInput.NombreCliente,                  FechaEvento = servicioInput.FechaEvento,                  FechaSolicitud = servicioInput.FechaSolicitud,                  TipoServicio = servicioInput.TipoServicio,                  Descripcion = servicioInput.Descripcion,                  Refrigerio = servicioInput.Refrigerio,                  Ponentes = servicioInput.Ponentes,                  LogisticaCompleta = servicioInput.LogisticaCompleta,                  Correo = servicioInput.Correo,                  Observacion = servicioInput.Observacion,                  Estado = "Sin revisar"              } (ObjectCreationExpression)
%2 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :47 :29) // Not a variable of known type: servicioInput
%3 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :47 :29) // servicioInput.IdServicio (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :48 :28) // Not a variable of known type: servicioInput
%5 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :48 :28) // servicioInput.IdCliente (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :49 :32) // Not a variable of known type: servicioInput
%7 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :49 :32) // servicioInput.NombreCliente (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :50 :30) // Not a variable of known type: servicioInput
%9 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :50 :30) // servicioInput.FechaEvento (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :51 :33) // Not a variable of known type: servicioInput
%11 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :51 :33) // servicioInput.FechaSolicitud (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :52 :31) // Not a variable of known type: servicioInput
%13 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :52 :31) // servicioInput.TipoServicio (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :53 :30) // Not a variable of known type: servicioInput
%15 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :53 :30) // servicioInput.Descripcion (SimpleMemberAccessExpression)
%16 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :54 :29) // Not a variable of known type: servicioInput
%17 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :54 :29) // servicioInput.Refrigerio (SimpleMemberAccessExpression)
%18 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :55 :27) // Not a variable of known type: servicioInput
%19 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :55 :27) // servicioInput.Ponentes (SimpleMemberAccessExpression)
%20 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :56 :36) // Not a variable of known type: servicioInput
%21 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :56 :36) // servicioInput.LogisticaCompleta (SimpleMemberAccessExpression)
%22 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :57 :25) // Not a variable of known type: servicioInput
%23 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :57 :25) // servicioInput.Correo (SimpleMemberAccessExpression)
%24 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :58 :30) // Not a variable of known type: servicioInput
%25 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :58 :30) // servicioInput.Observacion (SimpleMemberAccessExpression)
%26 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :59 :25) // "Sin revisar" (StringLiteralExpression)
%28 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :61 :19) // Not a variable of known type: servicio
return %28 : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :61 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function Gets(), it contains poisonous unsupported syntaxes

func @_Presentacion.Controllers.ServicioController.Get$string$(none) -> none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :72 :8) {
^entry (%_identificacion : none):
%0 = cbde.alloca none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :73 :51)
cbde.store %_identificacion, %0 : memref<none> loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :73 :51)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :74 :26) // Not a variable of known type: _servicioService
%2 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :74 :66) // Not a variable of known type: identificacion
%3 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :74 :26) // _servicioService.BuscarxIdentificacion (identificacion) (InvocationExpression)
%5 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :75 :16) // Not a variable of known type: usuario
%6 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :75 :27) // null (NullLiteralExpression)
%7 = cbde.unknown : i1  loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :75 :16) // comparison of unknown type: usuario == null
cond_br %7, ^1, ^2 loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :75 :16)

^1: // JumpBlock
// Entity from another assembly: NotFound
%8 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :75 :40) // NotFound () (InvocationExpression)
return %8 : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :75 :33)

^2: // JumpBlock
%9 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :76 :57) // Not a variable of known type: usuario
%10 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :76 :35) // new ServcioViewModel (usuario) (ObjectCreationExpression)
%12 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :77 :19) // Not a variable of known type: usuarioViewModel
return %12 : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :77 :12)

^3: // ExitBlock
cbde.unreachable

}
func @_Presentacion.Controllers.ServicioController.Put$string.Entity.Servicio$(none, none) -> none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :80 :9) {
^entry (%_identificacion : none, %_servicio : none):
%0 = cbde.alloca none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :81 :51)
cbde.store %_identificacion, %0 : memref<none> loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :81 :51)
%1 = cbde.alloca none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :81 :74)
cbde.store %_servicio, %1 : memref<none> loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :81 :74)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :82 :21) // Not a variable of known type: _servicioService
%3 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :82 :61) // Not a variable of known type: servicio
%4 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :82 :61) // servicio.IdServicio (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :82 :21) // _servicioService.BuscarxIdentificacion (servicio.IdServicio) (InvocationExpression)
%7 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :83 :16) // Not a variable of known type: id
%8 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :83 :22) // null (NullLiteralExpression)
%9 = cbde.unknown : i1  loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :83 :16) // comparison of unknown type: id == null
cond_br %9, ^1, ^2 loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :83 :16)

^1: // JumpBlock
// Entity from another assembly: BadRequest
%10 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :84 :35) // "No encontrado" (StringLiteralExpression)
%11 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :84 :23) // BadRequest ("No encontrado") (InvocationExpression)
return %11 : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :84 :16)

^2: // BinaryBranchBlock
%12 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :86 :27) // Not a variable of known type: _servicioService
%13 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :86 :55) // Not a variable of known type: servicio
%14 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :86 :27) // _servicioService.Modificar (servicio) (InvocationExpression)
%16 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :87 :15) // Not a variable of known type: response
%17 = cbde.unknown : i1 loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :87 :15) // response.Error (SimpleMemberAccessExpression)
cond_br %17, ^3, ^4 loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :87 :15)

^3: // JumpBlock
%18 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :88 :16) // Identifier from another assembly: ModelState
%19 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :88 :42) // "Actualizar Usuario" (StringLiteralExpression)
%20 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :88 :64) // Not a variable of known type: response
%21 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :88 :64) // response.Mensaje (SimpleMemberAccessExpression)
%22 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :88 :16) // ModelState.AddModelError ("Actualizar Usuario", response.Mensaje) (InvocationExpression)
%23 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :89 :67) // Identifier from another assembly: ModelState
%24 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :89 :37) // new ValidationProblemDetails (ModelState) {                      Status = StatusCodes.Status400BadRequest,                  } (ObjectCreationExpression)
// Entity from another assembly: StatusCodes
%25 = constant 400 : i32 loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :90 :29)
// Entity from another assembly: BadRequest
%27 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :92 :35) // Not a variable of known type: problemDetails
%28 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :92 :23) // BadRequest (problemDetails) (InvocationExpression)
return %28 : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :92 :16)

^4: // JumpBlock
// Entity from another assembly: Ok
%29 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :95 :23) // Not a variable of known type: response
%30 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :95 :23) // response.Servicio (SimpleMemberAccessExpression)
%31 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :95 :19) // Ok (response.Servicio) (InvocationExpression)
return %31 : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ServicioController.cs" :95 :12)

^5: // ExitBlock
cbde.unreachable

}
