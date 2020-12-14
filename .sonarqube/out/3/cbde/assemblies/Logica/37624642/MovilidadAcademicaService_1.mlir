// Skipping function Guardar(none), it contains poisonous unsupported syntaxes

func @_Logica.SMovilidadAcademica.MovilidadAcademicaService.EscribirEncabezado$string$(none) -> none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :31 :8) {
^entry (%_tipo : none):
%0 = cbde.alloca none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :31 :42)
cbde.store %_tipo, %0 : memref<none> loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :31 :42)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :32 :16) // Not a variable of known type: tipo
%2 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :32 :24) // "Solicitud" (StringLiteralExpression)
%3 = cbde.unknown : i1  loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :32 :16) // comparison of unknown type: tipo == "Solicitud"
cond_br %3, ^1, ^2 loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :32 :16)

^1: // JumpBlock
%4 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :33 :23) // "Solicitud de servicio " (StringLiteralExpression)
// Entity from another assembly: DateTime
%5 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :33 :50) // DateTime.Now (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :33 :73) // "dd/MMM/yyy hh:mm:ss" (StringLiteralExpression)
%7 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :33 :50) // DateTime.Now.ToString ("dd/MMM/yyy hh:mm:ss") (InvocationExpression)
%8 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :33 :23) // Binary expression on unsupported types "Solicitud de servicio " + DateTime.Now.ToString ("dd/MMM/yyy hh:mm:ss")
return %8 : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :33 :16)

^2: // JumpBlock
%9 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :35 :19) // "Informacion de estado de solicitud " (StringLiteralExpression)
// Entity from another assembly: DateTime
%10 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :35 :59) // DateTime.Now (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :35 :82) // "dd/MMM/yyy hh:mm:ss" (StringLiteralExpression)
%12 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :35 :59) // DateTime.Now.ToString ("dd/MMM/yyy hh:mm:ss") (InvocationExpression)
%13 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :35 :19) // Binary expression on unsupported types "Informacion de estado de solicitud " + DateTime.Now.ToString ("dd/MMM/yyy hh:mm:ss")
return %13 : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :35 :12)

^3: // ExitBlock
cbde.unreachable

}
func @_Logica.SMovilidadAcademica.MovilidadAcademicaService.EscribirCuerpo$string.string.string$(none, none, none) -> none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :37 :8) {
^entry (%_nombre : none, %_tipo : none, %_numero : none):
%0 = cbde.alloca none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :37 :38)
cbde.store %_nombre, %0 : memref<none> loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :37 :38)
%1 = cbde.alloca none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :37 :52)
cbde.store %_tipo, %1 : memref<none> loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :37 :52)
%2 = cbde.alloca none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :37 :64)
cbde.store %_numero, %2 : memref<none> loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :37 :64)
br ^0

^0: // BinaryBranchBlock
%3 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :38 :15) // Not a variable of known type: tipo
%4 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :38 :23) // "Solicitud" (StringLiteralExpression)
%5 = cbde.unknown : i1  loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :38 :15) // comparison of unknown type: tipo == "Solicitud"
cond_br %5, ^1, ^2 loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :38 :15)

