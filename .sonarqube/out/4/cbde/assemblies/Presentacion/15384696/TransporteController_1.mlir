func @_Presentacion.Controllers.TransporteController.Post$Presentacion.Models.TransporteModels.TrasnporteInputModel$(none) -> none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :26 :8) {
^entry (%_trasnporteInputModel : none):
%0 = cbde.alloca none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :27 :54)
cbde.store %_trasnporteInputModel, %0 : memref<none> loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :27 :54)
br ^0

^0: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: MapearTransporte
%1 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :29 :52) // Not a variable of known type: trasnporteInputModel
%2 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :29 :35) // MapearTransporte(trasnporteInputModel) (InvocationExpression)
%4 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :30 :27) // Not a variable of known type: _transporteService
%5 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :30 :54) // Not a variable of known type: transporte
%6 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :30 :27) // _transporteService.Guardar(transporte) (InvocationExpression)
%8 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :31 :16) // Not a variable of known type: response
%9 = cbde.unknown : i1 loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :31 :16) // response.Error (SimpleMemberAccessExpression)
cond_br %9, ^1, ^2 loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :31 :16)

^1: // JumpBlock
%10 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :33 :15) // Identifier from another assembly: ModelState
%11 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :33 :41) // "Guardar Transporte" (StringLiteralExpression)
%12 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :33 :63) // Not a variable of known type: response
%13 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :33 :63) // response.Mensaje (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :33 :15) // ModelState.AddModelError ("Guardar Transporte", response.Mensaje) (InvocationExpression)
%15 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :34 :67) // Identifier from another assembly: ModelState
%16 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :34 :37) // new ValidationProblemDetails (ModelState) {                      Status = StatusCodes.Status400BadRequest,                  } (ObjectCreationExpression)
// Entity from another assembly: StatusCodes
%17 = constant 400 : i32 loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :35 :29)
// Entity from another assembly: BadRequest
%19 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :37 :34) // Not a variable of known type: problemDetails
%20 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :37 :23) // BadRequest(problemDetails) (InvocationExpression)
return %20 : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :37 :16)

^2: // JumpBlock
// Entity from another assembly: Ok
%21 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :39 :22) // Not a variable of known type: response
%22 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :39 :22) // response.Transporte (SimpleMemberAccessExpression)
%23 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :39 :19) // Ok(response.Transporte) (InvocationExpression)
return %23 : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :39 :12)

^3: // ExitBlock
cbde.unreachable

}
func @_Presentacion.Controllers.TransporteController.MapearTransporte$Presentacion.Models.TransporteModels.TrasnporteInputModel$(none) -> none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :42 :8) {
^entry (%_trasnporteInputModel : none):
%0 = cbde.alloca none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :42 :44)
cbde.store %_trasnporteInputModel, %0 : memref<none> loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :42 :44)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :44 :29) // new Transporte              {                  Nit = trasnporteInputModel.Nit,                  Nombre = trasnporteInputModel.Nombre,                  Pais = trasnporteInputModel.Pais,                  Ciudad = trasnporteInputModel.Ciudad,                  Direccion = trasnporteInputModel.Direccion,                  Barrio = trasnporteInputModel.Barrio,                  Telefono = trasnporteInputModel.Telefono,                  CorreoElectronico = trasnporteInputModel.CorreoElectronico,                  SitioWeb = trasnporteInputModel.SitioWeb,                  ClaseTransporte=trasnporteInputModel.ClaseTransporte,                  CapacidadAsientos=trasnporteInputModel.CapacidadAsientos              } (ObjectCreationExpression)
%2 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :46 :22) // Not a variable of known type: trasnporteInputModel
%3 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :46 :22) // trasnporteInputModel.Nit (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :47 :25) // Not a variable of known type: trasnporteInputModel
%5 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :47 :25) // trasnporteInputModel.Nombre (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :48 :23) // Not a variable of known type: trasnporteInputModel
%7 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :48 :23) // trasnporteInputModel.Pais (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :49 :25) // Not a variable of known type: trasnporteInputModel
%9 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :49 :25) // trasnporteInputModel.Ciudad (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :50 :28) // Not a variable of known type: trasnporteInputModel
%11 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :50 :28) // trasnporteInputModel.Direccion (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :51 :25) // Not a variable of known type: trasnporteInputModel
%13 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :51 :25) // trasnporteInputModel.Barrio (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :52 :27) // Not a variable of known type: trasnporteInputModel
%15 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :52 :27) // trasnporteInputModel.Telefono (SimpleMemberAccessExpression)
%16 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :53 :36) // Not a variable of known type: trasnporteInputModel
%17 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :53 :36) // trasnporteInputModel.CorreoElectronico (SimpleMemberAccessExpression)
%18 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :54 :27) // Not a variable of known type: trasnporteInputModel
%19 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :54 :27) // trasnporteInputModel.SitioWeb (SimpleMemberAccessExpression)
%20 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :55 :32) // Not a variable of known type: trasnporteInputModel
%21 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :55 :32) // trasnporteInputModel.ClaseTransporte (SimpleMemberAccessExpression)
%22 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :56 :34) // Not a variable of known type: trasnporteInputModel
%23 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :56 :34) // trasnporteInputModel.CapacidadAsientos (SimpleMemberAccessExpression)
%25 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :58 :19) // Not a variable of known type: transporte
return %25 : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :58 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function Gets(), it contains poisonous unsupported syntaxes

