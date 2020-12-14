π
KF:\Documento\GitHub\Proyecto-LDS\Presentacion\Configuraciones\AppSetting.cs
	namespace 	
Presentacion
 
. 
Configuraciones &
{ 
public 

class 

AppSetting 
{ 
public 
string 
Secret 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} ‘4
LF:\Documento\GitHub\Proyecto-LDS\Presentacion\Controllers\HotelController.cs
	namespace 	
Presentacion
 
. 
Controllers "
{# $
[ 
Route 

( 
$str 
) 
]  
[ 
ApiController 
] 
public 

class 
HotelController  
:! "
ControllerBase# 1
{2 3
private 
readonly 
HotelService %
_hotelService& 3
;3 4
public 
HotelController 
(   
LogisticaSinuContext  4
context5 <
)< =
{> ?
_hotelService 
= 
new 
HotelService  ,
(- .
context. 5
)5 6
;6 7
} 	
[ 	
HttpPost	 
] 
public 
ActionResult 
< 
HotelViewModel *
>* +
Post, 0
(1 2
HotelInputModel2 A

hotelInputB L
)L M
{N O
Hotel 
hotel 
= 
MapearHotel %
(& '

hotelInput' 1
)1 2
;2 3
var 
response 
= 
_hotelService (
.( )
Guardar) 0
(1 2
hotel2 7
)7 8
;8 9
if 
( 
response 
. 
Error 
) 
{  !

ModelState 
. 
AddModelError (
() *
$str* 9
,9 :
response; C
.C D
MensajeD K
)K L
;L M
var 
problemDetails "
=# $
new% ($
ValidationProblemDetails) A
(B C

ModelStateC M
)M N
{O P
Status 
= 
StatusCodes (
.( )
Status400BadRequest) <
,< =
} 
; 
return 

BadRequest !
(" #
problemDetails# 1
)1 2
;2 3
} 
return   
Ok   
(   
response   
.    
Hotel    %
)  % &
;  & '
}!! 	
private## 
Hotel## 
MapearHotel## !
(##" #
HotelInputModel### 2

hotelInput##3 =
)##= >
{##? @
var$$ 
hotel$$ 
=$$ 
new$$ 
Hotel$$ !
{$$" #
Nit%% 
=%% 

hotelInput%%  
.%%  !
Nit%%! $
,%%$ %
Nombre&& 
=&& 

hotelInput&& #
.&&# $
Nombre&&$ *
,&&* +
Pais'' 
='' 

hotelInput'' !
.''! "
Pais''" &
,''& '
Ciudad(( 
=(( 

hotelInput(( #
.((# $
Ciudad(($ *
,((* +
	Direccion)) 
=)) 

hotelInput)) &
.))& '
	Direccion))' 0
,))0 1
Barrio** 
=** 

hotelInput** #
.**# $
Barrio**$ *
,*** +
Telefono++ 
=++ 

hotelInput++ %
.++% &
Telefono++& .
,++. /
CorreoElectronico,, !
=,," #

hotelInput,,$ .
.,,. /
CorreoElectronico,,/ @
,,,@ A
SitioWeb-- 
=-- 

hotelInput-- %
.--% &
SitioWeb--& .
,--. /
CategoriaHotel.. 
=..  

hotelInput..! +
...+ ,
CategoriaHotel.., :
,..: ;
TipoHabitacion// 
=//  

hotelInput//! +
.//+ ,
TipoHabitacion//, :
}00 
;00 
return11 
hotel11 
;11 
}22 	
[44 	
HttpGet44	 
]44 
public55 
IEnumerable55 
<55 
HotelViewModel55 )
>55) *
Gets55+ /
(550 1
)551 2
{553 4
var66 
hoteles66 
=66 
_hotelService66 '
.66' (
	Consultar66( 1
(662 3
)663 4
.664 5
Hoteles665 <
.66< =
Select66= C
(66D E
p66E F
=>66G I
new66J M
HotelViewModel66N \
(66] ^
p66^ _
)66_ `
)66` a
;66a b
return77 
hoteles77 
;77 
}88 	
[:: 	
HttpGet::	 
(:: 
$str:: 
):: 
]:: 
public;; 
ActionResult;; 
<;; 
HotelViewModel;; *
>;;* +
Get;;, /
(;;0 1
string;;1 7
nit;;8 ;
);;; <
{;;= >
var<< 
hotel<< 
=<< 
_hotelService<< %
.<<% &

BuscarxNit<<& 0
(<<1 2
nit<<2 5
)<<5 6
;<<6 7
if== 
(== 
hotel== 
==== 
null== 
)== 
return== %
NotFound==& .
(==/ 0
)==0 1
;==1 2
var>> 
hotelViewModel>> 
=>>  
new>>! $
HotelViewModel>>% 3
(>>4 5
hotel>>5 :
)>>: ;
;>>; <
return?? 
hotelViewModel?? !
;??! "
}@@ 	
[BB 	
HttpPutBB	 
(BB 
$strBB 
)BB 
]BB 
publicCC 
ActionResultCC 
<CC 
stringCC "
>CC" #
PutCC$ '
(CC( )
stringCC) /
nitCC0 3
,CC3 4
HotelCC5 :
hotelCC; @
)CC@ A
{CCB C
varDD 
_nitDD 
=DD 
_hotelServiceDD $
.DD$ %

BuscarxNitDD% /
(DD0 1
hotelDD1 6
.DD6 7
NitDD7 :
)DD: ;
;DD; <
ifEE 
(EE 
_nitEE 
==EE 
nullEE 
)EE 
{EE 
returnFF 

BadRequestFF !
(FF" #
$strFF# 2
)FF2 3
;FF3 4
}GG 
varHH 
mensajeHH 
=HH 
_hotelServiceHH '
.HH' (
	ModificarHH( 1
(HH2 3
hotelHH3 8
)HH8 9
;HH9 :
returnII 
OkII 
(II 
mensajeII 
)II 
;II  
}JJ 	
}LL 
}MM Ç#
LF:\Documento\GitHub\Proyecto-LDS\Presentacion\Controllers\LoginController.cs
	namespace 	
Presentacion
 
