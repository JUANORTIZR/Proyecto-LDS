func @_Presentacion.Controllers.RestauranteController.Post$Presentacion.Models.RestauranteModels.RestauranteInputModel$(none) -> none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :24 :9) {
^entry (%_restauranteInput : none):
%0 = cbde.alloca none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :25 :55)
cbde.store %_restauranteInput, %0 : memref<none> loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :25 :55)
br ^0

^0: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: MapearRestaurante
%1 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :27 :55) // Not a variable of known type: restauranteInput
%2 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :27 :37) // MapearRestaurante(restauranteInput) (InvocationExpression)
%4 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :28 :27) // Not a variable of known type: _restauranteService
%5 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :28 :55) // Not a variable of known type: restaurante
%6 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :28 :27) // _restauranteService.Guardar(restaurante) (InvocationExpression)
%8 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :29 :16) // Not a variable of known type: response
%9 = cbde.unknown : i1 loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :29 :16) // response.Error (SimpleMemberAccessExpression)
cond_br %9, ^1, ^2 loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :29 :16)

^1: // JumpBlock
%10 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :31 :16) // Identifier from another assembly: ModelState
%11 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :31 :42) // "Guardar Restaurante" (StringLiteralExpression)
%12 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :31 :65) // Not a variable of known type: response
%13 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :31 :65) // response.Mensaje (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :31 :16) // ModelState.AddModelError ("Guardar Restaurante", response.Mensaje) (InvocationExpression)
%15 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :32 :67) // Identifier from another assembly: ModelState
%16 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :32 :37) // new ValidationProblemDetails (ModelState) {                      Status = StatusCodes.Status400BadRequest,                  } (ObjectCreationExpression)
// Entity from another assembly: StatusCodes
%17 = constant 400 : i32 loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :33 :29)
// Entity from another assembly: BadRequest
%19 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :35 :34) // Not a variable of known type: problemDetails
%20 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :35 :23) // BadRequest(problemDetails) (InvocationExpression)
return %20 : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :35 :16)

^2: // JumpBlock
// Entity from another assembly: Ok
%21 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :37 :22) // Not a variable of known type: response
%22 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :37 :22) // response.Restaurante (SimpleMemberAccessExpression)
%23 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :37 :19) // Ok(response.Restaurante) (InvocationExpression)
return %23 : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :37 :12)

^3: // ExitBlock
cbde.unreachable

}
func @_Presentacion.Controllers.RestauranteController.MapearRestaurante$Presentacion.Models.RestauranteModels.RestauranteInputModel$(none) -> none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :40 :8) {
^entry (%_restauranteInput : none):
%0 = cbde.alloca none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :40 :46)
cbde.store %_restauranteInput, %0 : memref<none> loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :40 :46)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :42 :30) // new Restaurante              {                  Nit = restauranteInput.Nit,                  Nombre = restauranteInput.Nombre,                  Pais = restauranteInput.Pais,                  Ciudad = restauranteInput.Ciudad,                  Direccion = restauranteInput.Direccion,                  Barrio = restauranteInput.Barrio,                  Telefono = restauranteInput.Telefono,                  CorreoElectronico = restauranteInput.CorreoElectronico,                  SitioWeb = restauranteInput.SitioWeb,                  ClaseComida=restauranteInput.ClaseComida              } (ObjectCreationExpression)
%2 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :44 :22) // Not a variable of known type: restauranteInput
%3 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :44 :22) // restauranteInput.Nit (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :45 :25) // Not a variable of known type: restauranteInput
%5 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :45 :25) // restauranteInput.Nombre (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :46 :23) // Not a variable of known type: restauranteInput
%7 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :46 :23) // restauranteInput.Pais (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :47 :25) // Not a variable of known type: restauranteInput
%9 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :47 :25) // restauranteInput.Ciudad (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :48 :28) // Not a variable of known type: restauranteInput
%11 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :48 :28) // restauranteInput.Direccion (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :49 :25) // Not a variable of known type: restauranteInput
%13 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :49 :25) // restauranteInput.Barrio (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :50 :27) // Not a variable of known type: restauranteInput
%15 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :50 :27) // restauranteInput.Telefono (SimpleMemberAccessExpression)
%16 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :51 :36) // Not a variable of known type: restauranteInput
%17 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :51 :36) // restauranteInput.CorreoElectronico (SimpleMemberAccessExpression)
%18 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :52 :27) // Not a variable of known type: restauranteInput
%19 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :52 :27) // restauranteInput.SitioWeb (SimpleMemberAccessExpression)
%20 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :53 :28) // Not a variable of known type: restauranteInput
%21 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :53 :28) // restauranteInput.ClaseComida (SimpleMemberAccessExpression)
%23 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :55 :19) // Not a variable of known type: restaurante
return %23 : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :55 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function Gets(), it contains poisonous unsupported syntaxes