^1: // JumpBlock
%6 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :39 :23) // $"<b>¡¡Bienvenido a logística educativa del Sinú¡¡</b><br>" (InterpolatedStringExpression)
%7 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :40 :24) // Not a variable of known type: nombre
%8 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :40 :16) // $"Hola {nombre}.<br>" (InterpolatedStringExpression)
%9 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :39 :23) // Binary expression on unsupported types $"<b>¡¡Bienvenido a logística educativa del Sinú¡¡</b><br>"+                  $"Hola {nombre}.<br>"
%10 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :41 :16) // "Gracias por preferirnos al momento de organizar y realizar sus eventos académicos. <br>" (StringLiteralExpression)
%11 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :39 :23) // Binary expression on unsupported types $"<b>¡¡Bienvenido a logística educativa del Sinú¡¡</b><br>"+                  $"Hola {nombre}.<br>"+                  "Gracias por preferirnos al momento de organizar y realizar sus eventos académicos. <br>"
%12 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :42 :86) // Not a variable of known type: numero
%13 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :42 :16) // $"Tenemos el gusto de informarle que su solicitud de servicio número {numero} fue registrada con éxito.<br>" (InterpolatedStringExpression)
%14 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :39 :23) // Binary expression on unsupported types $"<b>¡¡Bienvenido a logística educativa del Sinú¡¡</b><br>"+                  $"Hola {nombre}.<br>"+                  "Gracias por preferirnos al momento de organizar y realizar sus eventos académicos. <br>"+                  $"Tenemos el gusto de informarle que su solicitud de servicio número {numero} fue registrada con éxito.<br>"
%15 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :43 :16) // "También puede consultar el estado de su solicitud en nuestro aplicativo web a través del siguiente enlace.<br>" (StringLiteralExpression)
%16 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :39 :23) // Binary expression on unsupported types $"<b>¡¡Bienvenido a logística educativa del Sinú¡¡</b><br>"+                  $"Hola {nombre}.<br>"+                  "Gracias por preferirnos al momento de organizar y realizar sus eventos académicos. <br>"+                  $"Tenemos el gusto de informarle que su solicitud de servicio número {numero} fue registrada con éxito.<br>"+                  "También puede consultar el estado de su solicitud en nuestro aplicativo web a través del siguiente enlace.<br>"
%17 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :44 :16) // "<a href='https://logisticaeducativadelsinu.azurewebsites.net/usuarioMovilidadConsulta'>Mis servicios</a>" (StringLiteralExpression)
%18 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :39 :23) // Binary expression on unsupported types $"<b>¡¡Bienvenido a logística educativa del Sinú¡¡</b><br>"+                  $"Hola {nombre}.<br>"+                  "Gracias por preferirnos al momento de organizar y realizar sus eventos académicos. <br>"+                  $"Tenemos el gusto de informarle que su solicitud de servicio número {numero} fue registrada con éxito.<br>"+                  "También puede consultar el estado de su solicitud en nuestro aplicativo web a través del siguiente enlace.<br>"+                  "<a href='https://logisticaeducativadelsinu.azurewebsites.net/usuarioMovilidadConsulta'>Mis servicios</a>"
return %18 : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :39 :16)

^2: // BinaryBranchBlock
%19 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :46 :15) // Not a variable of known type: tipo
%20 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :46 :23) // "Aceptada" (StringLiteralExpression)
%21 = cbde.unknown : i1  loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :46 :15) // comparison of unknown type: tipo == "Aceptada"
cond_br %21, ^3, ^4 loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :46 :15)

^3: // JumpBlock
%22 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :47 :23) // "<b>¡¡Bienvenido a logística educativa del Sinú¡¡</b><br>" (StringLiteralExpression)
%23 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :48 :24) // Not a variable of known type: nombre
%24 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :48 :16) // $"Hola {nombre} <br>" (InterpolatedStringExpression)
%25 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :47 :23) // Binary expression on unsupported types "<b>¡¡Bienvenido a logística educativa del Sinú¡¡</b><br>"+                  $"Hola {nombre} <br>"
%26 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :49 :16) // "Gracias por preferirnos al momento de organizar y realizar sus eventos académicos.<br>" (StringLiteralExpression)
%27 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :47 :23) // Binary expression on unsupported types "<b>¡¡Bienvenido a logística educativa del Sinú¡¡</b><br>"+                  $"Hola {nombre} <br>"+                  "Gracias por preferirnos al momento de organizar y realizar sus eventos académicos.<br>"
%28 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :50 :86) // Not a variable of known type: numero
%29 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :50 :16) // $"Tenemos el gusto de informarle que su solicitud de servicio número {numero} fue <b>aceptada</b>." (InterpolatedStringExpression)
%30 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :47 :23) // Binary expression on unsupported types "<b>¡¡Bienvenido a logística educativa del Sinú¡¡</b><br>"+                  $"Hola {nombre} <br>"+                  "Gracias por preferirnos al momento de organizar y realizar sus eventos académicos.<br>"+                  $"Tenemos el gusto de informarle que su solicitud de servicio número {numero} fue <b>aceptada</b>."
%31 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :51 :16) // "Para mayor información visite nuestra aplicación web a través de siguiente enlace.<br>" (StringLiteralExpression)
%32 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :47 :23) // Binary expression on unsupported types "<b>¡¡Bienvenido a logística educativa del Sinú¡¡</b><br>"+                  $"Hola {nombre} <br>"+                  "Gracias por preferirnos al momento de organizar y realizar sus eventos académicos.<br>"+                  $"Tenemos el gusto de informarle que su solicitud de servicio número {numero} fue <b>aceptada</b>."+                  "Para mayor información visite nuestra aplicación web a través de siguiente enlace.<br>"
%33 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :52 :16) // "<a href='https://logisticaeducativadelsinu.azurewebsites.net/usuarioMovilidadConsulta'>Mis servicios</a>" (StringLiteralExpression)
%34 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :47 :23) // Binary expression on unsupported types "<b>¡¡Bienvenido a logística educativa del Sinú¡¡</b><br>"+                  $"Hola {nombre} <br>"+                  "Gracias por preferirnos al momento de organizar y realizar sus eventos académicos.<br>"+                  $"Tenemos el gusto de informarle que su solicitud de servicio número {numero} fue <b>aceptada</b>."+                  "Para mayor información visite nuestra aplicación web a través de siguiente enlace.<br>"+                  "<a href='https://logisticaeducativadelsinu.azurewebsites.net/usuarioMovilidadConsulta'>Mis servicios</a>"
return %34 : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :47 :16)