. 
Controllers "
{# $
[ 
	Authorize 
] 
[ 
ApiController 
] 
[ 
Route 

( 
$str 
) 
]  
public 

class 
LoginController  
:! "
ControllerBase# 1
{2 3
private 

JwtService 
_jwtService &
;& '
private 
UserService 
_userService (
;( )
private 
readonly  
LogisticaSinuContext -
_context. 6
;6 7
public 
LoginController 
(   
LogisticaSinuContext  4
context5 <
,< =
IOptions> F
<F G

AppSettingG Q
>Q R
appSettingsS ^
)^ _
{` a
_context 
= 
context 
; 
var 
admin 
= 
_context  
.  !
Users! &
.& '
Find' +
(, -
$str- 4
)4 5
;5 6
if 
( 
admin 
== 
null 
) 
{  
_context 
. 
Users 
. 
Add "
(# $
new$ '
Entity( .
.. /
User/ 3
(4 5
)5 6
{7 8
Usuario 
=  !
$str" )
,) *
Identificacion &
=' (
$str) .
,. /
Password  
=! "
$str# *
,* +
Estado 
=  
$str! )
,) *
PrimerNombre $
=% &
$str' 5
,5 6
PrimerApellido &
=' (
$str) 8
,8 9
Telefono    
=  ! "
$str  # 0
,  0 1
Tipo!! 
=!! 
$str!! &
,!!& '
Correo"" 
=""  
$str""! 2
}## 
)## 
;## 
var%% 
i%% 
=%% 
_context%%  
.%%  !
SaveChanges%%! ,
(%%- .
)%%. /
;%%/ 0
}&& 
_jwtService'' 
='' 
new'' 

JwtService'' (
('') *
appSettings''* 5
)''5 6
;''6 7
_userService(( 
=(( 
new(( 
UserService(( *
(((+ ,
context((, 3
)((3 4
;((4 5
})) 	
[++ 	
AllowAnonymous++	 
]++ 
[,, 	
HttpPost,,	 
(,, 
),, 
],, 
public-- 
IActionResult-- 
Login-- "
(--# $
LoginInputModel--$ 3
model--4 9
)--9 :
{--; <
var.. 
user.. 
=.. 
_userService.. #
...# $
ValidarUser..$ /
(..0 1
model..1 6
...6 7
Usuario..7 >
,..> ?
model..@ E
...E F
Password..F N
)..N O
;..O P
if00 
(00 
user00 
==00 
null00 
)00 
{00 

ModelState11 
.11 
AddModelError11 (
(11) *
$str11* ;
,11; <
$str11= `
)11` a
;11a b
var22 
problemDetails22 "
=22# $
new22% ($
ValidationProblemDetails22) A
(22B C

ModelState22C M
)22M N
{22O P
Status33 
=33 
StatusCodes33 (
.33( )
Status400BadRequest33) <
,33< =
}44 
;44 
return55 

BadRequest55 !
(55" #
problemDetails55# 1
)551 2
;552 3
}66 
var77 
response77 
=77 
_jwtService77 &
.77& '
GenerarToken77' 3
(774 5
user775 9
)779 :
;77: ;
return99 
Ok99 
(99 
response99 
)99  
;99  !
}:: 	
}<< 
}== êN
YF:\Documento\GitHub\Proyecto-LDS\Presentacion\Controllers\MovilidadAcademicaController.cs
	namespace 	
Presentacion
 
. 
Controllers "
{# $
[ 
Route 

( 
$str 
) 
]  
[ 
ApiController 
] 
public 

class (
MovilidadAcademicaController -
:. /
ControllerBase0 >
{? @
private 
readonly %
MovilidadAcademicaService 2
_movilidadService3 D
;D E
private 
readonly 
IHubContext $
<$ %
	SignalHub% .
>. /
_hubContext0 ;
;; <
public (
MovilidadAcademicaController +
(, - 
LogisticaSinuContext- A
contextB I
,I J
IHubContextK V
<V W
	SignalHubW `
>` a

hubContextb l
)l m
{n o
_movilidadService 
= 
new  #%
MovilidadAcademicaService$ =
(> ?
context? F
)F G
;G H
_hubContext 
= 

hubContext $
;$ %
} 	
[ 	
HttpPost	 
] 
public 
async 
Task 
< 
ActionResult &
<& ''
MovilidadAcademicaViewModel' B
>B C
>C D
PostE I
(J K(
MovilidadAcademicaInputModelK g
movilidadInputh v
)v w
{x y
MovilidadAcademica 
	movilidad (
=) *
MapearUsuario+ 8
(9 :
movilidadInput: H
)H I
;I J
var 
response 
= 
_movilidadService ,
., -
Guardar- 4
(5 6
	movilidad6 ?
)? @
;@ A
if 
( 
response 
. 
Error 
) 
{  !

ModelState 
. 
AddModelError (
() *
$str* <
,< =
response> F
.F G
MensajeG N
)N O
;O P
var 
problemDetails "
=# $
new% ($
ValidationProblemDetails) A
(B C

ModelStateC M
)M N
{O P
Status   
=   
StatusCodes   (
.  ( )
Status400BadRequest  ) <
,  < =
}!! 
;!! 
return"" 

BadRequest"" !
(""" #
problemDetails""# 1
)""1 2
;""2 3
}## 
var$$ 
movilidadView$$ 
=$$ 
new$$  #'
MovilidadAcademicaViewModel$$$ ?
($$@ A
response$$A I
.$$I J
	Movilidad$$J S
)$$S T
;$$T U
await%% 
_hubContext%% 
.%% 
Clients%% %
.%%% &
All%%& )
.%%) *
	SendAsync%%* 3
(%%4 5
$str%%5 J
,%%J K
movilidadView%%L Y
)%%Y Z
;%%Z [
return&& 
Ok&& 
(&& 
movilidadView&& $
)&&$ %
;&&% &
}'' 	
private)) 
MovilidadAcademica)) "
MapearUsuario))# 0
())1 2(
MovilidadAcademicaInputModel))2 N
movilidadInput))O ]
)))] ^
{))_ `
var** 
	movilidad** 
=** 
new** 
MovilidadAcademica**  2
{**3 4
IdMovilidad++ 
=++ 
movilidadInput++ ,
.++, -
IdMovilidad++- 8
,++8 9
	IdCliente,, 
=,, 
movilidadInput,, *
.,,* +
	IdCliente,,+ 4
,,,4 5
NombreCliente-- 
=-- 
movilidadInput--  .
.--. /
NombreCliente--/ <
,--< =
Correo.. 
=.. 
movilidadInput.. '
...' (
Correo..( .
,... /
FechaEvento// 
=// 
movilidadInput// ,
.//, -
FechaEvento//- 8
,//8 9
FechaSolicitud00 
=00  
movilidadInput00! /
.00/ 0
FechaSolicitud000 >
,00> ?
Destino11 
=11 
movilidadInput11 (
.11( )
Destino11) 0
,110 1
NocheAlojamiento22  
=22! "
movilidadInput22# 1
.221 2
NocheAlojamiento222 B
,22B C
TipoAcomodacion33 
=33  !
movilidadInput33" 0
.330 1
TipoAcomodacion331 @
,33@ A

Transporte44 
=44 
movilidadInput44 +
.44+ ,

Transporte44, 6
,446 7
Alimentacion55 
=55 
movilidadInput55 -
.55- .
Alimentacion55. :
,55: ;
AcompanamientoGuia66 "
=66# $
movilidadInput66% 3
.663 4
AcompanamientoGuia664 F
,66F G
SeguroViaje77 
=77 
movilidadInput77 ,
.77, -
SeguroViaje77- 8
,778 9
OrganizacionAjenda88 "
=88# $
movilidadInput88% 3
.883 4
OrganizacionAjenda884 F
,88F G
VisitaTecnica99 
=99 
movilidadInput99  .
.99. /
VisitaTecnica99/ <
,99< =
CostoEntrada:: 
=:: 
movilidadInput:: -
.::- .
CostoEntrada::. :
,::: ;
Objervacion;; 
=;; 
movilidadInput;; ,
.;;, -
Objervacion;;- 8
,;;8 9
	TipoHotel<< 
=<< 
movilidadInput<< *
.<<* +
	TipoHotel<<+ 4
,<<4 5

Refrigerio== 
=== 
movilidadInput== +
.==+ ,

Refrigerio==, 6
,==6 7
Estado>> 
=>> 
$str>> &
}?? 
;?? 
return@@ 
	movilidad@@ 
;@@ 
}AA 	
[CC 	
HttpGetCC	 
]CC 
publicDD 
IEnumerableDD 
<DD '
MovilidadAcademicaViewModelDD 6
>DD6 7
GetsDD8 <
(DD= >
)DD> ?
{DD@ A
varEE 
	movilidadEE 
=EE 
_movilidadServiceEE -
.EE- .
	ConsultarEE. 7
(EE8 9
)EE9 :
.EE: ;
MovilidadesEE; F
.EEF G
SelectEEG M
(EEN O
MEEO P
=>EEQ S
newEET W'
MovilidadAcademicaViewModelEEX s
(EEt u
MEEu v
)EEv w
)EEw x
;EEx y
returnFF 
	movilidadFF 
;FF 
}GG 	
[II 	
HttpGetII	 
(II 
$strII $
)II$ %
]II% &
publicJJ 
ActionResultJJ 
<JJ '
MovilidadAcademicaViewModelJJ 7
>JJ7 8
GetJJ9 <
(JJ= >
stringJJ> D
identificacionJJE S
)JJS T
{JJU V
varKK 
usuarioKK 
=KK 
_movilidadServiceKK +
.KK+ ,!
BuscarxIdentificacionKK, A
(KKB C
identificacionKKC Q
)KKQ R
;KKR S
ifLL 
(LL 
usuarioLL 
==LL 
nullLL 
)LL  
returnLL! '
NotFoundLL( 0
(LL1 2
)LL2 3
;LL3 4
varMM 
usuarioViewModelMM  
=MM! "
newMM# &'
MovilidadAcademicaViewModelMM' B
(MMC D
usuarioMMD K
)MMK L
;MML M
returnNN 
usuarioViewModelNN #
;NN# $
}OO 	
[QQ 	
HttpPutQQ	 
(QQ 
$strQQ $
)QQ$ %
]QQ% &
publicRR 
ActionResultRR 
<RR '
MovilidadAcademicaViewModelRR 7
>RR7 8
PutRR9 <
(RR= >
stringRR> D
identificacionRRE S
,RRS T
MovilidadAcademicaRRU g
	movilidadRRh q
)RRq r
{RRs t
varSS 
idSS 
=SS 
_movilidadServiceSS &
.SS& '!
BuscarxIdentificacionSS' <
(SS= >
	movilidadSS> G
.SSG H
IdMovilidadSSH S
)SSS T
;SST U
ifTT 
(TT 
idTT 
==TT 
nullTT 
)TT 
{TT 
returnUU 

BadRequestUU !
(UU" #
$strUU# 2
)UU2 3
;UU3 4
}VV 
varWW 
responseWW 
=WW 
_movilidadServiceWW ,
.WW, -
	ModificarWW- 6
(WW7 8
	movilidadWW8 A
)WWA B
;WWB C
ifXX 
(XX 
responseXX 
.XX 
ErrorXX 
)XX 
{XX  !

ModelStateYY 
.YY 
AddModelErrorYY (
(YY) *
$strYY* >
,YY> ?
responseYY@ H
.YYH I
MensajeYYI P
)YYP Q
;YYQ R
varZZ 
problemDetailsZZ "
=ZZ# $
newZZ% ($
ValidationProblemDetailsZZ) A
(ZZB C

ModelStateZZC M
)ZZM N
{ZZO P
Status[[ 
=[[ 
StatusCodes[[ (
.[[( )
Status400BadRequest[[) <
,[[< =
}\\ 
;\\ 
return]] 

BadRequest]] !
(]]" #
problemDetails]]# 1
)]]1 2
;]]2 3
}^^ 
return__ 
Ok__ 
(__ 
response__ 
.__  
	Movilidad__  )
)__) *
;__* +
}`` 	
}aa 
}bb ¡
RF:\Documento\GitHub\Proyecto-LDS\Presentacion\Controllers\ObtenerSumaController.cs
	namespace 	
Presentacion
 
. 
Controllers "
{# $
[ 
Route 

( 
$str 
) 
]  
[ 
ApiController 
] 
public		 

class		 !
ObtenerSumaController		 &
:		' (
ControllerBase		) 7
{		9 :
private

 
readonly

 
ServicioService

 ,
_servicioService

- =
;

= >
public !
ObtenerSumaController (
() * 
LogisticaSinuContext* >
context? F
)F G
{H I
_servicioService  
=! "
new# &
ServicioService' 6
(7 8
context8 ?
)? @
;@ A
} 
[ 	
HttpGet	 
( 
$str #
)# $
]$ %
public 
int 
GetCantidad 
(  
string  &
identificacion' 5
)5 6
{7 8
var 
cantidad 
= 
_servicioService +
.+ ,
ConsultarCantidad, =
(= >
identificacion> L
)L M
;M N
return 
cantidad 
; 
} 	
} 
} ê6
RF:\Documento\GitHub\Proyecto-LDS\Presentacion\Controllers\RestauranteController.cs
	namespace 	
Presentacion
 
. 
Controllers "
{ 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class !
RestauranteController &
:& '
ControllerBase' 5
{ 
private 
readonly 
RestauranteService +
_restauranteService, ?
;? @
public !
RestauranteController $
($ % 
LogisticaSinuContext% 9
context: A
)A B
{ 	
_restauranteService 
=  !
new" %
RestauranteService& 8
(8 9
context9 @
)@ A
;A B
} 	
[	 

HttpPost
 
] 
public 
ActionResult 
<  
RestauranteViewModel 0
>0 1
Post2 6
(6 7!
RestauranteInputModel7 L
restauranteInputM ]
)] ^
{ 	
Restaurante 
restaurante "
=# $
MapearRestaurante% 6
(6 7
restauranteInput7 G
)G H
;H I
var 
response 
= 
_restauranteService .
.. /
Guardar/ 6
(6 7
restaurante7 B
)B C
;C D
if 
( 
response 
. 
Error 
) 
{ 

ModelState   
.   
AddModelError   (
(  ) *
$str  * ?
,  ? @
response  A I
.  I J
Mensaje  J Q
)  Q R
;  R S
var!! 
problemDetails!! "
=!!# $
new!!% ($
ValidationProblemDetails!!) A
(!!B C

ModelState!!C M
)!!M N
{!!O P
Status"" 
="" 
StatusCodes"" (
.""( )
Status400BadRequest"") <
,""< =
}## 
;## 
return$$ 

BadRequest$$ !
($$! "
problemDetails$$" 0
)$$0 1
;$$1 2
}%% 
return&& 
Ok&& 
(&& 
response&& 
.&& 
Restaurante&& *
)&&* +
;&&+ ,
}'' 	
private)) 
Restaurante)) 
MapearRestaurante)) -
())- .!
RestauranteInputModel)). C
restauranteInput))D T
)))T U
{** 	
var++ 
restaurante++ 
=++ 
new++ !
Restaurante++" -
{,, 
Nit-- 
=-- 
restauranteInput-- &
.--& '
Nit--' *
,--* +
Nombre.. 
=.. 
restauranteInput.. )
...) *
Nombre..* 0
,..0 1
Pais// 
=// 
restauranteInput// '
.//' (
Pais//( ,
,//, -
Ciudad00 
=00 
restauranteInput00 )
.00) *
Ciudad00* 0
,000 1
	Direccion11 
=11 
restauranteInput11 ,
.11, -
	Direccion11- 6
,116 7
Barrio22 
=22 
restauranteInput22 )
.22) *
Barrio22* 0
,220 1
Telefono33 
=33 
restauranteInput33 +
.33+ ,
Telefono33, 4
,334 5
CorreoElectronico44 !
=44" #
restauranteInput44$ 4
.444 5
CorreoElectronico445 F
,44F G
SitioWeb55 
=55 
restauranteInput55 +
.55+ ,
SitioWeb55, 4
,554 5
ClaseComida66 
=66 
restauranteInput66 ,
.66, -
ClaseComida66- 8
}77 
;77 
return88 
restaurante88 
;88 
}99 	
[;; 	
HttpGet;;	 
];; 
public<< 
IEnumerable<< 
<<<  
RestauranteViewModel<< /
><</ 0
Gets<<1 5
(<<5 6
)<<6 7
{== 	
var>> 
restaurantes>> 
=>> 
_restauranteService>> 2
.>>2 3
	Consultar>>3 <
(>>< =
)>>= >
.>>> ?
Restaurantes>>? K
.>>K L
Select>>L R
(>>R S
r>>S T
=>>>T V
new>>W Z 
RestauranteViewModel>>[ o
(>>o p
r>>p q
)>>q r
)>>r s
;>>s t
return?? 
restaurantes?? 
;??  
}@@ 	
[AA 	
HttpGetAA	 
(AA 
$strAA 
)AA 
]AA 
publicBB 
ActionResultBB 
<BB  
RestauranteViewModelBB 0
>BB0 1
GetBB2 5
(BB5 6
stringBB6 <
nitBB= @
)BB@ A
{CC 	
varDD 
restauranteDD 
=DD 
_restauranteServiceDD 1
.DD1 2

BuscarxNitDD2 <
(DD< =
nitDD= @
)DD@ A
;DDA B
ifEE 
(EE 
restauranteEE 
==EE 
nullEE #
)EE# $
returnEE% +
NotFoundEE, 4
(EE4 5
)EE5 6
;EE6 7
varFF  
RestauranteViewModelFF $
=FF% &
newFF' * 
RestauranteViewModelFF+ ?
(FF? @
restauranteFF@ K
)FFK L
;FFL M
returnGG  
RestauranteViewModelGG '
;GG' (
}HH 	
[JJ 	
HttpPutJJ	 
(JJ 
$strJJ 
)JJ 
]JJ 
publicKK 
ActionResultKK 
<KK 
stringKK "
>KK" #
PutKK$ '
(KK' (
stringKK( .
nitKK/ 2
,KK2 3
RestauranteKK4 ?
restauranteKK@ K
)KKK L
{LL 	
varMM 
_nitMM 
=MM 
_restauranteServiceMM )
.MM) *

BuscarxNitMM* 4
(MM4 5
restauranteMM5 @
.MM@ A
NitMMA D
)MMD E
;MME F
ifNN 
(NN 
_nitNN 
==NN 
nullNN 
)NN 
{NN 
returnOO 

BadRequestOO !
(OO! "
$strOO" 1
)OO1 2
;OO2 3
}PP 
varQQ 
mensajeQQ 
=QQ 
_restauranteServiceQQ +
.QQ+ ,
	ModificarQQ, 5
(QQ5 6
restauranteQQ6 A
)QQA B
;QQB C
returnRR 
OkRR 
(RR 
mensajeRR 
)RR 
;RR 
}SS 	
}UU 
}VV ≠E
OF:\Documento\GitHub\Proyecto-LDS\Presentacion\Controllers\ServicioController.cs
	namespace 	
