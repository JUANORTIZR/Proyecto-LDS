func @_Presentacion.Controllers.HotelController.Post$Presentacion.Models.HotelInputModel$(none) -> none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :20 :8) {
^entry (%_hotelInput : none):
%0 = cbde.alloca none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :21 :50)
cbde.store %_hotelInput, %0 : memref<none> loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :21 :50)
br ^0

^0: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: MapearHotel
%1 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :22 :39) // Not a variable of known type: hotelInput
%2 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :22 :26) // MapearHotel (hotelInput) (InvocationExpression)
%4 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :23 :27) // Not a variable of known type: _hotelService
%5 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :23 :50) // Not a variable of known type: hotel
%6 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :23 :27) // _hotelService.Guardar (hotel) (InvocationExpression)
%8 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :24 :16) // Not a variable of known type: response
%9 = cbde.unknown : i1 loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :24 :16) // response.Error (SimpleMemberAccessExpression)
cond_br %9, ^1, ^2 loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :24 :16)

^1: // JumpBlock
%10 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :25 :16) // Identifier from another assembly: ModelState
%11 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :25 :42) // "Guardar Hotel" (StringLiteralExpression)
%12 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :25 :59) // Not a variable of known type: response
%13 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :25 :59) // response.Mensaje (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :25 :16) // ModelState.AddModelError ("Guardar Hotel", response.Mensaje) (InvocationExpression)
%15 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :26 :67) // Identifier from another assembly: ModelState
%16 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :26 :37) // new ValidationProblemDetails (ModelState) {                      Status = StatusCodes.Status400BadRequest,                  } (ObjectCreationExpression)
// Entity from another assembly: StatusCodes
%17 = constant 400 : i32 loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :27 :29)
// Entity from another assembly: BadRequest
%19 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :29 :35) // Not a variable of known type: problemDetails
%20 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :29 :23) // BadRequest (problemDetails) (InvocationExpression)
return %20 : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :29 :16)

^2: // JumpBlock
// Entity from another assembly: Ok
%21 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :31 :23) // Not a variable of known type: response
%22 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :31 :23) // response.Hotel (SimpleMemberAccessExpression)
%23 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :31 :19) // Ok (response.Hotel) (InvocationExpression)
return %23 : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :31 :12)

^3: // ExitBlock
cbde.unreachable

}
func @_Presentacion.Controllers.HotelController.MapearHotel$Presentacion.Models.HotelInputModel$(none) -> none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :34 :8) {
^entry (%_hotelInput : none):
%0 = cbde.alloca none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :34 :35)
cbde.store %_hotelInput, %0 : memref<none> loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :34 :35)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :35 :24) // new Hotel {                  Nit = hotelInput.Nit,                  Nombre = hotelInput.Nombre,                  Pais = hotelInput.Pais,                  Ciudad = hotelInput.Ciudad,                  Direccion = hotelInput.Direccion,                  Barrio = hotelInput.Barrio,                  Telefono = hotelInput.Telefono,                  CorreoElectronico = hotelInput.CorreoElectronico,                  SitioWeb = hotelInput.SitioWeb,                  CategoriaHotel = hotelInput.CategoriaHotel,                  TipoHabitacion = hotelInput.TipoHabitacion              } (ObjectCreationExpression)
%2 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :36 :22) // Not a variable of known type: hotelInput
%3 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :36 :22) // hotelInput.Nit (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :37 :25) // Not a variable of known type: hotelInput
%5 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :37 :25) // hotelInput.Nombre (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :38 :23) // Not a variable of known type: hotelInput
%7 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :38 :23) // hotelInput.Pais (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :39 :25) // Not a variable of known type: hotelInput
%9 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :39 :25) // hotelInput.Ciudad (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :40 :28) // Not a variable of known type: hotelInput
%11 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :40 :28) // hotelInput.Direccion (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :41 :25) // Not a variable of known type: hotelInput
%13 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :41 :25) // hotelInput.Barrio (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :42 :27) // Not a variable of known type: hotelInput
%15 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :42 :27) // hotelInput.Telefono (SimpleMemberAccessExpression)
%16 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :43 :36) // Not a variable of known type: hotelInput
%17 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :43 :36) // hotelInput.CorreoElectronico (SimpleMemberAccessExpression)
%18 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :44 :27) // Not a variable of known type: hotelInput
%19 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :44 :27) // hotelInput.SitioWeb (SimpleMemberAccessExpression)
%20 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :45 :33) // Not a variable of known type: hotelInput
%21 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :45 :33) // hotelInput.CategoriaHotel (SimpleMemberAccessExpression)
%22 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :46 :33) // Not a variable of known type: hotelInput
%23 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :46 :33) // hotelInput.TipoHabitacion (SimpleMemberAccessExpression)
%25 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :48 :19) // Not a variable of known type: hotel
return %25 : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :48 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function Gets(), it contains poisonous unsupported syntaxes

