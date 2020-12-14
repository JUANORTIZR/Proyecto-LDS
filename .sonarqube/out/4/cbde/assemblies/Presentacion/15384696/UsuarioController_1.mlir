func @_Presentacion.Controllers.UsuarioController.Post$Presentacion.Models.Loguin.LoginInputModel$(none) -> none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :21 :8) {
^entry (%_UsuarioInput : none):
%0 = cbde.alloca none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :22 :50)
cbde.store %_UsuarioInput, %0 : memref<none> loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :22 :50)
br ^0

^0: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: MapearUsuario
%1 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :23 :42) // Not a variable of known type: UsuarioInput
%2 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :23 :27) // MapearUsuario (UsuarioInput) (InvocationExpression)
%4 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :24 :27) // Not a variable of known type: _usuarioService
%5 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :24 :52) // Not a variable of known type: usuario
%6 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :24 :27) // _usuarioService.Guardar (usuario) (InvocationExpression)
%8 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :25 :16) // Not a variable of known type: response
%9 = cbde.unknown : i1 loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :25 :16) // response.Error (SimpleMemberAccessExpression)
cond_br %9, ^1, ^2 loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :25 :16)

^1: // JumpBlock
%10 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :26 :16) // Identifier from another assembly: ModelState
%11 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :26 :42) // "Guardar Usuario" (StringLiteralExpression)
%12 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :26 :61) // Not a variable of known type: response
%13 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :26 :61) // response.Mensaje (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :26 :16) // ModelState.AddModelError ("Guardar Usuario", response.Mensaje) (InvocationExpression)
%15 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :27 :67) // Identifier from another assembly: ModelState
%16 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :27 :37) // new ValidationProblemDetails (ModelState) {                      Status = StatusCodes.Status400BadRequest,                  } (ObjectCreationExpression)
// Entity from another assembly: StatusCodes
%17 = constant 400 : i32 loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :28 :29)
// Entity from another assembly: BadRequest
%19 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :30 :35) // Not a variable of known type: problemDetails
%20 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :30 :23) // BadRequest (problemDetails) (InvocationExpression)
return %20 : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :30 :16)

^2: // JumpBlock
// Entity from another assembly: Ok
%21 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :32 :23) // Not a variable of known type: response
%22 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :32 :23) // response.Usuario (SimpleMemberAccessExpression)
%23 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :32 :19) // Ok (response.Usuario) (InvocationExpression)
return %23 : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :32 :12)

^3: // ExitBlock
cbde.unreachable

}
func @_Presentacion.Controllers.UsuarioController.MapearUsuario$Presentacion.Models.Loguin.LoginInputModel$(none) -> none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :35 :8) {
^entry (%_usuarioInput : none):
%0 = cbde.alloca none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :35 :36)
cbde.store %_usuarioInput, %0 : memref<none> loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :35 :36)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :36 :26) // new User {                  Identificacion = usuarioInput.Identificacion,                  PrimerNombre = usuarioInput.PrimerNombre,                  SegundoNombre = usuarioInput.SegundoNombre,                  PrimerApellido = usuarioInput.PrimerApellido,                  SegundoApellido = usuarioInput.SegundoApellido,                  Telefono = usuarioInput.Telefono,                  Servicios=usuarioInput.Servicios,                  Movilidades=usuarioInput.Movilidades,                  Correo = usuarioInput.Correo,                  Usuario = usuarioInput.Usuario,                  Password = usuarioInput.Password,                  Tipo = "Usuario",                  Estado = "Activo"              } (ObjectCreationExpression)
%2 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :37 :33) // Not a variable of known type: usuarioInput
%3 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :37 :33) // usuarioInput.Identificacion (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :38 :31) // Not a variable of known type: usuarioInput
%5 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :38 :31) // usuarioInput.PrimerNombre (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :39 :32) // Not a variable of known type: usuarioInput
%7 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :39 :32) // usuarioInput.SegundoNombre (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :40 :33) // Not a variable of known type: usuarioInput
%9 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :40 :33) // usuarioInput.PrimerApellido (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :41 :34) // Not a variable of known type: usuarioInput
%11 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :41 :34) // usuarioInput.SegundoApellido (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :42 :27) // Not a variable of known type: usuarioInput
%13 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :42 :27) // usuarioInput.Telefono (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :43 :26) // Not a variable of known type: usuarioInput
%15 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :43 :26) // usuarioInput.Servicios (SimpleMemberAccessExpression)
%16 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :44 :28) // Not a variable of known type: usuarioInput
%17 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :44 :28) // usuarioInput.Movilidades (SimpleMemberAccessExpression)
%18 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :45 :25) // Not a variable of known type: usuarioInput
%19 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :45 :25) // usuarioInput.Correo (SimpleMemberAccessExpression)
%20 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :46 :26) // Not a variable of known type: usuarioInput
%21 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :46 :26) // usuarioInput.Usuario (SimpleMemberAccessExpression)
%22 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :47 :27) // Not a variable of known type: usuarioInput
%23 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :47 :27) // usuarioInput.Password (SimpleMemberAccessExpression)
%24 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :48 :23) // "Usuario" (StringLiteralExpression)
%25 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :49 :25) // "Activo" (StringLiteralExpression)
%27 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :51 :19) // Not a variable of known type: usuario
return %27 : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :51 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_Presentacion.Controllers.UsuarioController.Get$string.string$(none, none) -> none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :54 :8) {
^entry (%_identificacion : none, %_tipoServicio : none):
%0 = cbde.alloca none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :55 :49)
cbde.store %_identificacion, %0 : memref<none> loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :55 :49)
%1 = cbde.alloca none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :55 :72)
cbde.store %_tipoServicio, %1 : memref<none> loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :55 :72)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :56 :26) // Not a variable of known type: _usuarioService
%3 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :56 :65) // Not a variable of known type: identificacion
%4 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :56 :80) // Not a variable of known type: tipoServicio
%5 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :56 :26) // _usuarioService.BuscarxIdentificacion (identificacion,tipoServicio) (InvocationExpression)
%7 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :57 :16) // Not a variable of known type: usuario
%8 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :57 :27) // null (NullLiteralExpression)
%9 = cbde.unknown : i1  loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :57 :16) // comparison of unknown type: usuario == null
cond_br %9, ^1, ^2 loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :57 :16)

