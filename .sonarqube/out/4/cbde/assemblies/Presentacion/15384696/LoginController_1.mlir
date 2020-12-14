func @_Presentacion.Controllers.LoginController.Login$Presentacion.Models.Loguin.LoginInputModel$(none) -> none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\LoginController.cs" :42 :8) {
^entry (%_model : none):
%0 = cbde.alloca none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\LoginController.cs" :44 :36)
cbde.store %_model, %0 : memref<none> loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\LoginController.cs" :44 :36)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\LoginController.cs" :45 :23) // Not a variable of known type: _userService
%2 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\LoginController.cs" :45 :49) // Not a variable of known type: model
%3 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\LoginController.cs" :45 :49) // model.Usuario (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\LoginController.cs" :45 :64) // Not a variable of known type: model
%5 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\LoginController.cs" :45 :64) // model.Password (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\LoginController.cs" :45 :23) // _userService.ValidarUser (model.Usuario, model.Password) (InvocationExpression)
%8 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\LoginController.cs" :47 :16) // Not a variable of known type: user
%9 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\LoginController.cs" :47 :24) // null (NullLiteralExpression)
%10 = cbde.unknown : i1  loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\LoginController.cs" :47 :16) // comparison of unknown type: user == null
cond_br %10, ^1, ^2 loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\LoginController.cs" :47 :16)

^1: // JumpBlock
%11 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\LoginController.cs" :48 :16) // Identifier from another assembly: ModelState
%12 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\LoginController.cs" :48 :42) // "Acceso Denegado" (StringLiteralExpression)
%13 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\LoginController.cs" :48 :61) // "Username or password is incorrect" (StringLiteralExpression)
%14 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\LoginController.cs" :48 :16) // ModelState.AddModelError ("Acceso Denegado", "Username or password is incorrect") (InvocationExpression)
%15 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\LoginController.cs" :49 :67) // Identifier from another assembly: ModelState
%16 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\LoginController.cs" :49 :37) // new ValidationProblemDetails (ModelState) {                      Status = StatusCodes.Status400BadRequest,                  } (ObjectCreationExpression)
// Entity from another assembly: StatusCodes
%17 = constant 400 : i32 loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\LoginController.cs" :50 :29)
// Entity from another assembly: BadRequest
%19 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\LoginController.cs" :52 :35) // Not a variable of known type: problemDetails
%20 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\LoginController.cs" :52 :23) // BadRequest (problemDetails) (InvocationExpression)
return %20 : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\LoginController.cs" :52 :16)

^2: // JumpBlock
%21 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\LoginController.cs" :54 :27) // Not a variable of known type: _jwtService
%22 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\LoginController.cs" :54 :53) // Not a variable of known type: user
%23 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\LoginController.cs" :54 :27) // _jwtService.GenerarToken (user) (InvocationExpression)
// Entity from another assembly: Ok
%25 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\LoginController.cs" :56 :23) // Not a variable of known type: response
%26 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\LoginController.cs" :56 :19) // Ok (response) (InvocationExpression)
return %26 : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\LoginController.cs" :56 :12)

^3: // ExitBlock
cbde.unreachable

}
