// Skipping function Guardar(none), it contains poisonous unsupported syntaxes

func @_Logica.Servicios.ServicioService.EscribirEncabezado$string$(none) -> none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :31 :8) {
^entry (%_tipo : none):
%0 = cbde.alloca none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :31 :42)
cbde.store %_tipo, %0 : memref<none> loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :31 :42)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :32 :16) // Not a variable of known type: tipo
%2 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :32 :24) // "Solicitud" (StringLiteralExpression)
%3 = cbde.unknown : i1  loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :32 :16) // comparison of unknown type: tipo == "Solicitud"
cond_br %3, ^1, ^2 loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :32 :16)

^1: // JumpBlock
%4 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :33 :23) // "Solicitud de servicio " (StringLiteralExpression)
// Entity from another assembly: DateTime
%5 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :33 :50) // DateTime.Now (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :33 :73) // "dd/MMM/yyy hh:mm:ss" (StringLiteralExpression)
%7 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :33 :50) // DateTime.Now.ToString ("dd/MMM/yyy hh:mm:ss") (InvocationExpression)
%8 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :33 :23) // Binary expression on unsupported types "Solicitud de servicio " + DateTime.Now.ToString ("dd/MMM/yyy hh:mm:ss")
return %8 : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :33 :16)

^2: // JumpBlock
%9 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :35 :19) // "Informacion de estado de solicitud " (StringLiteralExpression)
// Entity from another assembly: DateTime
%10 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :35 :59) // DateTime.Now (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :35 :82) // "dd/MMM/yyy hh:mm:ss" (StringLiteralExpression)
%12 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :35 :59) // DateTime.Now.ToString ("dd/MMM/yyy hh:mm:ss") (InvocationExpression)
%13 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :35 :19) // Binary expression on unsupported types "Informacion de estado de solicitud " + DateTime.Now.ToString ("dd/MMM/yyy hh:mm:ss")
return %13 : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :35 :12)

^3: // ExitBlock
cbde.unreachable

}
func @_Logica.Servicios.ServicioService.EscribirCuerpo$string.string.string$(none, none, none) -> none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :37 :8) {
^entry (%_nombre : none, %_tipo : none, %_numero : none):
%0 = cbde.alloca none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :37 :38)
cbde.store %_nombre, %0 : memref<none> loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :37 :38)
%1 = cbde.alloca none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :37 :53)
cbde.store %_tipo, %1 : memref<none> loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :37 :53)
%2 = cbde.alloca none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :37 :66)
cbde.store %_numero, %2 : memref<none> loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :37 :66)
br ^0

^0: // BinaryBranchBlock
%3 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :38 :16) // Not a variable of known type: tipo
%4 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :38 :24) // "Solicitud" (StringLiteralExpression)
%5 = cbde.unknown : i1  loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :38 :16) // comparison of unknown type: tipo == "Solicitud"
cond_br %5, ^1, ^2 loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :38 :16)