func @_Presentacion.Controllers.RestauranteController.Get$string$(none) -> none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :64 :8) {
^entry (%_nit : none):
%0 = cbde.alloca none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :65 :54)
cbde.store %_nit, %0 : memref<none> loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :65 :54)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :67 :30) // Not a variable of known type: _restauranteService
%2 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :67 :61) // Not a variable of known type: nit
%3 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :67 :30) // _restauranteService.BuscarxNit(nit) (InvocationExpression)
%5 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :68 :16) // Not a variable of known type: restaurante
%6 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :68 :31) // null (NullLiteralExpression)
%7 = cbde.unknown : i1  loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :68 :16) // comparison of unknown type: restaurante == null
cond_br %7, ^1, ^2 loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :68 :16)

^1: // JumpBlock
// Entity from another assembly: NotFound
%8 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :68 :44) // NotFound() (InvocationExpression)
return %8 : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :68 :37)

^2: // JumpBlock
%9 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :69 :64) // Not a variable of known type: restaurante
%10 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :69 :39) // new RestauranteViewModel(restaurante) (ObjectCreationExpression)
%12 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :70 :19) // Not a variable of known type: RestauranteViewModel
return %12 : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :70 :12)

^3: // ExitBlock
cbde.unreachable

}
func @_Presentacion.Controllers.RestauranteController.Put$string.Entity.Restaurante$(none, none) -> none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :73 :8) {
^entry (%_nit : none, %_restaurante : none):
%0 = cbde.alloca none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :74 :40)
cbde.store %_nit, %0 : memref<none> loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :74 :40)
%1 = cbde.alloca none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :74 :52)
cbde.store %_restaurante, %1 : memref<none> loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :74 :52)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :76 :22) // Not a variable of known type: _restauranteService
%3 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :76 :53) // Not a variable of known type: restaurante
%4 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :76 :53) // restaurante.Nit (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :76 :22) // _restauranteService.BuscarxNit(restaurante.Nit) (InvocationExpression)
%7 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :77 :15) // Not a variable of known type: _nit
%8 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :77 :21) // null (NullLiteralExpression)
%9 = cbde.unknown : i1  loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :77 :15) // comparison of unknown type: _nit==null
cond_br %9, ^1, ^2 loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :77 :15)

^1: // JumpBlock
// Entity from another assembly: BadRequest
%10 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :78 :34) // "No encontrado" (StringLiteralExpression)
%11 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :78 :23) // BadRequest("No encontrado") (InvocationExpression)
return %11 : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :78 :16)

^2: // JumpBlock
%12 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :80 :24) // Not a variable of known type: _restauranteService
%13 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :80 :54) // Not a variable of known type: restaurante
%14 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :80 :24) // _restauranteService.Modificar(restaurante) (InvocationExpression)
// Entity from another assembly: Ok
%16 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :81 :21) // Not a variable of known type: mensaje
%17 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :81 :18) // Ok(mensaje) (InvocationExpression)
return %17 : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\RestauranteController.cs" :81 :11)

^3: // ExitBlock
cbde.unreachable

}