Presentacion
 
. 
Controllers "
{ 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class 
ServicioController #
:# $
ControllerBase$ 2
{ 
private 
readonly 
ServicioService (
_servicioService) 9
;9 :
private 
readonly 
IHubContext $
<$ %
	SignalHub% .
>. /
_hubContext0 ;
;; <
public 
ServicioController !
(! " 
LogisticaSinuContext" 6
context7 >
,> ?
IHubContext@ K
<K L
	SignalHubL U
>U V

hubContextW a
)a b
{ 	
_servicioService 
= 
new "
ServicioService# 2
(2 3
context3 :
): ;
;; <
_hubContext 
= 

hubContext $
;$ %
} 	
[ 	
HttpPost	 
] 
public 
async 
Task 
< 
ActionResult &
<& '
ServcioViewModel' 7
>7 8
>8 9
Post: >
(? @
ServicioInputModel@ R
servicioInputS `
)` a
{b c
Servicio   
servicio   
=   
MapearUsuario    -
(  . /
servicioInput  / <
)  < =
;  = >
var!! 
response!! 
=!! 
_servicioService!! +
.!!+ ,
Guardar!!, 3
(!!4 5
servicio!!5 =
)!!= >
;!!> ?
if"" 
("" 
response"" 
."" 
Error"" 
)"" 
{""  !

ModelState## 
.## 
AddModelError## (
(##) *
$str##* <
,##< =
response##> F
.##F G
Mensaje##G N
)##N O
;##O P
var$$ 
problemDetails$$ "
=$$# $
new$$% ($
ValidationProblemDetails$$) A
($$B C

ModelState$$C M
)$$M N
{$$O P
Status%% 
=%% 
StatusCodes%% (
.%%( )
Status400BadRequest%%) <
,%%< =
}&& 
;&& 
return'' 

BadRequest'' !
(''" #
problemDetails''# 1
)''1 2
;''2 3
}(( 
var)) 
servicioView)) 
=)) 
new)) "
ServcioViewModel))# 3
())3 4
response))4 <
.))< =
Servicio))= E
)))E F
;))F G
await** 
_hubContext** 
.** 
Clients** %
.**% &
All**& )
.**) *
	SendAsync*** 3
(**3 4
$str**4 H
,**H I
servicioView**J V
)**V W
;**W X
return++ 
Ok++ 
(++ 
servicioView++ #
)++# $
;++$ %
},, 	
private.. 
Servicio.. 
MapearUsuario.. &
(..' (
ServicioInputModel..( :
servicioInput..; H
)..H I
{..J K
var// 
servicio// 
=// 
new// 
Servicio// '
{//( )

IdServicio00 
=00 
servicioInput00 *
.00* +

IdServicio00+ 5
,005 6
	IdCliente11 
=11 
servicioInput11 )
.11) *
	IdCliente11* 3
,113 4
NombreCliente22 
=22 
servicioInput22  -
.22- .
NombreCliente22. ;
,22; <
FechaEvento33 
=33 
servicioInput33 +
.33+ ,
FechaEvento33, 7
,337 8
FechaSolicitud44 
=44  
servicioInput44! .
.44. /
FechaSolicitud44/ =
,44= >
TipoServicio55 
=55 
servicioInput55 ,
.55, -
TipoServicio55- 9
,559 :
Descripcion66 
=66 
servicioInput66 +
.66+ ,
Descripcion66, 7
,667 8

Refrigerio77 
=77 
servicioInput77 *
.77* +

Refrigerio77+ 5
,775 6
Ponentes88 
=88 
servicioInput88 (
.88( )
Ponentes88) 1
,881 2
LogisticaCompleta99 !
=99" #
servicioInput99$ 1
.991 2
LogisticaCompleta992 C
,99C D
Correo:: 
=:: 
servicioInput:: &
.::& '
Correo::' -
,::- .
Observacion;; 
=;; 
servicioInput;; +
.;;+ ,
Observacion;;, 7
,;;7 8
Estado<< 
=<< 
$str<< &
}== 
;== 
return>> 
servicio>> 
;>> 
}?? 	
[AA 	
HttpGetAA	 
]AA 
publicBB 
IEnumerableBB 
<BB 
ServcioViewModelBB +
>BB+ ,
GetsBB- 1
(BB2 3
)BB3 4
{BB5 6
varCC 
servicioCC 
=CC 
_servicioServiceCC +
.CC+ ,
	ConsultarCC, 5
(CC6 7
)CC7 8
.CC8 9
	ServiciosCC9 B
.CCB C
SelectCCC I
(CCJ K
pCCK L
=>CCM O
newCCP S
ServcioViewModelCCT d
(CCe f
pCCf g
)CCg h
)CCh i
;CCi j
returnDD 
servicioDD 
;DD 
}EE 	
[II 	
HttpGetII	 
(II 
$strII $
)II$ %
]II% &
publicJJ 
ActionResultJJ 
<JJ 
ServcioViewModelJJ ,
>JJ, -
GetJJ. 1
(JJ2 3
stringJJ3 9
identificacionJJ: H
)JJH I
{JJJ K
varKK 
usuarioKK 
=KK 
_servicioServiceKK *
.KK* +!
BuscarxIdentificacionKK+ @
(KKA B
identificacionKKB P
)KKP Q
;KKQ R
ifLL 
(LL 
usuarioLL 
==LL 
nullLL 
)LL  
returnLL! '
NotFoundLL( 0
(LL1 2
)LL2 3
;LL3 4
varMM 
usuarioViewModelMM  
=MM! "
newMM# &
ServcioViewModelMM' 7
(MM8 9
usuarioMM9 @
)MM@ A
;MMA B
returnNN 
usuarioViewModelNN #
;NN# $
}OO 	
[QQ	 

HttpPutQQ
 
(QQ 
$strQQ %
)QQ% &
]QQ& '
publicRR 
ActionResultRR 
<RR 
ServcioViewModelRR ,
>RR, -
PutRR. 1
(RR2 3
stringRR3 9
identificacionRR: H
,RRH I
ServicioRRJ R
servicioRRS [
)RR[ \
{RR] ^
varSS 
idSS 
=SS 
_servicioServiceSS %
.SS% &!
BuscarxIdentificacionSS& ;
(SS< =
servicioSS= E
.SSE F

IdServicioSSF P
)SSP Q
;SSQ R
ifTT 
(TT 
idTT 
==TT 
nullTT 
)TT 
{TT 
returnUU 

BadRequestUU !
(UU" #
$strUU# 2
)UU2 3
;UU3 4
}VV 
varWW 
responseWW 
=WW 
_servicioServiceWW +
.WW+ ,
	ModificarWW, 5
(WW6 7
servicioWW7 ?
)WW? @
;WW@ A
ifXX 
(XX 
responseXX 
.XX 
ErrorXX 
)XX 
{XX 

ModelStateYY 
.YY 
AddModelErrorYY (
(YY) *
$strYY* >
,YY> ?
responseYY@ H
.YYH I
MensajeYYI P
)YYP Q
;YYQ R
varZZ 
problemDetailsZZ "
=ZZ# $
newZZ% ($
ValidationProblemDetailsZZ) A
(ZZB C

ModelStateZZC M
)ZZM N
{ZZO P
Status[[ 
=[[ 
StatusCodes[[ (
.[[( )
Status400BadRequest[[) <
,[[< =
}\\ 
;\\ 
return]] 

BadRequest]] !
(]]" #
problemDetails]]# 1
)]]1 2
;]]2 3
}^^ 
return`` 
Ok`` 
(`` 
response`` 
.``  
Servicio``  (
)``( )
;``) *
}aa 	
}bb 
}cc ∞7
QF:\Documento\GitHub\Proyecto-LDS\Presentacion\Controllers\TransporteController.cs
	namespace 	
Presentacion
 