^1: // JumpBlock
%6 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :39 :23) // $"<b>¡¡Bienvenido a logística educativa del Sinú¡¡</b><br>" (InterpolatedStringExpression)
%7 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :40 :28) // Not a variable of known type: nombre
%8 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :40 :20) // $"Hola {nombre}.<br>" (InterpolatedStringExpression)
%9 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :39 :23) // Binary expression on unsupported types $"<b>¡¡Bienvenido a logística educativa del Sinú¡¡</b><br>" +                      $"Hola {nombre}.<br>"
%10 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :41 :20) // "Gracias por preferirnos al momento de organizar y realizar sus eventos académicos. <br>" (StringLiteralExpression)
%11 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :39 :23) // Binary expression on unsupported types $"<b>¡¡Bienvenido a logística educativa del Sinú¡¡</b><br>" +                      $"Hola {nombre}.<br>" +                      "Gracias por preferirnos al momento de organizar y realizar sus eventos académicos. <br>"
%12 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :42 :90) // Not a variable of known type: numero
%13 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :42 :20) // $"Tenemos el gusto de informarle que su solicitud de servicio número {numero} fue registrada con éxito.<br>" (InterpolatedStringExpression)
%14 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :39 :23) // Binary expression on unsupported types $"<b>¡¡Bienvenido a logística educativa del Sinú¡¡</b><br>" +                      $"Hola {nombre}.<br>" +                      "Gracias por preferirnos al momento de organizar y realizar sus eventos académicos. <br>" +                      $"Tenemos el gusto de informarle que su solicitud de servicio número {numero} fue registrada con éxito.<br>"
%15 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :43 :20) // "También puede consultar el estado de su solicitud en nuestro aplicativo web a través del siguiente enlace.<br>" (StringLiteralExpression)
%16 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :39 :23) // Binary expression on unsupported types $"<b>¡¡Bienvenido a logística educativa del Sinú¡¡</b><br>" +                      $"Hola {nombre}.<br>" +                      "Gracias por preferirnos al momento de organizar y realizar sus eventos académicos. <br>" +                      $"Tenemos el gusto de informarle que su solicitud de servicio número {numero} fue registrada con éxito.<br>" +                      "También puede consultar el estado de su solicitud en nuestro aplicativo web a través del siguiente enlace.<br>"
%17 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :44 :20) // "<a href='https://logisticaeducativadelsinu.azurewebsites.net/usuarioServicioConsulta'>Mis servicios</a>" (StringLiteralExpression)
%18 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :39 :23) // Binary expression on unsupported types $"<b>¡¡Bienvenido a logística educativa del Sinú¡¡</b><br>" +                      $"Hola {nombre}.<br>" +                      "Gracias por preferirnos al momento de organizar y realizar sus eventos académicos. <br>" +                      $"Tenemos el gusto de informarle que su solicitud de servicio número {numero} fue registrada con éxito.<br>" +                      "También puede consultar el estado de su solicitud en nuestro aplicativo web a través del siguiente enlace.<br>" +                      "<a href='https://logisticaeducativadelsinu.azurewebsites.net/usuarioServicioConsulta'>Mis servicios</a>"
return %18 : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :39 :16)

^2: // BinaryBranchBlock
%19 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :46 :16) // Not a variable of known type: tipo
%20 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :46 :24) // "Aceptada" (StringLiteralExpression)
%21 = cbde.unknown : i1  loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :46 :16) // comparison of unknown type: tipo == "Aceptada"
cond_br %21, ^3, ^4 loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :46 :16)

^3: // JumpBlock
%22 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :47 :23) // "<b>¡¡Bienvenido a logística educativa del Sinú¡¡</b><br>" (StringLiteralExpression)
%23 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :48 :28) // Not a variable of known type: nombre
%24 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :48 :20) // $"Hola {nombre} <br>" (InterpolatedStringExpression)
%25 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :47 :23) // Binary expression on unsupported types "<b>¡¡Bienvenido a logística educativa del Sinú¡¡</b><br>" +                      $"Hola {nombre} <br>"
%26 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :49 :20) // "Gracias por preferirnos al momento de organizar y realizar sus eventos académicos.<br>" (StringLiteralExpression)
%27 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :47 :23) // Binary expression on unsupported types "<b>¡¡Bienvenido a logística educativa del Sinú¡¡</b><br>" +                      $"Hola {nombre} <br>" +                      "Gracias por preferirnos al momento de organizar y realizar sus eventos académicos.<br>"
%28 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :50 :90) // Not a variable of known type: numero
%29 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :50 :20) // $"Tenemos el gusto de informarle que su solicitud de servicio número {numero} fue <b>aceptada</b>." (InterpolatedStringExpression)
%30 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :47 :23) // Binary expression on unsupported types "<b>¡¡Bienvenido a logística educativa del Sinú¡¡</b><br>" +                      $"Hola {nombre} <br>" +                      "Gracias por preferirnos al momento de organizar y realizar sus eventos académicos.<br>" +                      $"Tenemos el gusto de informarle que su solicitud de servicio número {numero} fue <b>aceptada</b>."
%31 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :51 :20) // "Para mayor información visite nuestra aplicación web a través de siguiente enlace.<br>" (StringLiteralExpression)
%32 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :47 :23) // Binary expression on unsupported types "<b>¡¡Bienvenido a logística educativa del Sinú¡¡</b><br>" +                      $"Hola {nombre} <br>" +                      "Gracias por preferirnos al momento de organizar y realizar sus eventos académicos.<br>" +                      $"Tenemos el gusto de informarle que su solicitud de servicio número {numero} fue <b>aceptada</b>." +                      "Para mayor información visite nuestra aplicación web a través de siguiente enlace.<br>"
%33 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :52 :20) // "<a href='https://logisticaeducativadelsinu.azurewebsites.net/usuarioServicioConsulta'>Mis servicios</a>" (StringLiteralExpression)
%34 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :47 :23) // Binary expression on unsupported types "<b>¡¡Bienvenido a logística educativa del Sinú¡¡</b><br>" +                      $"Hola {nombre} <br>" +                      "Gracias por preferirnos al momento de organizar y realizar sus eventos académicos.<br>" +                      $"Tenemos el gusto de informarle que su solicitud de servicio número {numero} fue <b>aceptada</b>." +                      "Para mayor información visite nuestra aplicación web a través de siguiente enlace.<br>" +                      "<a href='https://logisticaeducativadelsinu.azurewebsites.net/usuarioServicioConsulta'>Mis servicios</a>"
return %34 : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :47 :16)