func @_Presentacion.Controllers.TransporteController.Get$string$(none) -> none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :67 :8) {
^entry (%_nit : none):
%0 = cbde.alloca none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :68 :53)
cbde.store %_nit, %0 : memref<none> loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :68 :53)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :70 :29) // Not a variable of known type: _transporteService
%2 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :70 :59) // Not a variable of known type: nit
%3 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :70 :29) // _transporteService.BuscarxNit(nit) (InvocationExpression)
%5 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :71 :16) // Not a variable of known type: transporte
%6 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :71 :30) // null (NullLiteralExpression)
%7 = cbde.unknown : i1  loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :71 :16) // comparison of unknown type: transporte == null
cond_br %7, ^1, ^2 loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :71 :16)

^1: // JumpBlock
// Entity from another assembly: NotFound
%8 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :71 :43) // NotFound() (InvocationExpression)
return %8 : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :71 :36)

^2: // JumpBlock
%9 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :72 :62) // Not a variable of known type: transporte
%10 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :72 :38) // new TransporteViewModel(transporte) (ObjectCreationExpression)
%12 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :73 :19) // Not a variable of known type: TransporteViewModel
return %12 : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :73 :12)

^3: // ExitBlock
cbde.unreachable

}
func @_Presentacion.Controllers.TransporteController.Put$string.Entity.Transporte$(none, none) -> none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :76 :8) {
^entry (%_nit : none, %_transporte : none):
%0 = cbde.alloca none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :77 :40)
cbde.store %_nit, %0 : memref<none> loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :77 :40)
%1 = cbde.alloca none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :77 :52)
cbde.store %_transporte, %1 : memref<none> loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :77 :52)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :79 :22) // Not a variable of known type: _transporteService
%3 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :79 :52) // Not a variable of known type: transporte
%4 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :79 :52) // transporte.Nit (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :79 :22) // _transporteService.BuscarxNit(transporte.Nit) (InvocationExpression)
%7 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :80 :15) // Not a variable of known type: _nit
%8 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :80 :21) // null (NullLiteralExpression)
%9 = cbde.unknown : i1  loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :80 :15) // comparison of unknown type: _nit==null
cond_br %9, ^1, ^2 loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :80 :15)

^1: // JumpBlock
// Entity from another assembly: BadRequest
%10 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :81 :34) // "No encontrado" (StringLiteralExpression)
%11 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :81 :23) // BadRequest("No encontrado") (InvocationExpression)
return %11 : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :81 :16)

^2: // JumpBlock
%12 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :83 :24) // Not a variable of known type: _transporteService
%13 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :83 :53) // Not a variable of known type: transporte
%14 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :83 :24) // _transporteService.Modificar(transporte) (InvocationExpression)
// Entity from another assembly: Ok
%16 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :84 :21) // Not a variable of known type: mensaje
%17 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :84 :18) // Ok(mensaje) (InvocationExpression)
return %17 : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\TransporteController.cs" :84 :11)

^3: // ExitBlock
cbde.unreachable

}