. 
Controllers "
{ 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class  
TransporteController %
:% &
ControllerBase& 4
{ 
private 
readonly 
TransporteService *
_transporteService+ =
;= >
public  
TransporteController #
(# $ 
LogisticaSinuContext$ 8
context9 @
)@ A
{ 	
_transporteService 
=  
new! $
TransporteService% 6
(6 7
context7 >
)> ?
;? @
} 	
[ 	
HttpPost	 
] 
public 
ActionResult 
< 
TransporteViewModel /
>/ 0
Post1 5
(5 6 
TrasnporteInputModel6 J 
trasnporteInputModelL `
)` a
{ 	

Transporte 

transporte  
=! "
MapearTransporte# 3
(3 4 
trasnporteInputModel4 H
)H I
;I J
var 
response 
= 
_transporteService -
.- .
Guardar. 5
(5 6

transporte6 @
)@ A
;A B
if   
(   
response   
.   
Error   
)   
{!! 

ModelState"" 
."" 
AddModelError"" '
(""( )
$str"") =
,""= >
response""? G
.""G H
Mensaje""H O
)""O P
;""P Q
var## 
problemDetails## "
=### $
new##% ($
ValidationProblemDetails##) A
(##B C

ModelState##C M
)##M N
{##O P
Status$$ 
=$$ 
StatusCodes$$ (
.$$( )
Status400BadRequest$$) <
,$$< =
}%% 
;%% 
return&& 

BadRequest&& !
(&&! "
problemDetails&&" 0
)&&0 1
;&&1 2
}'' 
return(( 
Ok(( 
((( 
response(( 
.(( 

Transporte(( )
)(() *
;((* +
})) 	
private++ 

Transporte++ 
MapearTransporte++ +
(+++ , 
TrasnporteInputModel++, @ 
trasnporteInputModel++A U
)++U V
{,, 	
var-- 

transporte-- 
=-- 
new--  

Transporte--! +
{.. 
Nit// 
=//  
trasnporteInputModel// *
.//* +
Nit//+ .
,//. /
Nombre00 
=00  
trasnporteInputModel00 -
.00- .
Nombre00. 4
,004 5
Pais11 
=11  
trasnporteInputModel11 +
.11+ ,
Pais11, 0
,110 1
Ciudad22 
=22  
trasnporteInputModel22 -
.22- .
Ciudad22. 4
,224 5
	Direccion33 
=33  
trasnporteInputModel33 0
.330 1
	Direccion331 :
,33: ;
Barrio44 
=44  
trasnporteInputModel44 -
.44- .
Barrio44. 4
,444 5
Telefono55 
=55  
trasnporteInputModel55 /
.55/ 0
Telefono550 8
,558 9
CorreoElectronico66 !
=66" # 
trasnporteInputModel66$ 8
.668 9
CorreoElectronico669 J
,66J K
SitioWeb77 
=77  
trasnporteInputModel77 /
.77/ 0
SitioWeb770 8
,778 9
ClaseTransporte88 
=88   
trasnporteInputModel88  4
.884 5
ClaseTransporte885 D
,88D E
CapacidadAsientos99 !
=99! " 
trasnporteInputModel99" 6
.996 7
CapacidadAsientos997 H
}:: 
;:: 
return;; 

transporte;; 
;;; 
}<< 	
[>>	 

HttpGet>>
 
]>> 
public?? 
IEnumerable?? 
<?? 
TransporteViewModel?? .
>??. /
Gets??0 4
(??4 5
)??5 6
{@@ 	
varAA 
transportesAA 
=AA 
_transporteServiceAA 0
.AA0 1
	ConsultarAA1 :
(AA: ;
)AA; <
.AA< =
TransportesAA= H
.AAH I
SelectAAI O
(AAO P
tAAP Q
=>AAQ S
newAAT W
TransporteViewModelAAX k
(AAk l
tAAl m
)AAm n
)AAn o
;AAo p
returnBB 
transportesBB 
;BB 
}CC 	
[DD 	
HttpGetDD	 
(DD 
$strDD 
)DD 
]DD 
publicEE 
ActionResultEE 
<EE 
TransporteViewModelEE /
>EE/ 0
GetEE1 4
(EE4 5
stringEE5 ;
nitEE< ?
)EE? @
{FF 	
varGG 

transporteGG 
=GG 
_transporteServiceGG /
.GG/ 0

BuscarxNitGG0 :
(GG: ;
nitGG; >
)GG> ?
;GG? @
ifHH 
(HH 

transporteHH 
==HH 
nullHH "
)HH" #
returnHH$ *
NotFoundHH+ 3
(HH3 4
)HH4 5
;HH5 6
varII 
TransporteViewModelII #
=II$ %
newII& )
TransporteViewModelII* =
(II= >

transporteII> H
)IIH I
;III J
returnJJ 
TransporteViewModelJJ &
;JJ& '
}KK 	
[MM 	
HttpPutMM	 
(MM 
$strMM 
)MM 
]MM 
publicNN 
ActionResultNN 
<NN 
stringNN "
>NN" #
PutNN$ '
(NN' (
stringNN( .
nitNN/ 2
,NN2 3

TransporteNN4 >

transporteNN? I
)NNI J
{OO 	
varPP 
_nitPP 
=PP 
_transporteServicePP (
.PP( )

BuscarxNitPP) 3
(PP3 4

transportePP4 >
.PP> ?
NitPP? B
)PPB C
;PPC D
ifQQ 
(QQ 
_nitQQ 
==QQ 
nullQQ 
)QQ 
{QQ 
returnRR 

BadRequestRR !
(RR! "
$strRR" 1
)RR1 2
;RR2 3
}SS 
varTT 
mensajeTT 
=TT 
_transporteServiceTT *
.TT* +
	ModificarTT+ 4
(TT4 5

transporteTT5 ?
)TT? @
;TT@ A
returnUU 
OkUU 
(UU 
mensajeUU 
)UU 
;UU 
}VV 	
}YY 
}ZZ ◊>
NF:\Documento\GitHub\Proyecto-LDS\Presentacion\Controllers\UsuarioController.cs
	namespace 	
Presentacion
 
. 
Controllers "
{# $
[ 
Route 

( 
$str 
) 
]  
[ 
ApiController 
] 
public 

class 
UsuarioController "
:# $
ControllerBase% 3
{4 5
private 
readonly 
UsuarioService '
_usuarioService( 7
;7 8
public 
UsuarioController  
(! " 
LogisticaSinuContext" 6
context7 >
)> ?
{@ A
_usuarioService 
= 
new !
UsuarioService" 0
(1 2
context2 9
)9 :
;: ;
} 	
[ 	
HttpPost	 
] 
public 
ActionResult 
< 
LoginViewModel *
>* +
Post, 0
(1 2
LoginInputModel2 A
UsuarioInputB N
)N O
{P Q
User 
usuario 
= 
MapearUsuario (
() *
UsuarioInput* 6
)6 7
;7 8
var 
response 
= 
_usuarioService *
.* +
Guardar+ 2
(3 4
usuario4 ;
); <
;< =
if 
( 
response 
. 
Error 
) 
{  !

ModelState 
. 
AddModelError (
() *
$str* ;
,; <
response= E
.E F
MensajeF M
)M N
;N O
var 
problemDetails "
=# $
new% ($
ValidationProblemDetails) A
(B C

ModelStateC M
)M N
{O P
Status 
= 
StatusCodes (
.( )
Status400BadRequest) <
,< =
} 
; 
return 

BadRequest !
(" #
problemDetails# 1
)1 2
;2 3
}   
return!! 
Ok!! 
(!! 
response!! 
.!!  
Usuario!!  '
)!!' (
;!!( )
}"" 	
private$$ 
User$$ 
MapearUsuario$$ "
($$# $
LoginInputModel$$$ 3
usuarioInput$$4 @
)$$@ A
{$$B C
var%% 
usuario%% 
=%% 
new%% 
User%% "
{%%# $
Identificacion&& 
=&&  
usuarioInput&&! -
.&&- .
Identificacion&&. <
,&&< =
PrimerNombre'' 
='' 
usuarioInput'' +
.''+ ,
PrimerNombre'', 8
,''8 9
SegundoNombre(( 
=(( 
usuarioInput((  ,
.((, -
SegundoNombre((- :
,((: ;
PrimerApellido)) 
=))  
usuarioInput))! -
.))- .
PrimerApellido)). <
,))< =
SegundoApellido** 
=**  !
usuarioInput**" .
.**. /
SegundoApellido**/ >
,**> ?
Telefono++ 
=++ 
usuarioInput++ '
.++' (
Telefono++( 0
,++0 1
	Servicios,, 
=,, 
usuarioInput,, &
.,,& '
	Servicios,,' 0
,,,0 1
Movilidades-- 
=-- 
usuarioInput-- (
.--( )
Movilidades--) 4
,--4 5
Correo.. 
=.. 
usuarioInput.. %
...% &
Correo..& ,
,.., -
Usuario// 
=// 
usuarioInput// &
.//& '
Usuario//' .
,//. /
Password00 
=00 
usuarioInput00 '
.00' (
Password00( 0
,000 1
Tipo11 
=11 
$str11  
,11  !
Estado22 
=22 
$str22 !
}33 
;33 
return44 
usuario44 
;44 
}55 	
[77 	
HttpGet77	 
(77 
$str77 3
)773 4
]774 5
public88 
ActionResult88 
<88 
LoginViewModel88 *
>88* +
Get88, /
(880 1
string881 7
identificacion888 F
,88F G
string88H N
tipoServicio88O [
)88[ \
{88] ^
var99 
usuario99 
=99 
_usuarioService99 )
.99) *!
BuscarxIdentificacion99* ?
(99@ A
identificacion99A O
,99O P
tipoServicio99P \
)99\ ]
;99] ^
if:: 
(:: 
usuario:: 
==:: 
null:: 
)::  
return::! '
NotFound::( 0
(::1 2
)::2 3
;::3 4
var;; 
usuarioViewModel;;  
=;;! "
new;;# &
LoginViewModel;;' 5
(;;6 7
usuario;;7 >
);;> ?
;;;? @
return<< 
usuarioViewModel<< #
;<<# $
}== 	
[?? 	
HttpGet??	 
]?? 
public@@ 
IEnumerable@@ 
<@@ 
LoginViewModel@@ )
>@@) *
Gets@@+ /
(@@0 1
)@@1 2
{@@3 4
varAA 
usuariosAA 
=AA 
_usuarioServiceAA *
.AA* +
	ConsultarAA+ 4
(AA5 6
)AA6 7
.AA7 8
UsuariosAA8 @
.AA@ A
SelectAAA G
(AAH I
pAAI J
=>AAK M
newAAN Q
LoginViewModelAAR `
(AAa b
pAAb c
)AAc d
)AAd e
;AAe f
returnBB 
usuariosBB 
;BB 
}CC 	
[EE 	
HttpPutEE	 
(EE 
$strEE $
)EE$ %
]EE% &
publicFF 
ActionResultFF 
<FF 
LoginViewModelFF *
>FF* +
PutFF, /
(FF0 1
stringFF1 7
identificacionFF8 F
,FFF G
UserFFH L
usuarioFFM T
)FFT U
{FFV W
varGG 
idGG 
=GG 
_usuarioServiceGG $
.GG$ %!
BuscarxIdentificacionGG% :
(GG; <
usuarioGG< C
.GGC D
UsuarioGGD K
,GGK L
$strGGL N
)GGN O
;GGO P
ifHH 
(HH 
idHH 
==HH 
nullHH 
)HH 
{HH 
returnII 

BadRequestII !
(II" #
$strII# 2
)II2 3
;II3 4
}JJ 
varKK 
responseKK 
=KK 
_usuarioServiceKK *
.KK* +
	ModificarKK+ 4
(KK5 6
usuarioKK6 =
)KK= >
;KK> ?
ifLL 
(LL 
responseLL 
.LL 
ErrorLL 
)LL 
{LL 

ModelStateMM 
.MM 
AddModelErrorMM (
(MM) *
$strMM* >
,MM> ?
responseMM@ H
.MMH I
MensajeMMI P
)MMP Q
;MMQ R
varNN 
problemDetailsNN "
=NN# $
newNN% ($
ValidationProblemDetailsNN) A
(NNB C

ModelStateNNC M
)NNM N
{NNO P
StatusOO 
=OO 
StatusCodesOO (
.OO( )
Status400BadRequestOO) <
,OO< =
}PP 
;PP 
returnQQ 

BadRequestQQ !
(QQ" #
problemDetailsQQ# 1
)QQ1 2
;QQ2 3
}RR 
returnSS 
OkSS 
(SS 
responseSS 
.SS  
UsuarioSS  '
)SS' (
;SS( )
}TT 	
}UU 
}VV …
OF:\Documento\GitHub\Proyecto-LDS\Presentacion\Controllers\UtilidadController.cs
	namespace

 	
Presentacion


 
.

 
Controllers

 "
{ 
[ 
Route 

( 
$str 
) 
]  
[ 
ApiController 
] 
public 

class 
UtilidadController #
:# $
ControllerBase% 3
{ 
private 
readonly 
UtilidadService (
_utilidadService) 9
;9 :
public 
UtilidadController !
(! " 
LogisticaSinuContext" 6
context7 >
)> ?
{ 	
_utilidadService 
= 
new !
UtilidadService" 1
(1 2
context2 9
)9 :
;: ;
} 	
[ 	
HttpPost	 
] 
public
 
ActionResult 
< 
UtilidadViewModel /
>/ 0
Post1 5
(6 7
UtilidadInputModel7 I
UtilidadInputJ W
)W X
{Y Z
Utilidad 
utilidad 
= 
MapearUtilidad  .
(/ 0
UtilidadInput0 =
)= >
;> ?
var 
response 
= 
_utilidadService +
.+ ,
Guardar, 3
(4 5
utilidad5 =
)= >
;> ?
if 
( 
response 
. 
Error 
) 
{  !

ModelState 
. 
AddModelError (
() *
$str* <
,< =
response> F
.F G
MensajeG N
)N O
;O P
var 
problemDetails "
=# $
new% ($
ValidationProblemDetails) A
(B C

ModelStateC M
)M N
{O P
Status 
= 
StatusCodes (
.( )
Status400BadRequest) <
,< =
}   
;   
return!! 

BadRequest!! !
(!!" #
problemDetails!!# 1
)!!1 2
;!!2 3
}"" 
return## 
Ok## 
(## 
response## 
.##  
Utilidad##  (
)##( )
;##) *
}$$ 	
private&& 
Utilidad&& 
MapearUtilidad&& '
(&&( )
UtilidadInputModel&&) ;
utilidadInput&&< I
)&&I J
{&&K L
var'' 
utilidad'' 
='' 
new'' 
Utilidad'' '
{''( )
IdPago(( 
=(( 
utilidadInput(( #
.((# $
IdPago(($ *
,((* +
Precio)) 
=)) 
utilidadInput)) #
.))# $
Precio))$ *
,))* +
Costo** 
=** 
utilidadInput** "
.**" #
Costo**# (
,**( )
},, 
;,, 
return-- 
utilidad-- 
;-- 
}.. 	
[00 	
HttpGet00	 
]00 
public11 
IEnumerable11 
<11 
UtilidadViewModel11 ,
>11, -
Gets11. 2
(113 4
)114 5
{116 7
var22 

utilidades22 
=22 
_utilidadService22 -
.22- .
	Consultar22. 7
(227 8
)228 9
.229 :

Utilidades22: D
.22D E
Select22E K
(22K L
u22L M
=>22M O
new22O R
UtilidadViewModel22S d
(22d e
u22e f
)22f g
)22g h
;22h i
return33 

utilidades33 
;33 
}44 	
}66 
}77 
VF:\Documento\GitHub\Proyecto-LDS\Presentacion\Controllers\WeatherForecastController.cs
	namespace 	
Presentacion
 
. 
Controllers "
{		 
[

 
ApiController

 
]

 
[ 
Route 

(
 
$str 
) 
] 
public 

class %
WeatherForecastController *
:+ ,
ControllerBase- ;
{ 
private 
static 
readonly 
string  &
[& '
]' (
	Summaries) 2
=3 4
new5 8
[8 9
]9 :
{ 	
$str 
, 
$str !
,! "
$str# +
,+ ,
$str- 3
,3 4
$str5 ;
,; <
$str= C
,C D
$strE L
,L M
$strN S
,S T
$strU a
,a b
$strc n
} 	
;	 

private 
readonly 
ILogger  
<  !%
WeatherForecastController! :
>: ;
_logger< C
;C D
public %
WeatherForecastController (
(( )
ILogger) 0
<0 1%
WeatherForecastController1 J
>J K
loggerL R
)R S
{ 	
_logger 
= 
logger 
; 
} 	
[ 	
HttpGet	 
] 
public 
IEnumerable 
< 
WeatherForecast *
>* +
Get, /
(/ 0
)0 1
{ 	
var 
rng 
= 
new 
Random  
(  !
)! "
;" #
return 

Enumerable 
. 
Range #
(# $
$num$ %
,% &
$num' (
)( )
.) *
Select* 0
(0 1
index1 6
=>7 9
new: =
WeatherForecast> M
{ 
Date   
=   
DateTime   
.    
Now    #
.  # $
AddDays  $ +
(  + ,
index  , 1
)  1 2
,  2 3
TemperatureC!! 
=!! 
rng!! "
.!!" #
Next!!# '
(!!' (
-!!( )
$num!!) +
,!!+ ,
$num!!- /
)!!/ 0
,!!0 1
Summary"" 
="" 
	Summaries"" #
[""# $
rng""$ '
.""' (
Next""( ,
("", -
	Summaries""- 6
.""6 7
Length""7 =
)""= >
]""> ?
}## 
)## 
.$$ 
ToArray$$ 
($$ 
)$$ 
;$$ 
}%% 	
}&& 
}'' ß
?F:\Documento\GitHub\Proyecto-LDS\Presentacion\Hubs\SignalHub.cs
	namespace 	
Presentacion
 
. 
Hubs 
{ 
public 

class 
	SignalHub 
: 
Hub 
{ 
} 
} ÷
GF:\Documento\GitHub\Proyecto-LDS\Presentacion\Models\HotelInputModel.cs
	namespace 	
Presentacion
 
. 
Models 
{ 
public 

class 
HotelInputModel  
{! "
[ 	
Required	 
( 
ErrorMessage 
=  !
$str" 7
)7 8
]8 9
public 
string 
Nit 
{ 
get 
;  
set! $
;$ %
}& '
[ 	
Required	 
( 
ErrorMessage 
=  !
$str" H
)H I
]I J
public 
string 
Nombre 
{ 
get "
;" #
set$ '
;' (
}) *
[

 	
Required

	 
(

 
ErrorMessage

 
=

  !
$str

" F
)

F G
]

G H
public 
string 
Pais 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
Required	 
( 
ErrorMessage 
=  !
$str" H
)H I
]I J
public 
string 
Ciudad 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	
Required	 
( 
ErrorMessage 
=  !
$str" K
)K L
]L M
public 
string 
	Direccion 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	
Required	 
( 
ErrorMessage 
=  !
$str" H
)H I
]I J
public 
string 
Barrio 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	
Required	 
( 
ErrorMessage 
=  !
$str" T
)T U
]U V
public 
string 
Telefono 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
Required	 
( 
ErrorMessage 
=  !
$str" T
)T U
]U V
public 
string 
CorreoElectronico '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
string 
SitioWeb 
{  
get! $
;$ %
set& )
;) *
}+ ,
[	 

Required
 
( 
ErrorMessage  
=! "
$str# G
)G H
]H I
public 
string 
CategoriaHotel $
{% &
get' *
;* +
set, /
;/ 0
}1 2
[	 

Required
 
( 
ErrorMessage  
=! "
$str# G
)G H
]H I
public 
string 
TipoHabitacion $
{% &
get' *
;* +
set, /
;/ 0
}1 2
}!! 
}"" ¶
FF:\Documento\GitHub\Proyecto-LDS\Presentacion\Models\HotelViewModel.cs
	namespace 	
Presentacion
 
. 
Models 
{ 
public 

class 
HotelViewModel 
:  
HotelInputModel  /
{ 
public 
HotelViewModel 
( 
) 
{ 	
}

 	
public 
HotelViewModel 
( 
Hotel #
hotel$ )
)) *
{* +
Nit 
= 
hotel 
. 
Nit 
. 
Trim  
(  !
)! "
;" #
Nombre 
= 
hotel 
. 
Nombre !
.! "
Trim" &
(& '
)' (
;( )
Pais 
= 
hotel 
. 
Pais 
. 
Trim "
(" #
)# $
;$ %
Ciudad 
= 
hotel 
. 
Ciudad !
.! "
Trim" &
(& '
)' (
;( )
	Direccion 
= 
hotel 
. 
	Direccion '
.' (
Trim( ,
(, -
)- .
;. /
Barrio 
= 
hotel 
. 
Barrio !
.! "
Trim" &
(& '
)' (
;( )
Telefono 
= 
hotel 
. 
Telefono %
.% &
Trim& *
(* +
)+ ,
;, -
CorreoElectronico 
= 
hotel  %
.% &
CorreoElectronico& 7
.7 8
Trim8 <
(< =
)= >
;> ?
SitioWeb 
= 
hotel 
. 
SitioWeb %
.% &
Trim& *
(* +
)+ ,
;, -
CategoriaHotel 
= 
hotel  
.  !
CategoriaHotel! /
./ 0
Trim0 4
(4 5
)5 6
;6 7
TipoHabitacion 
= 
hotel  
.  !
TipoHabitacion! /
./ 0
Trim0 4
(4 5
)5 6
;6 7
} 	
} 
} ë
NF:\Documento\GitHub\Proyecto-LDS\Presentacion\Models\Loguin\LoginInputModel.cs
	namespace 	
Presentacion
 
. 
Models 
. 
Loguin $
{ 
public 

class 
LoginInputModel  
{ 
public 
string 
Usuario 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
Identificacion $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public		 
string		 
Password		 
{		  !
get		" %
;		% &
set		' *
;		* +
}		, -
public

 
string

 
Estado

 
{

 
get

  #
;

# $
set

% (
;

( )
}

* +
public 
string 
PrimerNombre #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
SegundoNombre #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
PrimerApellido %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
string 
SegundoApellido %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
string 
Correo 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Telefono 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
Tipo 
{ 
get  
;  !
set" %
;% &
}' (
public 
List 
< 
Entity 
. 
Servicio #
># $
	Servicios% .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
public 
List 
< 
Entity 
. 
MovilidadAcademica -
>- .
Movilidades/ :
{; <
get= @
;@ A
setB E
;E F
}G H
public 
string 
Token 
{ 
get !
;! "
set# &
;& '
}( )
} 
} ™
MF:\Documento\GitHub\Proyecto-LDS\Presentacion\Models\Loguin\LoginViewModel.cs
	namespace 	
Presentacion
 
. 
Models 
. 
Loguin $
{ 
public 

class 
LoginViewModel 
:  
LoginInputModel! 0
{ 
public 
LoginViewModel 
( 
User "
usuario# *
)* +
{		 	
Usuario

 
=

 
usuario

 
.

 
Usuario

 #
;

# $
Identificacion 
= 
usuario $
.$ %
Identificacion% 3
;3 4
Password 
= 
usuario 
. 
Password %
;% &
Estado 
= 
usuario 
. 
Estado !
;! "
PrimerNombre 
= 
usuario  
.  !
PrimerNombre! -
;- .
SegundoNombre 
= 
usuario #
.# $
SegundoNombre$ 1
;1 2
PrimerApellido 
= 
usuario "
." #
PrimerApellido# 1
;1 2
SegundoApellido 
= 
usuario %
.% &
SegundoApellido& 5
;5 6
Correo 
= 
usuario 
. 
Correo !
;! "
Telefono 
= 
usuario 
. 
Telefono %
;% &
Tipo 
= 
usuario 
. 
Tipo 
;  
	Servicios 
= 
usuario 
. 
	Servicios '
;' (
Movilidades 
= 
usuario 
.  
Movilidades  +
;+ ,
Token 
= 
usuario 
. 
Token 
;  
} 	
} 
} Ó
_F:\Documento\GitHub\Proyecto-LDS\Presentacion\Models\RestauranteModels\RestauranteInputModel.cs
	namespace 	
Presentacion
 
. 
Models 
. 
RestauranteModels /
{ 
public 

class !
RestauranteInputModel &
{ 
[ 	
Required	 
( 
ErrorMessage 
=  
$str! 6
)6 7
]7 8
public 
string 
Nit 
{ 
get 
;  
set! $
;$ %
}& '
[ 	
Required	 
( 
ErrorMessage 
=  
$str! G
)G H
]H I
public		 
string		 
Nombre		 
{		 
get		 "
;		" #
set		$ '
;		' (
}		) *
[

 	
Required

	 
(

 
ErrorMessage

 
=

  
$str

! E
)

E F
]

F G
public 
string 
Pais 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
Required	 
( 
ErrorMessage 
=  
$str! G
)G H
]H I
public 
string 
Ciudad 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	
Required	 
( 
ErrorMessage 
=  
$str! J
)J K
]K L
public 
string 
	Direccion 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	
Required	 
( 
ErrorMessage 
=  
$str! G
)G H
]H I
public 
string 
Barrio 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	
Required	 
( 
ErrorMessage 
=  
$str! S
)S T
]T U
public 
string 
Telefono 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
Required	 
( 
ErrorMessage 
=  
$str! S
)S T
]T U
public 
string 
CorreoElectronico '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
string 
SitioWeb 
{  
get! $
;$ %
set& )
;) *
}+ ,
[	 

Required
 
( 
ErrorMessage 
=  !
$str" C
)C D
]D E
public 
string 
ClaseComida !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} è
^F:\Documento\GitHub\Proyecto-LDS\Presentacion\Models\RestauranteModels\RestauranteViewModel.cs
	namespace 	
Presentacion
 
. 
Models 
. 
RestauranteModels /
{ 
public 

class  
RestauranteViewModel %
:% &!
RestauranteInputModel& ;
{ 
public  
RestauranteViewModel #
(# $
)$ %
{		 	
} 	
public
  
RestauranteViewModel %
(% &
Restaurante& 1
restaurante2 =
)= >
{> ?
Nit 
= 
restaurante 
. 
Nit !
.! "
Trim" &
(& '
)' (
;( )
Nombre 
= 
restaurante  
.  !
Nombre! '
.' (
Trim( ,
(, -
)- .
;. /
Pais 
= 
restaurante 
. 
Pais #
.# $
Trim$ (
(( )
)) *
;* +
Ciudad 
= 
restaurante  
.  !
Ciudad! '
.' (
Trim( ,
(, -
)- .
;. /
	Direccion 
= 
restaurante #
.# $
	Direccion$ -
.- .
Trim. 2
(2 3
)3 4
;4 5
Barrio 
= 
restaurante  
.  !
Barrio! '
.' (
Trim( ,
(, -
)- .
;. /
Telefono 
= 
restaurante "
." #
Telefono# +
.+ ,
Trim, 0
(0 1
)1 2
;2 3
CorreoElectronico 
= 
restaurante  +
.+ ,
CorreoElectronico, =
.= >
Trim> B
(B C
)C D
;D E
SitioWeb 
= 
restaurante "
." #
SitioWeb# +
.+ ,
Trim, 0
(0 1
)1 2
;2 3
ClaseComida 
= 
restaurante #
.# $
ClaseComida$ /
./ 0
Trim0 4
(4 5
)5 6
;6 7
} 	
} 
} ı
QF:\Documento\GitHub\Proyecto-LDS\Presentacion\Models\Servicio\ServcioViewModel.cs
	namespace 	
Presentacion
 
. 
Models 
{ 
public 

class 
ServcioViewModel !
:" #
ServicioInputModel$ 6
{ 
public 
ServcioViewModel 
(  
Entity  &
.& '
Servicio' /
servicio0 8
)8 9
{ 	

IdServicio		 
=		 
servicio		 !
.		! "

IdServicio		" ,
;		, -
	IdCliente

 
=

 
servicio

  
.

  !
	IdCliente

! *
;

* +
NombreCliente 
= 
servicio $
.$ %
NombreCliente% 2
;2 3
FechaEvento 
= 
servicio #
.# $
FechaEvento$ /
;/ 0
FechaSolicitud 
= 
servicio %
.% &
FechaSolicitud& 4
;4 5
TipoServicio 
= 
servicio #
.# $
TipoServicio$ 0
;0 1
Descripcion 
= 
servicio "
." #
Descripcion# .
;. /

Refrigerio 
= 
servicio !
.! "

Refrigerio" ,
;, -
Ponentes 
= 
servicio 
.  
Ponentes  (
;( )
LogisticaCompleta 
= 
servicio  (
.( )
LogisticaCompleta) :
;: ;
Correo 
= 
servicio 
. 
Correo $
;$ %
Observacion 
= 
servicio "
." #
Observacion# .
;. /
Estado 
= 
servicio 
. 
Estado $
;$ %
} 	
} 
} “
SF:\Documento\GitHub\Proyecto-LDS\Presentacion\Models\Servicio\ServicioInputModel.cs
	namespace 	
Presentacion
 
. 
Models 
. 
Servicio &
{ 
public 

class 
ServicioInputModel #
{ 
[		 	
Required			 
(		 
ErrorMessage		 
=		  
$str		! B
)		B C
]		C D
public

 
string

 

IdServicio

  
{

! "
get

# &
;

& '
set

( +
;

+ ,
}

- .
[ 	
Required	 
( 
ErrorMessage 
=  
$str! :
): ;
]; <
public 
string 
	IdCliente 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
NombreCliente #
{$ %
get& )
;) *
set+ .
;. /
}0 1
[ 	
Required	 
( 
ErrorMessage 
=  
$str! Y
)Y Z
]Z [
public 
DateTime 
FechaEvento #
{$ %
get& )
;) *
set+ .
;. /
}0 1
[ 	
Required	 
( 
ErrorMessage 
=  
$str! Z
)Z [
][ \
public 
DateTime 
FechaSolicitud &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
[ 	
Required	 
( 
ErrorMessage 
=  
$str! C
)C D
]D E
public 
string 
TipoServicio "
{# $
get% (
;( )
set* -
;- .
}/ 0
[ 	
Required	 
( 
ErrorMessage 
=  
$str! K
)K L
]L M
public 
string 
Descripcion !
{" #
get$ '
;' (
set) ,
;, -
}. /
[ 	
Required	 
( 
ErrorMessage 
=  
$str! K
)K L
]L M
public 
string 

Refrigerio  
{! "
get# &
;& '
set( +
;+ ,
}- .
[ 	
Required	 
( 
ErrorMessage 
=  
$str! I
)I J
]J K
public 
string 
Ponentes 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
Required	 
( 
ErrorMessage 
=  
$str! V
)V W
]W X
public 
string 
LogisticaCompleta '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
string 
Observacion !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
Correo 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
Estado 
{ 
get "
;" #
set$ '
;' (
}) *
} 
}   «-
nF:\Documento\GitHub\Proyecto-LDS\Presentacion\Models\SMovilidadAcademicaModels\MovilidadAcademicaInputModel.cs
	namespace 	
Presentacion
 
. 
Models 
. 
SMovilidadAcademica 1
{ 
public 

class (
MovilidadAcademicaInputModel -
{ 
[ 	
Required	 
( 
ErrorMessage 
=  
$str! B
)B C
]C D
public		 
string		 
IdMovilidad		 !
{		" #
get		$ '
;		' (
set		) ,
;		, -
}		. /
[

 	
Required

	 
(

 
ErrorMessage

 
=

  
$str

! :
)

: ;
]

; <
public 
string 
	IdCliente 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
NombreCliente #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
Correo 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	
Required	 
( 
ErrorMessage 
=  
$str! Y
)Y Z
]Z [
public 
DateTime 
FechaEvento #
{$ %
get& )
;) *
set+ .
;. /
}0 1
[	 

Required
 
( 
ErrorMessage 
=  !
$str" [
)[ \
]\ ]
public 
DateTime 
FechaSolicitud &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
[	 

Required
 
( 
ErrorMessage 
=  !
$str" F
)F G
]G H
public 
string 
Destino 
{ 
get  #
;# $
set% (
;( )
}* +
[ 	
Required	 
( 
ErrorMessage 
=  
$str! K
)K L
]L M
public 
string 
NocheAlojamiento &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
[	 

Required
 
( 
ErrorMessage 
=  !
$str" G
)G H
]H I
public 
string 
TipoAcomodacion %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
[	 

Required
 
( 
ErrorMessage 
=  !
$str" >
)> ?
]? @
public 
string 

Transporte  
{! "
get# &
;& '
set( +
;+ ,
}- .
[ 	
Required	 
( 
ErrorMessage 
=  
$str! ?
)? @
]@ A
public 
string 
Alimentacion "
{# $
get% (
;( )
set* -
;- .
}/ 0
[ 	
Required	 
( 
ErrorMessage 
=  
$str! F
)F G
]G H
public 
string 
AcompanamientoGuia (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
[ 	
Required	 
( 
ErrorMessage 
=  
$str! B
)B C
]C D
public 
string 
SeguroViaje !
{" #
get$ '
;' (
set) ,
;, -
}. /
[   	
Required  	 
(   
ErrorMessage   
=    
$str  ! I
)  I J
]  J K
public!! 
string!! 
OrganizacionAjenda!! (
{!!) *
get!!+ .
;!!. /
set!!0 3
;!!3 4
}!!5 6
["" 	
Required""	 
("" 
ErrorMessage"" 
=""  
$str""! A
)""A B
]""B C
public## 
string## 
VisitaTecnica## #
{##$ %
get##& )
;##) *
set##+ .
;##. /
}##0 1
[$$ 	
Required$$	 
($$ 
ErrorMessage$$ 
=$$  
$str$$! C
)$$C D
]$$D E
public%% 
string%% 
CostoEntrada%% "
{%%# $
get%%% (
;%%( )
set%%* -
;%%- .
}%%/ 0
public&& 
string&& 
Objervacion&& !
{&&" #
get&&$ '
;&&' (
set&&) ,
;&&, -
}&&. /
['' 	
Required''	 
('' 
ErrorMessage'' 
=''  
$str''! @
)''@ A
]''A B
public(( 
string(( 
	TipoHotel(( 
{((  !
get((" %
;((% &
set((' *
;((* +
}((, -
[)) 	
Required))	 
()) 
ErrorMessage)) 
=))  
$str))! =
)))= >
]))> ?
public** 
string** 

Refrigerio**  
{**! "
get**# &
;**& '
set**( +
;**+ ,
}**- .
public,, 
string,, 
Estado,, 
{,, 
get,, "
;,," #
set,,$ '
;,,' (
},,) *
}-- 
}.. ∏
mF:\Documento\GitHub\Proyecto-LDS\Presentacion\Models\SMovilidadAcademicaModels\MovilidadAcademicaViewModel.cs
	namespace 	
Presentacion
 
. 
Models 
. %
SMovilidadAcademicaModels 7
{ 
public 

class '
MovilidadAcademicaViewModel ,
:, -(
MovilidadAcademicaInputModel- I
{ 
public '
MovilidadAcademicaViewModel *
(* +
MovilidadAcademica+ =
	movilidad> G
)G H
{		 	
IdMovilidad

 
=

 
	movilidad

 !
.

! "
IdMovilidad

" -
;

- .
NombreCliente 
= 
	movilidad %
.% &
NombreCliente& 3
;3 4
Correo 
= 
	movilidad 
. 
Correo %
;% &
	IdCliente 
= 
	movilidad 
.  
	IdCliente  )
;) *
FechaEvento 
= 
	movilidad !
.! "
FechaEvento" -
;- .
FechaSolicitud 
= 
	movilidad $
.$ %
FechaSolicitud% 3
;3 4
Destino 
= 
	movilidad 
. 
Destino %
;% &
NocheAlojamiento 
= 
	movilidad &
.& '
NocheAlojamiento' 7
;7 8
TipoAcomodacion 
= 
	movilidad %
.% &
TipoAcomodacion& 5
;5 6

Transporte 
= 
	movilidad  
.  !

Transporte! +
;+ ,
Alimentacion 
= 
	movilidad "
." #
Alimentacion# /
;/ 0
AcompanamientoGuia 
= 
	movilidad (
.( )
AcompanamientoGuia) ;
;; <
SeguroViaje 
= 
	movilidad !
.! "
SeguroViaje" -
;- .
OrganizacionAjenda 
= 
	movilidad (
.( )
OrganizacionAjenda) ;
;; <
VisitaTecnica 
= 
	movilidad #
.# $
VisitaTecnica$ 1
;1 2
CostoEntrada 
= 
	movilidad "
." #
CostoEntrada# /
;/ 0
Objervacion 
= 
	movilidad !
.! "
Objervacion" -
;- .
	TipoHotel 
= 
	movilidad 
.  
	TipoHotel  )
;) *

Refrigerio 
= 
	movilidad  
.  !

Refrigerio! +
;+ ,
Estado 
= 
	movilidad 
. 
Estado #
;# $
} 	
} 
}   ∆
\F:\Documento\GitHub\Proyecto-LDS\Presentacion\Models\TransporteModels\TransporteViewModel.cs
	namespace 	
Presentacion
 
. 
Models 
. 
TransporteModels .
{ 
public 

class 
TransporteViewModel $
:$ % 
TrasnporteInputModel% 9
{ 
public 
TransporteViewModel "
(" #
)# $
{ 	
}

 	
public	 
TransporteViewModel #
(# $

Transporte$ .

transporte/ 9
)9 :
{: ;
Nit 
= 

transporte 
. 
Nit  
.  !
Trim! %
(% &
)& '
;' (
Nombre 
= 

transporte 
.  
Nombre  &
.& '
Trim' +
(+ ,
), -
;- .
Pais 
= 

transporte 
. 
Pais "
." #
Trim# '
(' (
)( )
;) *
Ciudad 
= 

transporte 
.  
Ciudad  &
.& '
Trim' +
(+ ,
), -
;- .
	Direccion 
= 

transporte "
." #
	Direccion# ,
., -
Trim- 1
(1 2
)2 3
;3 4
Barrio 
= 

transporte 
.  
Barrio  &
.& '
Trim' +
(+ ,
), -
;- .
Telefono 
= 

transporte !
.! "
Telefono" *
.* +
Trim+ /
(/ 0
)0 1
;1 2
CorreoElectronico 
= 

transporte  *
.* +
CorreoElectronico+ <
.< =
Trim= A
(A B
)B C
;C D
SitioWeb 
= 

transporte !
.! "
SitioWeb" *
.* +
Trim+ /
(/ 0
)0 1
;1 2
ClaseTransporte 
= 

transporte &
.& '
ClaseTransporte' 6
.6 7
Trim7 ;
(; <
)< =
;= >
CapacidadAsientos 
= 

transporte (
.( )
CapacidadAsientos) :
.: ;
Trim; ?
(? @
)@ A
;A B
} 	
} 
} ¢
]F:\Documento\GitHub\Proyecto-LDS\Presentacion\Models\TransporteModels\TrasnporteInputModel.cs
	namespace 	
Presentacion
 
. 
Models 
. 
TransporteModels .
{/ 0
public 

class  
TrasnporteInputModel %
{& '
[ 	
Required	 
( 
ErrorMessage 
=  !
$str" 7
)7 8
]8 9
public 
string 
Nit 
{ 
get 
;  
set! $
;$ %
}& '
[ 	
Required	 
( 
ErrorMessage 
=  !
$str" I
)I J
]J K
public		 
string		 
Nombre		 
{		 
get		 "
;		" #
set		$ '
;		' (
}		) *
[ 	
Required	 
( 
ErrorMessage 
=  !
$str" F
)F G
]G H
public 
string 
Pais 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
Required	 
( 
ErrorMessage 
=  !
$str" I
)I J
]J K
public 
string 
Ciudad 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	
Required	 
( 
ErrorMessage 
=  !
$str" L
)L M
]M N
public 
string 
	Direccion 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	
Required	 
( 
ErrorMessage 
=  !
$str" I
)I J
]J K
public 
string 
Barrio 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	
Required	 
( 
ErrorMessage 
=  !
$str" U
)U V
]V W
public 
string 
Telefono 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
Required	 
( 
ErrorMessage 
=  !
$str" U
)U V
]V W
public 
string 
CorreoElectronico '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
string 
SitioWeb 
{  
get! $
;$ %
set& )
;) *
}+ ,
[	 

Required
 
( 
ErrorMessage  
=! "
$str# H
)H I
]I J
public 
string 
ClaseTransporte %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
[	 

Required
 
( 
ErrorMessage  
=! "
$str# J
)J K
]K L
public   
string   
CapacidadAsientos   '
{  ( )
get  * -
;  - .
set  / 2
;  2 3
}  4 5
}!! 
}"" ª
IF:\Documento\GitHub\Proyecto-LDS\Presentacion\Models\UsuarioInputModel.cs
	namespace 	
Presentacion
 
. 
Models 
{ 
public 

class 
UsuarioInputModel "
{ 
[ 	
Required	 
( 
ErrorMessage 
=  
$str! A
)A B
]B C
public 
string 
Identificacion $
{% &
get' *
;* +
set, /
;/ 0
}1 2
[		 	
Required			 
(		 
ErrorMessage		 
=		  
$str		! @
)		@ A
]		A B
public

 
string

 
PrimerNombre

 "
{

# $
get

% (
;

( )
set

* -
;

- .
}

/ 0
public 
string 
SegundoNombre #
{$ %
get& )
;) *
set+ .
;. /
}0 1
[ 	
Required	 
( 
ErrorMessage 
=  
$str! B
)B C
]C D
public 
string 
PrimerApellido $
{% &
get' *
;* +
set, /
;/ 0
}1 2
[ 	
Required	 
( 
ErrorMessage 
=  
$str! C
)C D
]D E
public 
string 
SegundoApellido %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
[ 	
Required	 
( 
ErrorMessage 
=  
$str! E
)E F
]F G
public 
string 
Telefono 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
Required	 
( 
ErrorMessage 
=  
$str! E
)E F
]F G
[ 	
StringLength	 
( 
$num 
, 
ErrorMessage %
=% &
$str& X
)X Y
]Y Z
[ 	
EmailAddress	 
( 
ErrorMessage "
=" #
$str# A
)A B
]B C
public 
string 
CorreoElectronico '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
[ 	
Required	 
( 
ErrorMessage 
=  
$str! E
)E F
]F G
public 
string 
Clave 
{ 
get !
;! "
set# &
;& '
}( )
} 
} ã
HF:\Documento\GitHub\Proyecto-LDS\Presentacion\Models\UsuarioViewModel.cs
	namespace 	
Presentacion
 
. 
Models 
{ 
public 

class 
UsuarioViewModel !
:! "
UsuarioInputModel" 3
{ 
public 
UsuarioViewModel 
(  
Usuario  '
usuario( /
)/ 0
{0 1
Identificacion 
= 
usuario $
.$ %
Identificacion% 3
.3 4
Trim4 8
(8 9
)9 :
;: ;
PrimerNombre		 
=		 
usuario		 "
.		" #
PrimerNombre		# /
.		/ 0
Trim		0 4
(		4 5
)		5 6
;		6 7
SegundoNombre

 
=

 
usuario

 #
.

# $
SegundoNombre

$ 1
.

1 2
Trim

2 6
(

6 7
)

7 8
;

8 9
PrimerApellido 
= 
usuario $
.$ %
PrimerApellido% 3
.3 4
Trim4 8
(8 9
)9 :
;: ;
SegundoApellido 
= 
usuario %
.% &
SegundoApellido& 5
.5 6
Trim6 :
(: ;
); <
;< =
Telefono 
= 
usuario 
. 
Telefono '
.' (
Trim( ,
(, -
)- .
;. /
CorreoElectronico 
= 
usuario  '
.' (
CorreoElectronico( 9
.9 :
Trim: >
(> ?
)? @
;@ A
Clave 
= 
usuario 
. 
Clave !
.! "
Trim" &
(& '
)' (
;( )
} 	
} 
} Õ	
YF:\Documento\GitHub\Proyecto-LDS\Presentacion\Models\UtilidadModels\UtilidadInputModel.cs
	namespace 	
Presentacion
 
. 
Models 
. 
UtilidadModels ,
{ 
public 

class 
UtilidadInputModel #
{ 
[	 

Required
 
( 
ErrorMessage 
=  !
$str" >
)> ?
]? @
public 
string 
IdPago 
{ 
get "
;" #
set$ '
;' (
}) *
[			 

Required		
 
(		 
ErrorMessage		 
=		  !
$str		" :
)		: ;
]		; <
public

 
decimal

 
Precio

 
{

 
get

  #
;

# $
set

% (
;

( )
}

* +
[	 

Required
 
( 
ErrorMessage 
=  !
$str" 9
)9 :
]: ;
public 
decimal 
Costo 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} ©

XF:\Documento\GitHub\Proyecto-LDS\Presentacion\Models\UtilidadModels\UtilidadViewModel.cs
	namespace 	
Presentacion
 
. 
Models 
. 
UtilidadModels ,
{- .
public 

class 
UtilidadViewModel "
:# $
UtilidadInputModel% 7
{8 9
public 
decimal 
UtilidadTotal $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
UtilidadViewModel  
(! "
)" #
{$ %
}		 	
public

 
UtilidadViewModel

  
(

! "
Utilidad

" *
utilidad

+ 3
)

3 4
{

5 6
IdPago 
= 
utilidad 
. 
IdPago $
.$ %
Trim% )
(* +
)+ ,
;, -
Costo 
= 
utilidad 
. 
Costo "
;" #
Precio 
= 
utilidad 
. 
Precio $
;$ %
UtilidadTotal 
= 
utilidad $
.$ %
UtilidadTotal% 2
;2 3
} 	
} 
} å
CF:\Documento\GitHub\Proyecto-LDS\Presentacion\Pages\Error.cshtml.cs
	namespace

 	
Presentacion


 
.

 
Pages

 
{ 
[ 
ResponseCache 
( 
Duration 
= 
$num 
,  
Location! )
=* +!
ResponseCacheLocation, A
.A B
NoneB F
,F G
NoStoreH O
=P Q
trueR V
)V W
]W X
public 

class 

ErrorModel 
: 
	PageModel '
{ 
private 
readonly 
ILogger  
<  !

ErrorModel! +
>+ ,
_logger- 4
;4 5
public 

ErrorModel 
( 
ILogger !
<! "

ErrorModel" ,
>, -
logger. 4
)4 5
{ 	
_logger 
= 
logger 
; 
} 	
public 
string 
	RequestId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
bool 
ShowRequestId !
=>" $
!% &
string& ,
., -
IsNullOrEmpty- :
(: ;
	RequestId; D
)D E
;E F
public 
void 
OnGet 
( 
) 
{ 	
	RequestId 
= 
Activity  
.  !
Current! (
?( )
.) *
Id* ,
??- /
HttpContext0 ;
.; <
TraceIdentifier< K
;K L
} 	
} 
} í

8F:\Documento\GitHub\Proyecto-LDS\Presentacion\Program.cs
	namespace

 	
Presentacion


 
{ 
public 

class 
Program 
{ 
public 
static 
void 
Main 
(  
string  &
[& '
]' (
args) -
)- .
{ 	
CreateHostBuilder 
( 
args "
)" #
.# $
Build$ )
() *
)* +
.+ ,
Run, /
(/ 0
)0 1
;1 2
} 	
public 
static 
IHostBuilder "
CreateHostBuilder# 4
(4 5
string5 ;
[; <
]< =
args> B
)B C
=>D F
Host 
.  
CreateDefaultBuilder %
(% &
args& *
)* +
. $
ConfigureWebHostDefaults )
() *

webBuilder* 4
=>5 7
{ 

webBuilder 
. 

UseStartup )
<) *
Startup* 1
>1 2
(2 3
)3 4
;4 5
} 
) 
; 
} 
} ñ#
CF:\Documento\GitHub\Proyecto-LDS\Presentacion\Service\JwtService.cs
	namespace 	
Presentacion
 
. 
Service 
{  
public 

class 

JwtService 
{ 
private 
readonly 

AppSetting #
_appSetting$ /
;/ 0
public 

JwtService 
( 
IOptions #
<# $

AppSetting$ .
>. /

appSetting0 :
): ;
{< =
_appSetting 
= 

appSetting $
.$ %
Value% *
;* +
} 	
public 
LoginViewModel 
GenerarToken *
(+ ,
User, 0
usuario1 8
)8 9
{: ;
if 
( 
usuario 
== 
null 
)  
return 
null 
; 
var 
usuarioResponse 
=  !
new" %
LoginViewModel& 4
(5 6
usuario6 =
)= >
{? @
PrimerNombre 
= 
usuario &
.& '
PrimerNombre' 3
,3 4
PrimerApellido 
=  
usuario! (
.( )
PrimerApellido) 7
,7 8
Usuario 
= 
usuario !
.! "
Usuario" )
} 
; 
var 
tokenHandler 
= 
new "#
JwtSecurityTokenHandler# :
(; <
)< =
;= >
var 
key 
= 
Encoding 
. 
ASCII $
.$ %
GetBytes% -
(. /
_appSetting/ :
.: ;
Secret; A
)A B
;B C
var 
tokenDescriptor 
=  !
new" %#
SecurityTokenDescriptor& =
{> ?
Subject 
= 
new 
ClaimsIdentity ,
(- .
new. 1
Claim2 7
[7 8
]8 9
{: ;
new   
Claim   
(   

ClaimTypes   %
.  % &
Name  & *
,  * +
usuario  , 3
.  3 4
Usuario  4 ;
.  ; <
ToString  < D
(  E F
)  F G
)  G H
,  H I
new!! 
Claim!! 
(!! 

ClaimTypes!! %
.!!% &
Email!!& +
,!!+ ,
usuario!!- 4
.!!4 5
Correo!!5 ;
.!!; <
ToString!!< D
(!!E F
)!!F G
)!!G H
,!!H I
new"" 
Claim"" 
("" 

ClaimTypes"" %
.""% &
MobilePhone""& 1
,""1 2
usuario""3 :
."": ;
Telefono""; C
.""C D
ToString""D L
(""M N
)""N O
)""O P
,""P Q
new## 
Claim## 
(## 

ClaimTypes## %
.##% &
Role##& *
,##* +
$str##, 2
)##2 3
,##3 4
new$$ 
Claim$$ 
($$ 

ClaimTypes$$ %
.$$% &
Role$$& *
,$$* +
$str$$, 2
)$$2 3
,$$3 4
}%% 
)%% 
,%% 
Expires&& 
=&& 
DateTime&& "
.&&" #
UtcNow&&# )
.&&) *
AddDays&&* 1
(&&2 3
$num&&3 4
)&&4 5
,&&5 6
SigningCredentials'' "
=''# $
new''% (
SigningCredentials'') ;
(''< =
new''= @ 
SymmetricSecurityKey''A U
(''V W
key''W Z
)''Z [
,''[ \
SecurityAlgorithms''] o
.''o p 
HmacSha256Signature	''p É
)
''É Ñ
}(( 
;(( 
var)) 
token)) 
=)) 
tokenHandler)) $
.))$ %
CreateToken))% 0
())1 2
tokenDescriptor))2 A
)))A B
;))B C
usuarioResponse** 
.** 
Token** !
=**" #
tokenHandler**$ 0
.**0 1

WriteToken**1 ;
(**< =
token**= B
)**B C
;**C D
return,, 
usuarioResponse,, "
;,," #
}-- 	
}.. 
}// ÔI
8F:\Documento\GitHub\Proyecto-LDS\Presentacion\Startup.cs
	namespace 	
Presentacion
 
{ 
public 

class 
Startup 
{ 
public 
Startup 
( 
IConfiguration %
configuration& 3
)3 4
{ 	
Configuration 
= 
configuration )
;) *
} 	
public 
IConfiguration 
Configuration +
{, -
get. 1
;1 2
}3 4
public 
void 
ConfigureServices %
(% &
IServiceCollection& 8
services9 A
)A B
{ 	
var   
connectionString    
=    !
Configuration  ! .
.  . /
GetConnectionString  / B
(  B C
$str  C V
)  V W
;  W X
services!! 
.!! 
AddDbContext!! !
<!!! " 
LogisticaSinuContext!!" 6
>!!6 7
(!!7 8
p!!8 9
=>!!9 ;
p!!; <
.!!< =
UseSqlServer!!= I
(!!I J
connectionString!!J Z
)!!Z [
)!![ \
;!!\ ]
services"" 
."" #
AddControllersWithViews"" ,
("", -
)""- .
;"". /
services## 
.## 

AddSignalR## 
(##  
)##  !
;##! "
var%% 
appSettingsSection%% "
=%%# $
Configuration%%% 2
.%%2 3

GetSection%%3 =
(%%= >
$str%%> J
)%%J K
;%%K L
services&& 
.&& 
	Configure&& 
<&& 

AppSetting&& )
>&&) *
(&&* +
appSettingsSection&&+ =
)&&= >
;&&> ?
var)) 
appSettings)) 
=)) 
appSettingsSection)) 0
.))0 1
Get))1 4
<))4 5

AppSetting))5 ?
>))? @
())@ A
)))A B
;))B C
var** 
key** 
=** 
System** 
.** 
Text** !
.**! "
Encoding**" *
.*** +
ASCII**+ 0
.**0 1
GetBytes**1 9
(**9 :
appSettings**: E
.**E F
Secret**F L
)**L M
;**M N
services++ 
.++ 
AddAuthentication++ &
(++& '
x++' (
=>++) +
{,, 
x-- 
.-- %
DefaultAuthenticateScheme-- +
=--, -
JwtBearerDefaults--. ?
.--? @ 
AuthenticationScheme--@ T
;--T U
x.. 
... "
DefaultChallengeScheme.. (
=..) *
JwtBearerDefaults..+ <
...< = 
AuthenticationScheme..= Q
;..Q R
}// 
)// 
.00 
AddJwtBearer00 
(00 
x00 
=>00 
{11 
x22 
.22  
RequireHttpsMetadata22 &
=22' (
false22) .
;22. /
x33 
.33 
	SaveToken33 
=33 
true33 "
;33" #
x44 
.44 %
TokenValidationParameters44 +
=44, -
new44. 1%
TokenValidationParameters442 K
{55 $
ValidateIssuerSigningKey66 ,
=66- .
true66/ 3
,663 4
IssuerSigningKey77 $
=77% &
new77' * 
SymmetricSecurityKey77+ ?
(77? @
key77@ C
)77C D
,77D E
ValidateIssuer88 "
=88# $
false88% *
,88* +
ValidateAudience99 $
=99% &
false99' ,
}:: 
;:: 
};; 
);; 
;;; 
services>> 
.>> 
AddSwaggerGen>> "
(>>" #
c>># $
=>>>% '
{?? 
c@@ 
.@@ 

SwaggerDoc@@ 
(@@ 
$str@@ !
,@@! "
new@@# &
OpenApiInfo@@' 2
{AA 
VersionBB 
=BB 
$strBB "
,BB" #
TitleCC 
=CC 
$strCC .
,CC. /
DescriptionDD 
=DD  !
$strDD" F
,DDF G
TermsOfServiceEE "
=EE# $
newEE% (
UriEE) ,
(EE, -
$strEE- P
)EEP Q
,EEQ R
ContactFF 
=FF 
newFF !
OpenApiContactFF" 0
{GG 
NameHH 
=HH 
$strHH P
,HHP Q
EmailII 
=II 
$strII  W
,IIW X
}KK 
,KK 
LicenseLL 
=LL 
newLL !
OpenApiLicenseLL" 0
{MM 
NameNN 
=NN 
$strNN ;
,NN; <
UrlOO 
=OO 
newOO !
UriOO" %
(OO% &
$strOO& I
)OOI J
,OOJ K
}PP 
}QQ 
)QQ 
;QQ 
}RR 
)RR 
;RR 
servicesUU 
.UU 
AddSpaStaticFilesUU &
(UU& '
configurationUU' 4
=>UU5 7
{VV 
configurationWW 
.WW 
RootPathWW &
=WW' (
$strWW) 9
;WW9 :
}XX 
)XX 
;XX 
}YY 	
public\\ 
void\\ 
	Configure\\ 
(\\ 
IApplicationBuilder\\ 1
app\\2 5
,\\5 6
IWebHostEnvironment\\7 J
env\\K N
,\\N O 
LogisticaSinuContext\\P d
context\\e l
)\\m n
{]] 	
context^^ 
.^^ 
Database^^ 
.^^ 
Migrate^^ $
(^^$ %
)^^% &
;^^& '
if__ 
(__ 
env__ 
.__ 
IsDevelopment__ !
(__! "
)__" #
)__# $
{`` 
appaa 
.aa %
UseDeveloperExceptionPageaa -
(aa- .
)aa. /
;aa/ 0
}bb 
elsecc 
{dd 
appee 
.ee 
UseExceptionHandleree '
(ee' (
$stree( 0
)ee0 1
;ee1 2
appgg 
.gg 
UseHstsgg 
(gg 
)gg 
;gg 
}hh 
appjj 
.jj 
UseHttpsRedirectionjj #
(jj# $
)jj$ %
;jj% &
appkk 
.kk 
UseStaticFileskk 
(kk 
)kk  
;kk  !
ifll 
(ll 
!ll 
envll 
.ll 
IsDevelopmentll "
(ll" #
)ll# $
)ll$ %
{mm 
appnn 
.nn 
UseSpaStaticFilesnn %
(nn% &
)nn& '
;nn' (
}oo 
appqq 
.qq 

UseRoutingqq 
(qq 
)qq 
;qq 
apptt 
.tt 
UseCorstt 
(tt 
xtt 
=>tt 
xtt 
.uu 
AllowAnyOriginuu 
(uu  
)uu  !
.vv 
AllowAnyMethodvv 
(vv  
)vv  !
.ww 
AllowAnyHeaderww 
(ww  
)ww  !
)ww! "
;ww" #
appyy 
.yy 
UseAuthenticationyy !
(yy! "
)yy" #
;yy# $
appzz 
.zz 
UseAuthorizationzz  
(zz  !
)zz! "
;zz" #
app|| 
.|| 
UseEndpoints|| 
(|| 
	endpoints|| &
=>||' )
{}} 
	endpoints~~ 
.~~ 
MapControllerRoute~~ ,
(~~, -
name 
: 
$str #
,# $
pattern
ÄÄ 
:
ÄÄ 
$str
ÄÄ @
)
ÄÄ@ A
;
ÄÄA B
	endpoints
ÅÅ 
.
ÅÅ 
MapHub
ÅÅ $
<
ÅÅ$ %
	SignalHub
ÅÅ% .
>
ÅÅ. /
(
ÅÅ/ 0
$str
ÅÅ0 <
)
ÅÅ< =
;
ÅÅ= >
}
ÇÇ 
)
ÇÇ 
;
ÇÇ 
app
ÑÑ 
.
ÑÑ 

UseSwagger
ÑÑ 
(
ÑÑ 
)
ÑÑ 
;
ÑÑ 
app
ÖÖ 
.
ÖÖ 
UseSwaggerUI
ÖÖ 
(
ÖÖ 
c
ÖÖ 
=>
ÖÖ !
{
ÜÜ 
c
áá 
.
áá 
SwaggerEndpoint
áá !
(
áá! "
$str
áá" <
,
áá< =
$str
áá> I
)
ááI J
;
ááJ K
}
àà 
)
àà 
;
àà 
app
ãã 
.
ãã 
UseSpa
ãã 
(
ãã 
spa
ãã 
=>
ãã 
{
åå 
spa
êê 
.
êê 
Options
êê 
.
êê 

SourcePath
êê &
=
êê' (
$str
êê) 4
;
êê4 5
if
íí 
(
íí 
env
íí 
.
íí 
IsDevelopment
íí %
(
íí% &
)
íí& '
)
íí' (
{
ìì 
spa
îî 
.
îî !
UseAngularCliServer
îî +
(
îî+ ,
	npmScript
îî, 5
:
îî5 6
$str
îî7 >
)
îî> ?
;
îî? @
}
ïï 
}
ññ 
)
ññ 
;
ññ 
}
óó 	
}
òò 
}ôô ∆
@F:\Documento\GitHub\Proyecto-LDS\Presentacion\WeatherForecast.cs
	namespace 	
Presentacion
 
{ 
public 

class 
WeatherForecast  
{ 
public 
DateTime 
Date 
{ 
get "
;" #
set$ '
;' (
}) *
public		 
int		 
TemperatureC		 
{		  !
get		" %
;		% &
set		' *
;		* +
}		, -
public 
int 
TemperatureF 
=>  "
$num# %
+& '
(( )
int) ,
), -
(- .
TemperatureC. :
/; <
$num= C
)C D
;D E
public 
string 
Summary 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} 