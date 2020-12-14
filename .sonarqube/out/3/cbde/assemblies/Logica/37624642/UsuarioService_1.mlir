// Skipping function Guardar(none), it contains poisonous unsupported syntaxes

func @_Logica.UsuarioService.EscribirEncabezado$$() -> none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\UsuarioService.cs" :37 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\UsuarioService.cs" :38 :19) // "Registro de Usuario " (StringLiteralExpression)
// Entity from another assembly: DateTime
%1 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\UsuarioService.cs" :38 :44) // DateTime.Now (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\UsuarioService.cs" :38 :67) // "dd/MMM/yyy hh:mm:ss" (StringLiteralExpression)
%3 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\UsuarioService.cs" :38 :44) // DateTime.Now.ToString ("dd/MMM/yyy hh:mm:ss") (InvocationExpression)
%4 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\UsuarioService.cs" :38 :19) // Binary expression on unsupported types "Registro de Usuario " + DateTime.Now.ToString ("dd/MMM/yyy hh:mm:ss")
return %4 : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\UsuarioService.cs" :38 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_Logica.UsuarioService.EscribirCuerpo$string$(none) -> none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\UsuarioService.cs" :40 :8) {
^entry (%_nombre : none):
%0 = cbde.alloca none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\UsuarioService.cs" :40 :37)
cbde.store %_nombre, %0 : memref<none> loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\UsuarioService.cs" :40 :37)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\UsuarioService.cs" :41 :19) // $"<b>¡¡Bienvenido a logística educativa del Sinú¡¡</b><br>" (InterpolatedStringExpression)
%2 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\UsuarioService.cs" :42 :48) // Not a variable of known type: nombre
%3 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\UsuarioService.cs" :42 :16) // $"Le informamos que el usuario {nombre} se ha registrado satisfactoriamente.<br><br><br>" (InterpolatedStringExpression)
%4 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\UsuarioService.cs" :41 :19) // Binary expression on unsupported types $"<b>¡¡Bienvenido a logística educativa del Sinú¡¡</b><br>"+                  $"Le informamos que el usuario {nombre} se ha registrado satisfactoriamente.<br><br><br>"
%5 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\UsuarioService.cs" :44 :16) // "Acceso a tu cuenta<br><br> para realizar cambios en la cuenta en cualquier momento inicia sesión en nuestra aplicación web <a href='https://logisticaeducativadelsinu.azurewebsites.net' >Logistica educativa del sinú</a>" (StringLiteralExpression)
%6 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\UsuarioService.cs" :41 :19) // Binary expression on unsupported types $"<b>¡¡Bienvenido a logística educativa del Sinú¡¡</b><br>"+                  $"Le informamos que el usuario {nombre} se ha registrado satisfactoriamente.<br><br><br>"+                                    "Acceso a tu cuenta<br><br> para realizar cambios en la cuenta en cualquier momento inicia sesión en nuestra aplicación web <a href='https://logisticaeducativadelsinu.azurewebsites.net' >Logistica educativa del sinú</a>"
%7 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\UsuarioService.cs" :45 :16) // "<br><br>Desde aquí podrás acceder a la aplicación, para actualizar la información<br> de tu cuenta y los ajustes de seguridad." (StringLiteralExpression)
%8 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\UsuarioService.cs" :41 :19) // Binary expression on unsupported types $"<b>¡¡Bienvenido a logística educativa del Sinú¡¡</b><br>"+                  $"Le informamos que el usuario {nombre} se ha registrado satisfactoriamente.<br><br><br>"+                                    "Acceso a tu cuenta<br><br> para realizar cambios en la cuenta en cualquier momento inicia sesión en nuestra aplicación web <a href='https://logisticaeducativadelsinu.azurewebsites.net' >Logistica educativa del sinú</a>"+                  "<br><br>Desde aquí podrás acceder a la aplicación, para actualizar la información<br> de tu cuenta y los ajustes de seguridad."
return %8 : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\UsuarioService.cs" :41 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function Consultar(), it contains poisonous unsupported syntaxes

// Skipping function BuscarxIdentificacion(none, none), it contains poisonous unsupported syntaxes

// Skipping function Modificar(none), it contains poisonous unsupported syntaxes