func @_Presentacion.Controllers.HotelController.Get$string$(none) -> none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :57 :8) {
^entry (%_nit : none):
%0 = cbde.alloca none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :58 :49)
cbde.store %_nit, %0 : memref<none> loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :58 :49)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :59 :24) // Not a variable of known type: _hotelService
%2 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :59 :50) // Not a variable of known type: nit
%3 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :59 :24) // _hotelService.BuscarxNit (nit) (InvocationExpression)
%5 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :60 :16) // Not a variable of known type: hotel
%6 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :60 :25) // null (NullLiteralExpression)
%7 = cbde.unknown : i1  loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :60 :16) // comparison of unknown type: hotel == null
cond_br %7, ^1, ^2 loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :60 :16)

^1: // JumpBlock
// Entity from another assembly: NotFound
%8 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :60 :38) // NotFound () (InvocationExpression)
return %8 : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :60 :31)

^2: // JumpBlock
%9 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :61 :53) // Not a variable of known type: hotel
%10 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :61 :33) // new HotelViewModel (hotel) (ObjectCreationExpression)
%12 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :62 :19) // Not a variable of known type: hotelViewModel
return %12 : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :62 :12)

^3: // ExitBlock
cbde.unreachable

}
func @_Presentacion.Controllers.HotelController.Put$string.Entity.Hotel$(none, none) -> none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :65 :8) {
^entry (%_nit : none, %_hotel : none):
%0 = cbde.alloca none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :66 :41)
cbde.store %_nit, %0 : memref<none> loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :66 :41)
%1 = cbde.alloca none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :66 :53)
cbde.store %_hotel, %1 : memref<none> loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :66 :53)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :67 :23) // Not a variable of known type: _hotelService
%3 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :67 :49) // Not a variable of known type: hotel
%4 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :67 :49) // hotel.Nit (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :67 :23) // _hotelService.BuscarxNit (hotel.Nit) (InvocationExpression)
%7 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :68 :16) // Not a variable of known type: _nit
%8 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :68 :24) // null (NullLiteralExpression)
%9 = cbde.unknown : i1  loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :68 :16) // comparison of unknown type: _nit == null
cond_br %9, ^1, ^2 loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :68 :16)

^1: // JumpBlock
// Entity from another assembly: BadRequest
%10 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :69 :35) // "No encontrado" (StringLiteralExpression)
%11 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :69 :23) // BadRequest ("No encontrado") (InvocationExpression)
return %11 : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :69 :16)

^2: // JumpBlock
%12 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :71 :26) // Not a variable of known type: _hotelService
%13 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :71 :51) // Not a variable of known type: hotel
%14 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :71 :26) // _hotelService.Modificar (hotel) (InvocationExpression)
// Entity from another assembly: Ok
%16 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :72 :23) // Not a variable of known type: mensaje
%17 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :72 :19) // Ok (mensaje) (InvocationExpression)
return %17 : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\HotelController.cs" :72 :12)

^3: // ExitBlock
cbde.unreachable

}
