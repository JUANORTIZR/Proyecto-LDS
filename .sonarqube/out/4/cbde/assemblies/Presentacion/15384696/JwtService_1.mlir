func @_Presentacion.Service.JwtService.GenerarToken$Entity.User$(none) -> none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Service\\JwtService.cs" :16 :8) {
^entry (%_usuario : none):
%0 = cbde.alloca none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Service\\JwtService.cs" :16 :44)
cbde.store %_usuario, %0 : memref<none> loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Service\\JwtService.cs" :16 :44)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Service\\JwtService.cs" :17 :16) // Not a variable of known type: usuario
%2 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Service\\JwtService.cs" :17 :27) // null (NullLiteralExpression)
%3 = cbde.unknown : i1  loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Service\\JwtService.cs" :17 :16) // comparison of unknown type: usuario == null
cond_br %3, ^1, ^2 loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Service\\JwtService.cs" :17 :16)

^1: // JumpBlock
%4 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Service\\JwtService.cs" :18 :23) // null (NullLiteralExpression)
return %4 : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Service\\JwtService.cs" :18 :16)

^2: // JumpBlock
%5 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Service\\JwtService.cs" :20 :54) // Not a variable of known type: usuario
%6 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Service\\JwtService.cs" :20 :34) // new LoginViewModel (usuario) {                  PrimerNombre = usuario.PrimerNombre,                  PrimerApellido = usuario.PrimerApellido,                  Usuario = usuario.Usuario              } (ObjectCreationExpression)
%7 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Service\\JwtService.cs" :21 :31) // Not a variable of known type: usuario
%8 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Service\\JwtService.cs" :21 :31) // usuario.PrimerNombre (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Service\\JwtService.cs" :22 :33) // Not a variable of known type: usuario
%10 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Service\\JwtService.cs" :22 :33) // usuario.PrimerApellido (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Service\\JwtService.cs" :23 :26) // Not a variable of known type: usuario
%12 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Service\\JwtService.cs" :23 :26) // usuario.Usuario (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Service\\JwtService.cs" :26 :31) // new JwtSecurityTokenHandler () (ObjectCreationExpression)
// Entity from another assembly: Encoding
%16 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Service\\JwtService.cs" :27 :22) // Encoding.ASCII (SimpleMemberAccessExpression)
%17 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Service\\JwtService.cs" :27 :47) // Not a variable of known type: _appSetting
%18 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Service\\JwtService.cs" :27 :47) // _appSetting.Secret (SimpleMemberAccessExpression)
%19 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Service\\JwtService.cs" :27 :22) // Encoding.ASCII.GetBytes (_appSetting.Secret) (InvocationExpression)
%21 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Service\\JwtService.cs" :29 :34) // new SecurityTokenDescriptor {                  Subject = new ClaimsIdentity (new Claim[] {                  new Claim (ClaimTypes.Name, usuario.Usuario.ToString ()),                  new Claim (ClaimTypes.Email, usuario.Correo.ToString ()),                  new Claim (ClaimTypes.MobilePhone, usuario.Telefono.ToString ()),                  new Claim (ClaimTypes.Role, "Rol1"),                  new Claim (ClaimTypes.Role, "Rol2"),                  }),                  Expires = DateTime.UtcNow.AddDays (7),                  SigningCredentials = new SigningCredentials (new SymmetricSecurityKey (key), SecurityAlgorithms.HmacSha256Signature)              } (ObjectCreationExpression)
%22 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Service\\JwtService.cs" :30 :56) //  (OmittedArraySizeExpression)
%23 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Service\\JwtService.cs" :30 :50) // Claim[] (ArrayType)
%24 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Service\\JwtService.cs" :30 :46) // new Claim[] {                  new Claim (ClaimTypes.Name, usuario.Usuario.ToString ()),                  new Claim (ClaimTypes.Email, usuario.Correo.ToString ()),                  new Claim (ClaimTypes.MobilePhone, usuario.Telefono.ToString ()),                  new Claim (ClaimTypes.Role, "Rol1"),                  new Claim (ClaimTypes.Role, "Rol2"),                  } (ArrayCreationExpression)
// Entity from another assembly: ClaimTypes
%25 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Service\\JwtService.cs" :31 :27) // ClaimTypes.Name (SimpleMemberAccessExpression)
%26 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Service\\JwtService.cs" :31 :44) // Not a variable of known type: usuario
%27 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Service\\JwtService.cs" :31 :44) // usuario.Usuario (SimpleMemberAccessExpression)
%28 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Service\\JwtService.cs" :31 :44) // usuario.Usuario.ToString () (InvocationExpression)
%29 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Service\\JwtService.cs" :31 :16) // new Claim (ClaimTypes.Name, usuario.Usuario.ToString ()) (ObjectCreationExpression)
// Entity from another assembly: ClaimTypes
%30 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Service\\JwtService.cs" :32 :27) // ClaimTypes.Email (SimpleMemberAccessExpression)
%31 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Service\\JwtService.cs" :32 :45) // Not a variable of known type: usuario
%32 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Service\\JwtService.cs" :32 :45) // usuario.Correo (SimpleMemberAccessExpression)
%33 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Service\\JwtService.cs" :32 :45) // usuario.Correo.ToString () (InvocationExpression)
%34 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Service\\JwtService.cs" :32 :16) // new Claim (ClaimTypes.Email, usuario.Correo.ToString ()) (ObjectCreationExpression)
// Entity from another assembly: ClaimTypes
%35 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Service\\JwtService.cs" :33 :27) // ClaimTypes.MobilePhone (SimpleMemberAccessExpression)
%36 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Service\\JwtService.cs" :33 :51) // Not a variable of known type: usuario
%37 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Service\\JwtService.cs" :33 :51) // usuario.Telefono (SimpleMemberAccessExpression)
%38 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Service\\JwtService.cs" :33 :51) // usuario.Telefono.ToString () (InvocationExpression)
%39 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Service\\JwtService.cs" :33 :16) // new Claim (ClaimTypes.MobilePhone, usuario.Telefono.ToString ()) (ObjectCreationExpression)
// Entity from another assembly: ClaimTypes
%40 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Service\\JwtService.cs" :34 :27) // ClaimTypes.Role (SimpleMemberAccessExpression)
%41 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Service\\JwtService.cs" :34 :44) // "Rol1" (StringLiteralExpression)
%42 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Service\\JwtService.cs" :34 :16) // new Claim (ClaimTypes.Role, "Rol1") (ObjectCreationExpression)
// Entity from another assembly: ClaimTypes
%43 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Service\\JwtService.cs" :35 :27) // ClaimTypes.Role (SimpleMemberAccessExpression)
%44 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Service\\JwtService.cs" :35 :44) // "Rol2" (StringLiteralExpression)
%45 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Service\\JwtService.cs" :35 :16) // new Claim (ClaimTypes.Role, "Rol2") (ObjectCreationExpression)
%46 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Service\\JwtService.cs" :30 :26) // new ClaimsIdentity (new Claim[] {                  new Claim (ClaimTypes.Name, usuario.Usuario.ToString ()),                  new Claim (ClaimTypes.Email, usuario.Correo.ToString ()),                  new Claim (ClaimTypes.MobilePhone, usuario.Telefono.ToString ()),                  new Claim (ClaimTypes.Role, "Rol1"),                  new Claim (ClaimTypes.Role, "Rol2"),                  }) (ObjectCreationExpression)
// Entity from another assembly: DateTime
%47 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Service\\JwtService.cs" :37 :26) // DateTime.UtcNow (SimpleMemberAccessExpression)
%48 = constant 7 : i32 loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Service\\JwtService.cs" :37 :51)
%49 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Service\\JwtService.cs" :37 :26) // DateTime.UtcNow.AddDays (7) (InvocationExpression)
%50 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Service\\JwtService.cs" :38 :87) // Not a variable of known type: key
%51 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Service\\JwtService.cs" :38 :61) // new SymmetricSecurityKey (key) (ObjectCreationExpression)
// Entity from another assembly: SecurityAlgorithms
%52 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Service\\JwtService.cs" :38 :93) // SecurityAlgorithms.HmacSha256Signature (SimpleMemberAccessExpression)
%53 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Service\\JwtService.cs" :38 :37) // new SigningCredentials (new SymmetricSecurityKey (key), SecurityAlgorithms.HmacSha256Signature) (ObjectCreationExpression)
%55 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Service\\JwtService.cs" :40 :24) // Not a variable of known type: tokenHandler
%56 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Service\\JwtService.cs" :40 :50) // Not a variable of known type: tokenDescriptor
%57 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Service\\JwtService.cs" :40 :24) // tokenHandler.CreateToken (tokenDescriptor) (InvocationExpression)
%59 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Service\\JwtService.cs" :41 :12) // Not a variable of known type: usuarioResponse
%60 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Service\\JwtService.cs" :41 :12) // usuarioResponse.Token (SimpleMemberAccessExpression)
%61 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Service\\JwtService.cs" :41 :36) // Not a variable of known type: tokenHandler
%62 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Service\\JwtService.cs" :41 :61) // Not a variable of known type: token
%63 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Service\\JwtService.cs" :41 :36) // tokenHandler.WriteToken (token) (InvocationExpression)
%64 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Service\\JwtService.cs" :43 :19) // Not a variable of known type: usuarioResponse
return %64 : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Service\\JwtService.cs" :43 :12)

^3: // ExitBlock
cbde.unreachable

}