^4: // JumpBlock
%35 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :54 :19) // "<b>¡¡Bienvenido a logística educativa del Sinú¡¡</b><br>" (StringLiteralExpression)
%36 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :55 :20) // Not a variable of known type: nombre
%37 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :55 :12) // $"Hola {nombre}<br>" (InterpolatedStringExpression)
%38 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :54 :19) // Binary expression on unsupported types "<b>¡¡Bienvenido a logística educativa del Sinú¡¡</b><br>"+              $"Hola {nombre}<br>"
%39 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :56 :12) // "Gracias por preferirnos al momento de organizar y realizar sus eventos académicos.<br>" (StringLiteralExpression)
%40 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :54 :19) // Binary expression on unsupported types "<b>¡¡Bienvenido a logística educativa del Sinú¡¡</b><br>"+              $"Hola {nombre}<br>"+              "Gracias por preferirnos al momento de organizar y realizar sus eventos académicos.<br>"
%41 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :57 :65) // Not a variable of known type: numero
%42 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :57 :12) // $"Le informamos que su solicitud de servicio número {numero} fue rechazada por el momento no podemos ofrecerle nuestros servicios.<br>" (InterpolatedStringExpression)
%43 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :54 :19) // Binary expression on unsupported types "<b>¡¡Bienvenido a logística educativa del Sinú¡¡</b><br>"+              $"Hola {nombre}<br>"+              "Gracias por preferirnos al momento de organizar y realizar sus eventos académicos.<br>"+              $"Le informamos que su solicitud de servicio número {numero} fue rechazada por el momento no podemos ofrecerle nuestros servicios.<br>"
%44 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :58 :12) // "Para mayor información o si desea agendar una nueva solicitud de servicio visite nuestra aplicación web a través de siguiente enlace.<br>" (StringLiteralExpression)
%45 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :54 :19) // Binary expression on unsupported types "<b>¡¡Bienvenido a logística educativa del Sinú¡¡</b><br>"+              $"Hola {nombre}<br>"+              "Gracias por preferirnos al momento de organizar y realizar sus eventos académicos.<br>"+              $"Le informamos que su solicitud de servicio número {numero} fue rechazada por el momento no podemos ofrecerle nuestros servicios.<br>"+              "Para mayor información o si desea agendar una nueva solicitud de servicio visite nuestra aplicación web a través de siguiente enlace.<br>"
%46 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :59 :12) // "<a href='https://logisticadelsinu.azurewebsites.net/usuarioMovilidadConsulta'>Mis servicios</a>" (StringLiteralExpression)
%47 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :54 :19) // Binary expression on unsupported types "<b>¡¡Bienvenido a logística educativa del Sinú¡¡</b><br>"+              $"Hola {nombre}<br>"+              "Gracias por preferirnos al momento de organizar y realizar sus eventos académicos.<br>"+              $"Le informamos que su solicitud de servicio número {numero} fue rechazada por el momento no podemos ofrecerle nuestros servicios.<br>"+              "Para mayor información o si desea agendar una nueva solicitud de servicio visite nuestra aplicación web a través de siguiente enlace.<br>"+              "<a href='https://logisticadelsinu.azurewebsites.net/usuarioMovilidadConsulta'>Mis servicios</a>"
return %47 : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :54 :12)

^5: // ExitBlock
cbde.unreachable

}
// Skipping function Consultar(), it contains poisonous unsupported syntaxes

func @_Logica.SMovilidadAcademica.MovilidadAcademicaService.BuscarxIdentificacion$string$(none) -> none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :70 :8) {
^entry (%_identificacion : none):
%0 = cbde.alloca none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :70 :57)
cbde.store %_identificacion, %0 : memref<none> loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :70 :57)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :71 :29) // Not a variable of known type: _context
%2 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :71 :29) // _context.Movilidades (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :71 :55) // Not a variable of known type: identificacion
%4 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :71 :29) // _context.Movilidades.Find(identificacion) (InvocationExpression)
%6 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :72 :19) // Not a variable of known type: movilidad
return %6 : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Logica\\SMovilidadAcademica\\MovilidadAcademicaService.cs" :72 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function Modificar(none), it contains poisonous unsupported syntaxes

