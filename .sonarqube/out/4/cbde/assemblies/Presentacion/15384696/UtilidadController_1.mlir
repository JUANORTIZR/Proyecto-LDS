func @_Presentacion.Controllers.UtilidadController.Post$Presentacion.Models.UtilidadModels.UtilidadInputModel$(none) -> none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UtilidadController.cs" :23 :8) {
^entry (%_UtilidadInput : none):
%0 = cbde.alloca none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UtilidadController.cs" :24 :55)
cbde.store %_UtilidadInput, %0 : memref<none> loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UtilidadController.cs" :24 :55)
br ^0

^0: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: MapearUtilidad
%1 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UtilidadController.cs" :25 :48) // Not a variable of known type: UtilidadInput
%2 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UtilidadController.cs" :25 :32) // MapearUtilidad (UtilidadInput) (InvocationExpression)
%4 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UtilidadController.cs" :26 :27) // Not a variable of known type: _utilidadService
%5 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UtilidadController.cs" :26 :53) // Not a variable of known type: utilidad
%6 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UtilidadController.cs" :26 :27) // _utilidadService.Guardar (utilidad) (InvocationExpression)
%8 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UtilidadController.cs" :27 :16) // Not a variable of known type: response
%9 = cbde.unknown : i1 loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UtilidadController.cs" :27 :16) // response.Error (SimpleMemberAccessExpression)
cond_br %9, ^1, ^2 loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UtilidadController.cs" :27 :16)

^1: // JumpBlock
%10 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UtilidadController.cs" :28 :16) // Identifier from another assembly: ModelState
%11 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UtilidadController.cs" :28 :42) // "Guardar Utilidad" (StringLiteralExpression)
%12 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UtilidadController.cs" :28 :62) // Not a variable of known type: response
%13 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UtilidadController.cs" :28 :62) // response.Mensaje (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UtilidadController.cs" :28 :16) // ModelState.AddModelError ("Guardar Utilidad", response.Mensaje) (InvocationExpression)
%15 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UtilidadController.cs" :29 :67) // Identifier from another assembly: ModelState
%16 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UtilidadController.cs" :29 :37) // new ValidationProblemDetails (ModelState) {                      Status = StatusCodes.Status400BadRequest,                  } (ObjectCreationExpression)
// Entity from another assembly: StatusCodes
%17 = constant 400 : i32 loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UtilidadController.cs" :30 :29)
// Entity from another assembly: BadRequest
%19 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UtilidadController.cs" :32 :35) // Not a variable of known type: problemDetails
%20 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UtilidadController.cs" :32 :23) // BadRequest (problemDetails) (InvocationExpression)
return %20 : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UtilidadController.cs" :32 :16)

^2: // JumpBlock
// Entity from another assembly: Ok
%21 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UtilidadController.cs" :34 :23) // Not a variable of known type: response
%22 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UtilidadController.cs" :34 :23) // response.Utilidad (SimpleMemberAccessExpression)
%23 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UtilidadController.cs" :34 :19) // Ok (response.Utilidad) (InvocationExpression)
return %23 : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UtilidadController.cs" :34 :12)

^3: // ExitBlock
cbde.unreachable

}
func @_Presentacion.Controllers.UtilidadController.MapearUtilidad$Presentacion.Models.UtilidadModels.UtilidadInputModel$(none) -> none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UtilidadController.cs" :37 :8) {
^entry (%_utilidadInput : none):
%0 = cbde.alloca none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UtilidadController.cs" :37 :41)
cbde.store %_utilidadInput, %0 : memref<none> loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UtilidadController.cs" :37 :41)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UtilidadController.cs" :38 :27) // new Utilidad {                 IdPago=utilidadInput.IdPago,                 Precio=utilidadInput.Precio,                 Costo=utilidadInput.Costo,                               } (ObjectCreationExpression)
%2 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UtilidadController.cs" :39 :22) // Not a variable of known type: utilidadInput
%3 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UtilidadController.cs" :39 :22) // utilidadInput.IdPago (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UtilidadController.cs" :40 :22) // Not a variable of known type: utilidadInput
%5 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UtilidadController.cs" :40 :22) // utilidadInput.Precio (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UtilidadController.cs" :41 :21) // Not a variable of known type: utilidadInput
%7 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UtilidadController.cs" :41 :21) // utilidadInput.Costo (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UtilidadController.cs" :44 :19) // Not a variable of known type: utilidad
return %9 : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\UtilidadController.cs" :44 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function Gets(), it contains poisonous unsupported syntaxes