^1: // JumpBlock
// Entity from another assembly: NotFound
%10 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :57 :40) // NotFound () (InvocationExpression)
return %10 : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :57 :33)

^2: // JumpBlock
%11 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :58 :55) // Not a variable of known type: usuario
%12 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :58 :35) // new LoginViewModel (usuario) (ObjectCreationExpression)
%14 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :59 :19) // Not a variable of known type: usuarioViewModel
return %14 : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :59 :12)

^3: // ExitBlock
cbde.unreachable

}
// Skipping function Gets(), it contains poisonous unsupported syntaxes

func @_Presentacion.Controllers.UsuarioController.Put$string.Entity.User$(none, none) -> none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :68 :8) {
^entry (%_identificacion : none, %_usuario : none):
%0 = cbde.alloca none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :69 :49)
cbde.store %_identificacion, %0 : memref<none> loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :69 :49)
%1 = cbde.alloca none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :69 :72)
cbde.store %_usuario, %1 : memref<none> loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :69 :72)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :70 :21) // Not a variable of known type: _usuarioService
%3 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :70 :60) // Not a variable of known type: usuario
%4 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :70 :60) // usuario.Usuario (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :70 :76) // "" (StringLiteralExpression)
%6 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :70 :21) // _usuarioService.BuscarxIdentificacion (usuario.Usuario,"") (InvocationExpression)
%8 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :71 :16) // Not a variable of known type: id
%9 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :71 :22) // null (NullLiteralExpression)
%10 = cbde.unknown : i1  loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :71 :16) // comparison of unknown type: id == null
cond_br %10, ^1, ^2 loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :71 :16)

^1: // JumpBlock
// Entity from another assembly: BadRequest
%11 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :72 :35) // "No encontrado" (StringLiteralExpression)
%12 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :72 :23) // BadRequest ("No encontrado") (InvocationExpression)
return %12 : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :72 :16)

^2: // BinaryBranchBlock
%13 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :74 :27) // Not a variable of known type: _usuarioService
%14 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :74 :54) // Not a variable of known type: usuario
%15 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :74 :27) // _usuarioService.Modificar (usuario) (InvocationExpression)
%17 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :75 :15) // Not a variable of known type: response
%18 = cbde.unknown : i1 loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :75 :15) // response.Error (SimpleMemberAccessExpression)
cond_br %18, ^3, ^4 loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :75 :15)

^3: // JumpBlock
%19 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :76 :16) // Identifier from another assembly: ModelState
%20 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :76 :42) // "Actualizar Usuario" (StringLiteralExpression)
%21 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :76 :64) // Not a variable of known type: response
%22 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :76 :64) // response.Mensaje (SimpleMemberAccessExpression)
%23 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :76 :16) // ModelState.AddModelError ("Actualizar Usuario", response.Mensaje) (InvocationExpression)
%24 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :77 :67) // Identifier from another assembly: ModelState
%25 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :77 :37) // new ValidationProblemDetails (ModelState) {                      Status = StatusCodes.Status400BadRequest,                  } (ObjectCreationExpression)
// Entity from another assembly: StatusCodes
%26 = constant 400 : i32 loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :78 :29)
// Entity from another assembly: BadRequest
%28 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :80 :35) // Not a variable of known type: problemDetails
%29 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :80 :23) // BadRequest (problemDetails) (InvocationExpression)
return %29 : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :80 :16)

^4: // JumpBlock
// Entity from another assembly: Ok
%30 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :82 :23) // Not a variable of known type: response
%31 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :82 :23) // response.Usuario (SimpleMemberAccessExpression)
%32 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :82 :19) // Ok (response.Usuario) (InvocationExpression)
return %32 : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UsuarioController.cs" :82 :12)

^5: // ExitBlock
cbde.unreachable

}