^4: // JumpBlock
%35 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :54 :19) // "<b>¡¡Bienvenido a logística educativa del Sinú¡¡</b><br>" (StringLiteralExpression)
%36 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :55 :24) // Not a variable of known type: nombre
%37 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :55 :16) // $"Hola {nombre}<br>" (InterpolatedStringExpression)
%38 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :54 :19) // Binary expression on unsupported types "<b>¡¡Bienvenido a logística educativa del Sinú¡¡</b><br>" +                  $"Hola {nombre}<br>"
%39 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :56 :16) // "Gracias por preferirnos al momento de organizar y realizar sus eventos académicos.<br>" (StringLiteralExpression)
%40 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :54 :19) // Binary expression on unsupported types "<b>¡¡Bienvenido a logística educativa del Sinú¡¡</b><br>" +                  $"Hola {nombre}<br>" +                  "Gracias por preferirnos al momento de organizar y realizar sus eventos académicos.<br>"
%41 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :57 :69) // Not a variable of known type: numero
%42 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :57 :16) // $"Le informamos que su solicitud de servicio número {numero} fue rechazada por el momento no podemos ofrecerle nuestros servicios.<br>" (InterpolatedStringExpression)
%43 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :54 :19) // Binary expression on unsupported types "<b>¡¡Bienvenido a logística educativa del Sinú¡¡</b><br>" +                  $"Hola {nombre}<br>" +                  "Gracias por preferirnos al momento de organizar y realizar sus eventos académicos.<br>" +                  $"Le informamos que su solicitud de servicio número {numero} fue rechazada por el momento no podemos ofrecerle nuestros servicios.<br>"
%44 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :58 :16) // "Para mayor información o si desea agendar una nueva solicitud de servicio visite nuestra aplicación web a través de siguiente enlace.<br>" (StringLiteralExpression)
%45 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :54 :19) // Binary expression on unsupported types "<b>¡¡Bienvenido a logística educativa del Sinú¡¡</b><br>" +                  $"Hola {nombre}<br>" +                  "Gracias por preferirnos al momento de organizar y realizar sus eventos académicos.<br>" +                  $"Le informamos que su solicitud de servicio número {numero} fue rechazada por el momento no podemos ofrecerle nuestros servicios.<br>" +                  "Para mayor información o si desea agendar una nueva solicitud de servicio visite nuestra aplicación web a través de siguiente enlace.<br>"
%46 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :59 :16) // "<a href='https://logisticaeducativadelsinu.azurewebsites.net/usuarioServicioConsulta'>Mis servicios</a>" (StringLiteralExpression)
%47 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :54 :19) // Binary expression on unsupported types "<b>¡¡Bienvenido a logística educativa del Sinú¡¡</b><br>" +                  $"Hola {nombre}<br>" +                  "Gracias por preferirnos al momento de organizar y realizar sus eventos académicos.<br>" +                  $"Le informamos que su solicitud de servicio número {numero} fue rechazada por el momento no podemos ofrecerle nuestros servicios.<br>" +                  "Para mayor información o si desea agendar una nueva solicitud de servicio visite nuestra aplicación web a través de siguiente enlace.<br>" +                  "<a href='https://logisticaeducativadelsinu.azurewebsites.net/usuarioServicioConsulta'>Mis servicios</a>"
return %47 : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :54 :12)

^5: // ExitBlock
cbde.unreachable

}
// Skipping function Consultar(), it contains poisonous unsupported syntaxes

// Skipping function ConsultarCantidad(none), it contains poisonous unsupported syntaxes

