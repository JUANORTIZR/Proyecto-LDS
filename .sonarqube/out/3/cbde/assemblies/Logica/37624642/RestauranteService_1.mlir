// Skipping function Guardar(none), it contains poisonous unsupported syntaxes

func @_Logica.Restaurantes.RestauranteService.EscribirEncabezado$$() -> none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Restaurantes\\RestauranteService.cs" :31 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Restaurantes\\RestauranteService.cs" :32 :19) // "Registro de Restaurante " (StringLiteralExpression)
// Entity from another assembly: DateTime
%1 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Restaurantes\\RestauranteService.cs" :32 :48) // DateTime.Now (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Restaurantes\\RestauranteService.cs" :32 :71) // "dd/MMM/yyy hh:mm:ss" (StringLiteralExpression)
%3 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Restaurantes\\RestauranteService.cs" :32 :48) // DateTime.Now.ToString ("dd/MMM/yyy hh:mm:ss") (InvocationExpression)
%4 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Restaurantes\\RestauranteService.cs" :32 :19) // Binary expression on unsupported types "Registro de Restaurante " + DateTime.Now.ToString ("dd/MMM/yyy hh:mm:ss")
return %4 : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Restaurantes\\RestauranteService.cs" :32 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_Logica.Restaurantes.RestauranteService.EscribirCuerpo$string$(none) -> none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Restaurantes\\RestauranteService.cs" :34 :8) {
^entry (%_nombre : none):
%0 = cbde.alloca none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Restaurantes\\RestauranteService.cs" :34 :37)
cbde.store %_nombre, %0 : memref<none> loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Restaurantes\\RestauranteService.cs" :34 :37)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Restaurantes\\RestauranteService.cs" :35 :26) // Not a variable of known type: nombre
%2 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Restaurantes\\RestauranteService.cs" :35 :20) // $"<b>{nombre }</b> <br " (InterpolatedStringExpression)
%3 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Restaurantes\\RestauranteService.cs" :36 :16) // $" > se ha realizado su registro Sartisfactoriamente" (InterpolatedStringExpression)
%4 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Restaurantes\\RestauranteService.cs" :35 :20) // Binary expression on unsupported types $"<b>{nombre }</b> <br " +                  $" > se ha realizado su registro Sartisfactoriamente"
return %4 : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Restaurantes\\RestauranteService.cs" :35 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function Consultar(), it contains poisonous unsupported syntaxes

func @_Logica.Restaurantes.RestauranteService.BuscarxNit$string$(none) -> none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Restaurantes\\RestauranteService.cs" :47 :8) {
^entry (%_nit : none):
%0 = cbde.alloca none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Restaurantes\\RestauranteService.cs" :47 :39)
cbde.store %_nit, %0 : memref<none> loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Restaurantes\\RestauranteService.cs" :47 :39)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Restaurantes\\RestauranteService.cs" :48 :38) // Not a variable of known type: _Context
%2 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Restaurantes\\RestauranteService.cs" :48 :38) // _Context.Restaurantes (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Restaurantes\\RestauranteService.cs" :48 :66) // Not a variable of known type: nit
%4 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Restaurantes\\RestauranteService.cs" :48 :38) // _Context.Restaurantes.Find (nit) (InvocationExpression)
%6 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Restaurantes\\RestauranteService.cs" :49 :19) // Not a variable of known type: restaurante
return %6 : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Restaurantes\\RestauranteService.cs" :49 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function Modificar(none), it contains poisonous unsupported syntaxes

