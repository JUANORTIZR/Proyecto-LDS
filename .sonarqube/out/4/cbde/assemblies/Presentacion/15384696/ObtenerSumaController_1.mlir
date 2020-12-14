func @_Presentacion.Controllers.ObtenerSumaController.GetCantidad$string$(none) -> i32 loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ObtenerSumaController.cs" :14 :8) {
^entry (%_identificacion : none):
%0 = cbde.alloca none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ObtenerSumaController.cs" :15 :32)
cbde.store %_identificacion, %0 : memref<none> loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ObtenerSumaController.cs" :15 :32)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ObtenerSumaController.cs" :16 :27) // Not a variable of known type: _servicioService
%2 = cbde.unknown : none loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ObtenerSumaController.cs" :16 :62) // Not a variable of known type: identificacion
%3 = cbde.unknown : i32 loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ObtenerSumaController.cs" :16 :27) // _servicioService.ConsultarCantidad(identificacion) (InvocationExpression)
%4 = cbde.alloca i32 loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ObtenerSumaController.cs" :16 :16) // cantidad
cbde.store %3, %4 : memref<i32> loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ObtenerSumaController.cs" :16 :16)
%5 = cbde.load %4 : memref<i32> loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ObtenerSumaController.cs" :17 :19)
return %5 : i32 loc("F:\\Documento\\GitHub\\Proyecto-LDS\\Presentacion\\Controllers\\ObtenerSumaController.cs" :17 :12)

^1: // ExitBlock
cbde.unreachable

}