func @_Logica.Servicios.ServicioService.BuscarxIdentificacion$string$(none) -> none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :78 :8) {
^entry (%_identificacion : none):
%0 = cbde.alloca none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :78 :47)
cbde.store %_identificacion, %0 : memref<none> loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :78 :47)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :79 :28) // Not a variable of known type: _context
%2 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :79 :28) // _context.Servicios (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :79 :53) // Not a variable of known type: identificacion
%4 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :79 :28) // _context.Servicios.Find (identificacion) (InvocationExpression)
%6 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :80 :19) // Not a variable of known type: servicio
return %6 : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :80 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_Logica.Servicios.ServicioService.Modificar$Entity.Servicio$(none) -> none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :83 :8) {
^entry (%_servicioNuevo : none):
%0 = cbde.alloca none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :83 :53)
cbde.store %_servicioNuevo, %0 : memref<none> loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :83 :53)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :85 :34) // string (PredefinedType)
%2 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :85 :34) // string.Empty (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :86 :26) // new Email () (ObjectCreationExpression)
%6 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :87 :32) // Not a variable of known type: _context
%7 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :87 :32) // _context.Servicios (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :87 :57) // Not a variable of known type: servicioNuevo
%9 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :87 :57) // servicioNuevo.IdServicio (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :87 :32) // _context.Servicios.Find (servicioNuevo.IdServicio) (InvocationExpression)
%12 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :89 :16) // Not a variable of known type: servicioViejo
%13 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :89 :33) // null (NullLiteralExpression)
%14 = cbde.unknown : i1  loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :89 :16) // comparison of unknown type: servicioViejo != null
cond_br %14, ^1, ^2 loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :89 :16)

^1: // JumpBlock
%15 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :91 :16) // Not a variable of known type: servicioViejo
%16 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :91 :16) // servicioViejo.Estado (SimpleMemberAccessExpression)
%17 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :91 :39) // Not a variable of known type: servicioNuevo
%18 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :91 :39) // servicioNuevo.Estado (SimpleMemberAccessExpression)
%19 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :92 :16) // Not a variable of known type: _context
%20 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :92 :16) // _context.Servicios (SimpleMemberAccessExpression)
%21 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :92 :43) // Not a variable of known type: servicioViejo
%22 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :92 :16) // _context.Servicios.Update (servicioViejo) (InvocationExpression)
%23 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :93 :16) // Not a variable of known type: _context
%24 = cbde.unknown : i32 loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :93 :16) // _context.SaveChanges () (InvocationExpression)
%25 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :94 :31) // Not a variable of known type: email
%26 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :94 :50) // Not a variable of known type: servicioNuevo
%27 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :94 :50) // servicioNuevo.Correo (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: EscribirCuerpo
%28 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :95 :32) // Not a variable of known type: servicioViejo
%29 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :95 :32) // servicioViejo.NombreCliente (SimpleMemberAccessExpression)
%30 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :95 :61) // Not a variable of known type: servicioViejo
%31 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :95 :61) // servicioViejo.Estado (SimpleMemberAccessExpression)
%32 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :95 :83) // Not a variable of known type: servicioViejo
%33 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :95 :83) // servicioViejo.IdServicio (SimpleMemberAccessExpression)
%34 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :95 :16) // EscribirCuerpo (servicioViejo.NombreCliente, servicioViejo.Estado, servicioViejo.IdServicio) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: EscribirEncabezado
%35 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :96 :36) // "" (StringLiteralExpression)
%36 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :96 :16) // EscribirEncabezado ("") (InvocationExpression)
%37 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :94 :31) // email.EnviarEmail (servicioNuevo.Correo,                   EscribirCuerpo (servicioViejo.NombreCliente, servicioViejo.Estado, servicioViejo.IdServicio),                   EscribirEncabezado ("")) (InvocationExpression)
%38 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :97 :55) // Not a variable of known type: servicioViejo
%39 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :97 :23) // new ActualizarServicioResponse (servicioViejo) (ObjectCreationExpression)
return %39 : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :97 :16)

^2: // JumpBlock
%40 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :101 :71) // Not a variable of known type: servicioViejo
%41 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :101 :71) // servicioViejo.IdServicio (SimpleMemberAccessExpression)
%42 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :101 :55) // $"Lo sentimos, {servicioViejo.IdServicio} no se encuentra registrada." (InterpolatedStringExpression)
%43 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :101 :23) // new ActualizarServicioResponse ($"Lo sentimos, {servicioViejo.IdServicio} no se encuentra registrada.") (ObjectCreationExpression)
return %43 : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\Servicios\\ServicioService.cs" :101 :16)

^3: // ExitBlock
cbde.unreachable

}
