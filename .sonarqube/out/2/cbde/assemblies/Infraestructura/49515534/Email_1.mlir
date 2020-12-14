func @_Infraestructura.Email.ConfigurarSmt$$() -> () loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Infraestructura\\Email.cs" :10 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Infraestructura\\Email.cs" :11 :12) // Not a variable of known type: smtp
%1 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Infraestructura\\Email.cs" :11 :12) // smtp.Host (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Infraestructura\\Email.cs" :11 :24) // "smtp.gmail.com" (StringLiteralExpression)
%3 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Infraestructura\\Email.cs" :12 :12) // Not a variable of known type: smtp
%4 = cbde.unknown : i32 loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Infraestructura\\Email.cs" :12 :12) // smtp.Port (SimpleMemberAccessExpression)
%5 = constant 587 : i32 loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Infraestructura\\Email.cs" :12 :24)
%6 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Infraestructura\\Email.cs" :13 :12) // Not a variable of known type: smtp
%7 = cbde.unknown : i1 loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Infraestructura\\Email.cs" :13 :12) // smtp.EnableSsl (SimpleMemberAccessExpression)
%8 = constant 1 : i1 loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Infraestructura\\Email.cs" :13 :29) // true
%9 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Infraestructura\\Email.cs" :14 :12) // Not a variable of known type: smtp
%10 = cbde.unknown : i1 loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Infraestructura\\Email.cs" :14 :12) // smtp.UseDefaultCredentials (SimpleMemberAccessExpression)
%11 = constant 0 : i1 loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Infraestructura\\Email.cs" :14 :41) // false
%12 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Infraestructura\\Email.cs" :15 :12) // Not a variable of known type: smtp
%13 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Infraestructura\\Email.cs" :15 :12) // smtp.Credentials (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Infraestructura\\Email.cs" :15 :65) // "ojuankita9@gmail.com" (StringLiteralExpression)
%15 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Infraestructura\\Email.cs" :15 :89) // "*********" (StringLiteralExpression)
%16 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Infraestructura\\Email.cs" :15 :31) // new System.Net.NetworkCredential ("ojuankita9@gmail.com", "*********") (ObjectCreationExpression)
br ^1

^1: // ExitBlock
return

}
func @_Infraestructura.Email.ConfigurarEmail$string.string.string$(none, none, none) -> () loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Infraestructura\\Email.cs" :17 :8) {
^entry (%_correoElectronico : none, %_cuerpoEmail : none, %_encabezado : none):
%0 = cbde.alloca none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Infraestructura\\Email.cs" :17 :38)
cbde.store %_correoElectronico, %0 : memref<none> loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Infraestructura\\Email.cs" :17 :38)
%1 = cbde.alloca none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Infraestructura\\Email.cs" :17 :63)
cbde.store %_cuerpoEmail, %1 : memref<none> loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Infraestructura\\Email.cs" :17 :63)
%2 = cbde.alloca none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Infraestructura\\Email.cs" :17 :82)
cbde.store %_encabezado, %2 : memref<none> loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Infraestructura\\Email.cs" :17 :82)
br ^0

^0: // SimpleBlock
%3 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Infraestructura\\Email.cs" :19 :20) // new MailMessage () (ObjectCreationExpression)
%4 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Infraestructura\\Email.cs" :20 :12) // Not a variable of known type: email
%5 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Infraestructura\\Email.cs" :20 :12) // email.To (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Infraestructura\\Email.cs" :20 :26) // Not a variable of known type: correoElectronico
%7 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Infraestructura\\Email.cs" :20 :12) // email.To.Add (correoElectronico) (InvocationExpression)
%8 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Infraestructura\\Email.cs" :21 :12) // Not a variable of known type: email
%9 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Infraestructura\\Email.cs" :21 :12) // email.From (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Infraestructura\\Email.cs" :21 :42) // "ojuankita9@gmail.com" (StringLiteralExpression)
%11 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Infraestructura\\Email.cs" :21 :25) // new MailAddress ("ojuankita9@gmail.com") (ObjectCreationExpression)
%12 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Infraestructura\\Email.cs" :22 :12) // Not a variable of known type: email
%13 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Infraestructura\\Email.cs" :22 :12) // email.Subject (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Infraestructura\\Email.cs" :22 :28) // Not a variable of known type: encabezado
%15 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Infraestructura\\Email.cs" :23 :12) // Not a variable of known type: email
%16 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Infraestructura\\Email.cs" :23 :12) // email.Body (SimpleMemberAccessExpression)
%17 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Infraestructura\\Email.cs" :23 :25) // Not a variable of known type: cuerpoEmail
%18 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Infraestructura\\Email.cs" :24 :12) // Not a variable of known type: email
%19 = cbde.unknown : i1 loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Infraestructura\\Email.cs" :24 :12) // email.IsBodyHtml (SimpleMemberAccessExpression)
%20 = constant 1 : i1 loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Infraestructura\\Email.cs" :24 :31) // true
%21 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Infraestructura\\Email.cs" :25 :12) // Not a variable of known type: email
%22 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Infraestructura\\Email.cs" :25 :12) // email.Priority (SimpleMemberAccessExpression)
// Entity from another assembly: MailPriority
%23 = constant unit loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Infraestructura\\Email.cs" :25 :29) // MailPriority.Normal (SimpleMemberAccessExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function EnviarEmail(none, none, none), it contains poisonous unsupported syntaxes

