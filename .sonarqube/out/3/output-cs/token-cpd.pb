ï

DF:\Documento\GitHub\Proyecto-LDS\Logica\ActualizarUsuarioResponse.cs
	namespace 	
Logica
 
{ 
public 

class %
ActualizarUsuarioResponse *
{ 
public 
string 
Mensaje 
{ 
get  #
;# $
set% (
;( )
}* +
public 
bool 
Error 
{ 
get 
;  
set! $
;$ %
}& '
public		 
User		 
Usuario		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
public

 %
ActualizarUsuarioResponse

 (
(

( )
User

) -
usuario

. 5
)

5 6
{ 	
Error 
= 
false 
; 
Usuario 
= 
usuario 
; 
} 	
public %
ActualizarUsuarioResponse (
(( )
string) /
mensaje0 7
)7 8
{ 	
Error 
= 
true 
; 
Mensaje 
= 
mensaje 
; 
} 	
} 
} Û

CF:\Documento\GitHub\Proyecto-LDS\Logica\ConsultarHotelesResponse.cs
	namespace 	
Logica
 
{ 
public 

class $
ConsultarHotelesResponse )
{ 
public 
bool 
Error 
{ 
get 
;  
set! $
;$ %
}& '
public		 
string		 
Mensaje		 
{		 
get		  #
;		# $
set		% (
;		( )
}		* +
public

 
List

 
<

 
Hotel

 
>

 
Hoteles

 "
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
public $
ConsultarHotelesResponse '
(' (
List( ,
<, -
Hotel- 2
>2 3
hoteles4 ;
); <
{ 	
Error 
= 
false 
; 
Hoteles 
= 
hoteles 
; 
} 	
public $
ConsultarHotelesResponse '
(' (
string( .
mensaje/ 6
)6 7
{ 	
Error 
= 
true 
; 
Mensaje 
= 
mensaje 
; 
} 	
} 
} ı

CF:\Documento\GitHub\Proyecto-LDS\Logica\ConsultarUsuarioResponse.cs
	namespace 	
Logica
 
{ 
public 

class $
ConsultarUsuarioResponse )
{ 
public 
bool 
Error 
{ 
get 
;  
set! $
;$ %
}& '
public		 
string		 
Mensaje		 
{		 
get		  #
;		# $
set		% (
;		( )
}		* +
public

 
List

 
<

 
User

 
>

 
Usuarios

 "
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
public $
ConsultarUsuarioResponse '
(' (
List( ,
<, -
User- 1
>1 2
usuarios3 ;
); <
{ 	
Error 
= 
false 
; 
Usuarios 
= 
usuarios 
;  
} 	
public $
ConsultarUsuarioResponse '
(' (
string( .
mensaje/ 6
)6 7
{ 	
Error 
= 
true 
; 
Mensaje 
= 
mensaje 
; 
} 	
} 
} ì
FF:\Documento\GitHub\Proyecto-LDS\Logica\ConsultarUtilidadesResponse.cs
	namespace 	
Logica
 
{ 
public 

class '
ConsultarUtilidadesResponse ,
{- .
public 
bool 
Error 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
Mensaje 
{ 
get  #
;# $
set% (
;( )
}* +
public 
List 
< 
Utilidad 
> 

Utilidades (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public

 '
ConsultarUtilidadesResponse

 *
(

+ ,
List

, 0
<

0 1
Utilidad

1 9
>

9 :

utilidades

; E
)

E F
{

G H
Error 
= 
false 
; 

Utilidades 
= 

utilidades #
;# $
} 	
public '
ConsultarUtilidadesResponse *
(* +
string+ 1
mensaje2 9
)9 :
{ 	
Error 
= 
true 
; 
Mensaje 
= 
mensaje 
; 
} 	
} 
} ˚	
?F:\Documento\GitHub\Proyecto-LDS\Logica\GuardarHotelResponse.cs
	namespace 	
Logica
 
{ 
public 

class  
GuardarHotelResponse %
{ 
public  
GuardarHotelResponse #
(# $
Hotel$ )
hotel* /
)/ 0
{ 	
Error		 
=		 
false		 
;		 
Hotel

 
=

 
hotel

 
;

 
} 	
public  
GuardarHotelResponse #
(# $
string$ *
mensaje+ 2
)2 3
{ 	
Error 
= 
true 
; 
Mensaje 
= 
mensaje 
; 
} 	
public 
bool 
Error 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
Mensaje 
{ 
get  #
;# $
set% (
;( )
}* +
public 
Hotel 
Hotel 
{ 
get  
;  !
set" %
;% &
}' (
} 
} à

@F:\Documento\GitHub\Proyecto-LDS\Logica\GuardarUsuarioRespose.cs
	namespace 	
Logica
 
{ 
public 

class "
GuardarUsuarioResponse '
{ 
public "
GuardarUsuarioResponse %
(% &
User& *
usuario+ 2
)2 3
{ 	
Error		 
=		 
false		 
;		 
Usuario

 
=

 
usuario

 
;

 
} 	
public "
GuardarUsuarioResponse %
(% &
string& ,
mensaje- 4
)4 5
{ 	
Error 
= 
true 
; 
Mensaje 
= 
mensaje 
; 
} 	
public 
bool 
Error 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
Mensaje 
{ 
get  #
;# $
set% (
;( )
}* +
public 
User 
Usuario 
{ 
get !
;! "
set# &
;& '
}( )
} 
} °

DF:\Documento\GitHub\Proyecto-LDS\Logica\GuardarUtilidadesResponse.cs
	namespace 	
Logica
 
{ 
public 

class %
GuardarUtilidadesResponse *
{ 
public 
bool 
Error 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
Mensaje 
{ 
get  #
;# $
set% (
;( )
}* +
public		 
Utilidad		 
Utilidad		  
{		! "
get		# &
;		& '
set		( +
;		+ ,
}		- .
public %
GuardarUtilidadesResponse (
(( )
Utilidad) 1
utilidad2 :
): ;
{ 	
Error 
= 
false 
; 
Utilidad 
= 
utilidad 
;  
} 	
public %
GuardarUtilidadesResponse (
(( )
string) /
mensaje0 7
)7 8
{ 	
Error 
= 
true 
; 
Mensaje 
= 
mensaje 
; 
} 	
} 
} ˘?
7F:\Documento\GitHub\Proyecto-LDS\Logica\HotelService.cs
	namespace 	
Logica
 
{ 
public		 

class		 
HotelService		 
{		 
private

 
readonly

  
LogisticaSinuContext

 /
_Context

1 9
;

9 :
public 
HotelService 
(  
LogisticaSinuContext 1
_context3 ;
); <
{= >
_Context 
= 
_context 
;  
} 	
public  
GuardarHotelResponse #
Guardar$ +
(, -
Hotel- 2
hotel3 8
)8 9
{: ;
try 
{ 
string 
MensajeEmail #
=$ %
string& ,
., -
Empty- 2
;2 3
Email 
email 
= 
new !
Email" '
(( )
)) *
;* +
var 
HotelBuscado  
=! "
_Context# +
.+ ,
Hoteles, 3
.3 4
Find4 8
(9 :
hotel: ?
.? @
Nit@ C
)C D
;D E
if 
( 
HotelBuscado  
!=! #
null$ (
)( )
{* +
return 
new  
GuardarHotelResponse 3
(4 5
$str5 Z
)Z [
;[ \
} 
_Context 
. 
Hoteles  
.  !
Add! $
(% &
hotel& +
)+ ,
;, -
_Context 
. 
SaveChanges $
(% &
)& '
;' (
MensajeEmail 
= 
email $
.$ %
EnviarEmail% 0
(1 2
hotel2 7
.7 8
CorreoElectronico8 I
,I J
EscribirCuerpoK Y
(Y Z
hotelZ _
._ `
Nombre` f
)f g
,g h
EscribirEncabezadoh z
(z {
){ |
)| }
;} ~
return 
new  
GuardarHotelResponse /
(0 1
hotel1 6
)6 7
;7 8
} 
catch 
( 
	Exception 
e  
)  !
{" #
return 
new  
GuardarHotelResponse /
(0 1
$"1 3$
Error de la Aplicacion: 3 K
{K L
eL M
.M N
MessageN U
}U V
"V W
)W X
;X Y
} 
} 	
public   
string   
EscribirEncabezado   (
(  ( )
)  ) *
{  * +
return!! 
$str!! '
+!!( )
DateTime!!* 2
.!!2 3
Now!!3 6
.!!6 7
ToString!!7 ?
(!!@ A
$str!!A V
)!!V W
;!!W X
}"" 	
public## 
string## 
EscribirCuerpo## $
(##$ %
string##% +
nombre##, 2
)##2 3
{##3 4
return$$ 
$"$$ 
<b> $$ 
{$$ 
nombre$$ !
}$$" #
	</b> <br $$# ,
"$$, -
+$$. /
$"%% >
2 > se ha realizado su registro Sartisfactoriamente%% D
"%%D E
;%%E F
}&& 	
public(( $
ConsultarHotelesResponse(( '
	Consultar((( 1
(((2 3
)((3 4
{((5 6
try)) 
{)) 
List** 
<** 
Hotel** 
>** 
hoteles** #
=**$ %
_Context**& .
.**. /
Hoteles**/ 6
.**6 7
ToList**7 =
(**> ?
)**? @
;**@ A
return++ 
new++ $
ConsultarHotelesResponse++ 3
(++4 5
hoteles++5 <
)++< =
;++= >
},, 
catch,, 
(,, 
	Exception,, 
e,,  
),,  !
{,," #
return-- 
new-- $
ConsultarHotelesResponse-- 3
(--4 5
$"--5 7#
Error de la Aplicaion: --7 N
{--N O
e--O P
.--P Q
Message--Q X
}--X Y
"--Y Z
)--Z [
;--[ \
}.. 
}// 	
public11 
Hotel11 

BuscarxNit11 
(11  !
string11! '
nit11( +
)11+ ,
{11- .
Hotel22 
hotel22 
=22 
_Context22 "
.22" #
Hoteles22# *
.22* +
Find22+ /
(220 1
nit221 4
)224 5
;225 6
return33 
hotel33 
;33 
}44 	
public66 
string66 
	Modificar66 
(66  !
Hotel66! &

hotelNuevo66' 1
)661 2
{663 4
try77 
{77 
var88 

hotelViejo88 
=88  
_Context88! )
.88) *
Hoteles88* 1
.881 2
Find882 6
(887 8

hotelNuevo888 B
.88B C
Nit88C F
)88F G
;88G H
if99 
(99 

hotelViejo99 
!=99 !
null99" &
)99& '
{99( )

hotelViejo:: 
.:: 
Nombre:: %
=::& '

hotelNuevo::( 2
.::2 3
Nombre::3 9
;::9 :

hotelViejo;; 
.;; 
Pais;; #
=;;$ %

hotelNuevo;;& 0
.;;0 1
Pais;;1 5
;;;5 6

hotelViejo<< 
.<< 
Ciudad<< %
=<<& '

hotelNuevo<<( 2
.<<2 3
Ciudad<<3 9
;<<9 :

hotelViejo== 
.== 
	Direccion== (
===) *

hotelNuevo==+ 5
.==5 6
	Direccion==6 ?
;==? @

hotelViejo>> 
.>> 
Barrio>> %
=>>& '

hotelNuevo>>( 2
.>>2 3
Barrio>>3 9
;>>9 :

hotelViejo?? 
.?? 
Telefono?? '
=??( )

hotelNuevo??* 4
.??4 5
Telefono??5 =
;??= >

hotelViejo@@ 
.@@ 
CorreoElectronico@@ 0
=@@1 2

hotelNuevo@@3 =
.@@= >
CorreoElectronico@@> O
;@@O P

hotelViejoAA 
.AA 
SitioWebAA '
=AA( )

hotelNuevoAA* 4
.AA4 5
SitioWebAA5 =
;AA= >

hotelViejoBB 
.BB 
CategoriaHotelBB -
=BB. /

hotelNuevoBB0 :
.BB: ;
CategoriaHotelBB; I
;BBI J

hotelViejoCC 
.CC 
TipoHabitacionCC -
=CC. /

hotelNuevoCC0 :
.CC: ;
TipoHabitacionCC; I
;CCI J
_ContextDD 
.DD 
HotelesDD $
.DD$ %
UpdateDD% +
(DD, -

hotelViejoDD- 7
)DD7 8
;DD8 9
_ContextEE 
.EE 
SaveChangesEE (
(EE) *
)EE* +
;EE+ ,
returnFF 
(FF 
$"FF 
El registro FF *
{FF* +

hotelNuevoFF+ 5
.FF5 6
NombreFF6 <
}FF< =1
% se ha modificado satisfactoriamente.FF= b
"FFb c
)FFc d
;FFd e
}GG 
elseGG 
{GG 
returnHH 
(HH 
$"HH 
Lo sentimos, HH +
{HH+ ,

hotelNuevoHH, 6
.HH6 7
NitHH7 :
}HH: ;(
 no se encuentra registrada.HH; W
"HHW X
)HHX Y
;HHY Z
}II 
}JJ 
catchJJ 
(JJ 
	ExceptionJJ 
eJJ  
)JJ  !
{JJ" #
returnLL 
$"LL %
Error de la Aplicaci√≥n: LL 1
{LL1 2
eLL2 3
.LL3 4
MessageLL4 ;
}LL; <
"LL< =
;LL= >
}MM 
}OO 	
}QQ 
}RR ≥
UF:\Documento\GitHub\Proyecto-LDS\Logica\Restaurantes\ActualizarRestauranteResponse.cs
	namespace 	
Logica
 
. 
Restaurantes 
{ 
public 

class )
ActualizarRestauranteResponse .
{ 
} 
}		 ∑
WF:\Documento\GitHub\Proyecto-LDS\Logica\Restaurantes\ConsultarNitRestauranteResponse.cs
	namespace 	
Logica
 
. 
Restaurantes 
{ 
public 

class +
ConsultarNitRestauranteResponse 0
{ 
} 
} Ÿ
TF:\Documento\GitHub\Proyecto-LDS\Logica\Restaurantes\ConsultarRestauranteResponse.cs
	namespace 	
Logica
 
. 
Restaurantes 
{ 
public 

class (
ConsultarRestauranteResponse -
{ 
public 
bool 
Error 
{ 
get 
;  
set! $
;$ %
}& '
public		 
string		 
Mensaje		 
{		 
get		  #
;		# $
set		% (
;		( )
}		* +
public

 
List

 
<

 
Restaurante

 
>

  
Restaurantes

! -
{

. /
get

0 3
;

3 4
set

5 8
;

8 9
}

: ;
public (
ConsultarRestauranteResponse +
(+ ,
List, 0
<0 1
Restaurante1 <
>< =
restaurantes> J
)J K
{ 	
Error 
= 
false 
; 
Restaurantes 
= 
restaurantes '
;' (
} 	
public (
ConsultarRestauranteResponse +
(+ ,
string, 2
mensaje3 :
): ;
{ 	
Error 
= 
true 
; 
Mensaje 
= 
mensaje 
; 
} 	
} 
} Ì

RF:\Documento\GitHub\Proyecto-LDS\Logica\Restaurantes\GuardarRestauranteResponse.cs
	namespace 	
Logica
 
. 
Restaurantes 
{ 
public 

class &
GuardarRestauranteResponse +
{ 
public 
bool 
Error 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
Mensaje 
{ 
get  #
;# $
set% (
;( )
}* +
public 
Restaurante 
Restaurante &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public		 &
GuardarRestauranteResponse		 )
(		) *
Restaurante		* 5
restaurante		6 A
)		A B
{

 	
Error 
= 
false 
; 
Restaurante 
= 
restaurante %
;% &
} 	
public &
GuardarRestauranteResponse )
() *
string* 0
mensaje1 8
)8 9
{ 	
Error 
= 
true 
; 
Mensaje 
= 
mensaje 
; 
} 	
} 
} €A
JF:\Documento\GitHub\Proyecto-LDS\Logica\Restaurantes\RestauranteService.cs
	namespace		 	
Logica		
 
.		 
Restaurantes		 
{		 
public

 

class

 
RestauranteService

 #
{

$ %
private 
readonly  
LogisticaSinuContext /
_Context1 9
;9 :
public 
RestauranteService !
(" # 
LogisticaSinuContext# 7
_context9 A
)A B
{C D
_Context 
= 
_context 
;  
} 	
public &
GuardarRestauranteResponse )
Guardar* 1
(2 3
Restaurante3 >
restaurante? J
)J K
{L M
try 
{ 
string 
MensajeEmail #
=$ %
string& ,
., -
Empty- 2
;2 3
Email 
email 
= 
new !
Email" '
(( )
)) *
;* +
var 
RestauranteBuscado &
=' (
_Context) 1
.1 2
Restaurantes2 >
.> ?
Find? C
(D E
restauranteE P
.P Q
NitQ T
)T U
;U V
if 
( 
RestauranteBuscado &
!=' )
null* .
). /
{0 1
return 
new &
GuardarRestauranteResponse 9
(: ;
$str; f
)f g
;g h
} 
_Context 
. 
Restaurantes %
.% &
Add& )
(* +
restaurante+ 6
)6 7
;7 8
_Context 
. 
SaveChanges $
(% &
)& '
;' (
MensajeEmail 
= 
email  %
.% &
EnviarEmail& 1
(2 3
restaurante3 >
.> ?
CorreoElectronico? P
,P Q
EscribirCuerpoR `
(` a
restaurantea l
.l m
Nombrem s
)s t
,t u
EscribirEncabezado	u á
(
á à
)
à â
)
â ä
;
ä ã
return 
new &
GuardarRestauranteResponse 5
(6 7
restaurante7 B
)B C
;C D
} 
catch 
( 
	Exception 
e  
)  !
{" #
return 
new &
GuardarRestauranteResponse 5
(6 7
$"7 9$
Error de la Aplicacion: 9 Q
{Q R
eR S
.S T
MessageT [
}[ \
"\ ]
)] ^
;^ _
} 
} 	
public   
string   
EscribirEncabezado   (
(  ( )
)  ) *
{  * +
return!! 
$str!! -
+!!. /
DateTime!!0 8
.!!8 9
Now!!9 <
.!!< =
ToString!!= E
(!!F G
$str!!G \
)!!\ ]
;!!] ^
}"" 	
public## 
string## 
EscribirCuerpo## $
(##$ %
string##% +
nombre##, 2
)##2 3
{##3 4
return$$ 
$"$$ 
<b>$$ 
{$$ 
nombre$$  
}$$! "
	</b> <br $$" +
"$$+ ,
+$$- .
$"%% >
2 > se ha realizado su registro Sartisfactoriamente%% D
"%%D E
;%%E F
}&& 	
public'' (
ConsultarRestauranteResponse'' +
	Consultar'', 5
(''6 7
)''7 8
{''9 :
try(( 
{(( 
List)) 
<)) 
Restaurante))  
>))  !
restaurantes))" .
=))/ 0
_Context))1 9
.))9 :
Restaurantes)): F
.))F G
ToList))G M
())N O
)))O P
;))P Q
return** 
new** (
ConsultarRestauranteResponse** 7
(**8 9
restaurantes**9 E
)**E F
;**F G
}++ 
catch++ 
(++ 
	Exception++ 
e++  
)++  !
{++" #
return,, 
new,, (
ConsultarRestauranteResponse,, 7
(,,8 9
$",,9 ;#
Error de la Aplicaion: ,,; R
{,,R S
e,,S T
.,,T U
Message,,U \
},,\ ]
",,] ^
),,^ _
;,,_ `
}-- 
}.. 	
public00 
Restaurante00 

BuscarxNit00 %
(00& '
string00' -
nit00. 1
)001 2
{003 4
Restaurante11 
restaurante11 #
=11$ %
_Context11& .
.11. /
Restaurantes11/ ;
.11; <
Find11< @
(11A B
nit11B E
)11E F
;11F G
return22 
restaurante22 
;22 
}33 	
public44 
string44 
	Modificar44 
(44  !
Restaurante44! ,
restauranteNuevo44- =
)44= >
{44? @
try55 
{55 
var66 
restauranteViejo66 $
=66% &
_Context66' /
.66/ 0
Restaurantes660 <
.66< =
Find66= A
(66B C
restauranteNuevo66C S
.66S T
Nit66T W
)66W X
;66X Y
if77 
(77 
restauranteViejo77 $
!=77% '
null77( ,
)77, -
{77. /
restauranteViejo88 $
.88$ %
Nombre88% +
=88, -
restauranteNuevo88. >
.88> ?
Nombre88? E
;88E F
restauranteViejo99 $
.99$ %
Pais99% )
=99* +
restauranteNuevo99, <
.99< =
Pais99= A
;99A B
restauranteViejo:: $
.::$ %
Ciudad::% +
=::, -
restauranteNuevo::. >
.::> ?
Ciudad::? E
;::E F
restauranteViejo;; $
.;;$ %
	Direccion;;% .
=;;/ 0
restauranteNuevo;;1 A
.;;A B
	Direccion;;B K
;;;K L
restauranteViejo<< $
.<<$ %
Barrio<<% +
=<<, -
restauranteNuevo<<. >
.<<> ?
Barrio<<? E
;<<E F
restauranteViejo== $
.==$ %
Telefono==% -
===. /
restauranteNuevo==0 @
.==@ A
Telefono==A I
;==I J
restauranteViejo>> $
.>>$ %
CorreoElectronico>>% 6
=>>7 8
restauranteNuevo>>9 I
.>>I J
CorreoElectronico>>J [
;>>[ \
restauranteViejo?? $
.??$ %
SitioWeb??% -
=??. /
restauranteNuevo??0 @
.??@ A
SitioWeb??A I
;??I J
restauranteViejo@@ $
.@@$ %
ClaseComida@@% 0
=@@0 1
restauranteNuevo@@1 A
.@@A B
ClaseComida@@B M
;@@M N
_ContextAA 
.AA 
RestaurantesAA )
.AA) *
UpdateAA* 0
(AA1 2
restauranteViejoAA2 B
)AAB C
;AAC D
_ContextBB 
.BB 
SaveChangesBB (
(BB( )
)BB) *
;BB* +
returnCC 
(CC 
$"CC 
El registro CC *
{CC* +
restauranteNuevoCC+ ;
.CC; <
NombreCC< B
}CCB C1
% se ha modificado satisfactoriamente.CCC h
"CCh i
)CCi j
;CCj k
}DD 
elseDD 
{DD 
returnEE 
(EE 
$"EE 
Lo sentimos, EE +
{EE+ ,
restauranteNuevoEE, <
.EE< =
NitEE= @
}EE@ A(
 no se encuentra registrada.EEA ]
"EE] ^
)EE^ _
;EE_ `
}FF 
}GG 
catchGG 
(GG 
	ExceptionGG 
eGG  
)GG  !
{GG" #
returnHH 
$"HH %
Error de la Aplicaci√≥n: HH 1
{HH1 2
eHH2 3
.HH3 4
MessageHH4 ;
}HH; <
"HH< =
;HH= >
}II 
}JJ 	
}LL 
}MM ’

OF:\Documento\GitHub\Proyecto-LDS\Logica\Servicios\ActualizarServicioResponse.cs
	namespace 	
Logica
 
. 
	Servicios 
{ 
public 

class &
ActualizarServicioResponse +
{ 
public 
string 
Mensaje 
{ 
get  #
;# $
set% (
;( )
}* +
public 
bool 
Error 
{ 
get 
;  
set! $
;$ %
}& '
public		 
Servicio		 
Servicio		  
{		! "
get		# &
;		& '
set		( +
;		+ ,
}		- .
public

 &
ActualizarServicioResponse

 )
(

) *
string

* 0
mensaje

1 8
)

8 9
{ 	
Error 
= 
true 
; 
Mensaje 
= 
mensaje 
; 
} 	
public &
ActualizarServicioResponse )
() *
Servicio* 2
servicio3 ;
); <
{ 	
Error 
= 
false 
; 
Servicio 
= 
servicio 
;  
} 	
} 
} µ
NF:\Documento\GitHub\Proyecto-LDS\Logica\Servicios\ConsultarServicioResponse.cs
	namespace 	
Logica
 
. 
	Servicios 
{ 
public 

class %
ConsultarServicioResponse *
{ 
public 
string 
Mensaje 
{ 
get  #
;# $
set% (
;( )
}* +
public		 
bool		 
Error		 
{		 
get		 
;		  
set		! $
;		$ %
}		& '
public

 
List

 
<

 
Servicio

 
>

 
	Servicios

 '
{

( )
get

* -
;

- .
set

/ 2
;

2 3
}

4 5
public %
ConsultarServicioResponse (
(( )
List) -
<- .
Servicio. 6
>6 7
	servicios8 A
)A B
{ 	
Error 
= 
false 
; 
	Servicios 
= 
	servicios !
;! "
} 	
public %
ConsultarServicioResponse (
(( )
string) /
mensaje0 7
)7 8
{ 	
Error 
= 
true 
; 
Mensaje 
= 
mensaje 
; 
} 	
} 
} …

LF:\Documento\GitHub\Proyecto-LDS\Logica\Servicios\GuardarServicioResponse.cs
	namespace 	
Logica
 
. 
	Servicios 
{ 
public 

class #
GuardarServicioResponse (
{ 
public 
bool 
Error 
{ 
get 
;  
set! $
;$ %
}& '
public 
Servicio 
Servicio  
{! "
get# &
;& '
set( +
;+ ,
}- .
public		 
string		 
Mensaje		 
{		 
get		  #
;		# $
set		% (
;		( )
}		* +
public

 #
GuardarServicioResponse

 &
(

& '
string

' -
mensaje

. 5
)

5 6
{ 	
Error 
= 
true 
; 
Mensaje 
= 
mensaje 
; 
} 	
public #
GuardarServicioResponse &
(& '
Servicio' /
servicio0 8
)8 9
{ 	
Error 
= 
false 
; 
Servicio 
= 
servicio 
;  
} 	
} 
} ›R
DF:\Documento\GitHub\Proyecto-LDS\Logica\Servicios\ServicioService.cs
	namespace 	
Logica
 
. 
	Servicios 
{ 
public		 

class		 
ServicioService		  
{		! "
private

 
readonly

  
LogisticaSinuContext

 -
_context

/ 7
;

7 8
public 
ServicioService 
(   
LogisticaSinuContext  4
context5 <
)< =
{> ?
_context 
= 
context 
; 
} 	
public #
GuardarServicioResponse &
Guardar' .
(/ 0
Servicio0 8
servicio9 A
)A B
{C D
try 
{ 
string 
mensajeEmail #
=$ %
string& ,
., -
Empty- 2
;2 3
Email 
email 
= 
new !
Email" '
(( )
)) *
;* +
var 
servicioBuscado #
=$ %
_context& .
.. /
	Servicios/ 8
.8 9
Find9 =
(> ?
servicio? G
.G H

IdServicioH R
)R S
;S T
if 
( 
servicioBuscado #
!=$ &
null' +
)+ ,
{- .
return 
new #
GuardarServicioResponse 6
(7 8
$str8 ]
)] ^
;^ _
} 
_context 
. 
	Servicios "
." #
Add# &
(' (
servicio( 0
)0 1
;1 2
_context 
. 
SaveChanges $
(% &
)& '
;' (
mensajeEmail 
= 
email $
.$ %
EnviarEmail% 0
(1 2
servicio2 :
.: ;
Correo; A
,A B
EscribirCuerpoC Q
(R S
servicioS [
.[ \
NombreCliente\ i
,i j
$strk v
,v w
servicio	x Ä
.
Ä Å

IdServicio
Å ã
)
ã å
,
å ç 
EscribirEncabezado
é †
(
° ¢
$str
¢ ≠
)
≠ Æ
)
Æ Ø
;
Ø ∞
return 
new #
GuardarServicioResponse 2
(3 4
servicio4 <
)< =
;= >
} 
catch 
( 
	Exception 
e  
)  !
{" #
return 
new #
GuardarServicioResponse 2
(3 4
$"4 6#
Error de la aplicacion 6 M
{M N
eN O
.O P
MessageP W
}W X
"X Y
)Y Z
;Z [
} 
} 	
public   
string   
EscribirEncabezado   (
(  ) *
string  * 0
tipo  1 5
)  5 6
{  7 8
if!! 
(!! 
tipo!! 
==!! 
$str!! #
)!!# $
{!!% &
return"" 
$str"" /
+""0 1
DateTime""2 :
."": ;
Now""; >
.""> ?
ToString""? G
(""H I
$str""I ^
)""^ _
;""_ `
}## 
return$$ 
$str$$ 8
+$$9 :
DateTime$$; C
.$$C D
Now$$D G
.$$G H
ToString$$H P
($$Q R
$str$$R g
)$$g h
;$$h i
}%% 	
public&& 
string&& 
EscribirCuerpo&& $
(&&% &
string&&& ,
nombre&&- 3
,&&3 4
string&&5 ;
tipo&&< @
,&&@ A
string&&B H
numero&&I O
)&&O P
{&&Q R
if'' 
('' 
tipo'' 
=='' 
$str'' #
)''# $
{''% &
return(( 
$"(( J
><b>¬°¬°Bienvenido a log√≠stica educativa del Sin√∫¬°¬°</b><br>(( Q
"((Q R
+((S T
$")) 
Hola )) 
{)) 
nombre)) "
}))" #
.<br>))# (
"))( )
+))* +
$str** m
+**n o
$"++ P
DTenemos el gusto de informarle que su solicitud de servicio n√∫mero ++ Y
{++Y Z
numero++Z `
}++` a+
 fue registrada con √©xito.<br>++a 
"	++ Ä
+
++Å Ç
$str	,, Ñ
+
,,Ö Ü
$str-- }
;--} ~
}.. 
if// 
(// 
tipo// 
==// 
$str// "
)//" #
{//$ %
return00 
$str00 Q
+00R S
$"11 
Hola 11 
{11 
nombre11 "
}11" #
 <br>11# (
"11( )
+11* +
$str22 l
+22m n
$"33 P
DTenemos el gusto de informarle que su solicitud de servicio n√∫mero 33 Y
{33Y Z
numero33Z `
}33` a!
 fue <b>aceptada</b>.33a v
"33v w
+33x y
$str44 l
+44m n
$str55 }
;55} ~
}66 
return77 
$str77 M
+77N O
$"88 
Hola 88 
{88 
nombre88 
}88 
<br>88 #
"88# $
+88% &
$str99 h
+99i j
$":: ?
3Le informamos que su solicitud de servicio n√∫mero :: D
{::D E
numero::E K
}::K LW
J fue rechazada por el momento no podemos ofrecerle nuestros servicios.<br>	::L ñ
"
::ñ ó
+
::ò ô
$str	;; õ
+
;;ú ù
$str<< y
;<<y z
}>> 	
public@@ %
ConsultarServicioResponse@@ (
	Consultar@@) 2
(@@3 4
)@@4 5
{@@6 7
tryAA 
{AA 
ListBB 
<BB 
ServicioBB 
>BB 
	serviciosBB (
=BB) *
_contextBB+ 3
.BB3 4
	ServiciosBB4 =
.BB= >
ToListBB> D
(BBE F
)BBF G
;BBG H
returnCC 
newCC %
ConsultarServicioResponseCC 4
(CC5 6
	serviciosCC6 ?
)CC? @
;CC@ A
}DD 
catchDD 
(DD 
	ExceptionDD 
eDD  
)DD  !
{DD" #
returnEE 
newEE %
ConsultarServicioResponseEE 4
(EE5 6
$"EE6 8 
Error de aplicacion EE8 L
{EEL M
eEEM N
.EEN O
MessageEEO V
}EEV W
"EEW X
)EEX Y
;EEY Z
}FF 
}GG 	
publicII 
intII 
ConsultarCantidadII $
(II% &
stringII& ,
identificacionII- ;
)II; <
{II= >
intJJ 
cantidadJJ 
=JJ 
_contextJJ #
.JJ# $
	ServiciosJJ$ -
.JJ- .
CountJJ. 3
(JJ4 5
sJJ5 6
=>JJ7 9
sJJ: ;
.JJ; <
	IdClienteJJ< E
==JJF H
identificacionJJI W
)JJW X
;JJX Y
cantidadKK 
+=KK 
_contextKK  
.KK  !
MovilidadesKK! ,
.KK, -
CountKK- 2
(KK3 4
sKK4 5
=>KK6 8
sKK9 :
.KK: ;
	IdClienteKK; D
==KKE G
identificacionKKH V
)KKV W
;KKW X
returnLL 
cantidadLL 
;LL 
}MM 	
publicOO 
ServicioOO !
BuscarxIdentificacionOO -
(OO. /
stringOO/ 5
identificacionOO6 D
)OOD E
{OOF G
varPP 
servicioPP 
=PP 
_contextPP $
.PP$ %
	ServiciosPP% .
.PP. /
FindPP/ 3
(PP4 5
identificacionPP5 C
)PPC D
;PPD E
returnQQ 
servicioQQ 
;QQ 
}RR 	
publicTT &
ActualizarServicioResponseTT )
	ModificarTT* 3
(TT4 5
ServicioTT5 =
servicioNuevoTT> K
)TTK L
{TTM N
stringVV 
mensajeEmailVV 
=VV  !
stringVV" (
.VV( )
EmptyVV) .
;VV. /
EmailWW 
emailWW 
=WW 
newWW 
EmailWW #
(WW$ %
)WW% &
;WW& '
varXX 
servicioViejoXX 
=XX 
_contextXX  (
.XX( )
	ServiciosXX) 2
.XX2 3
FindXX3 7
(XX8 9
servicioNuevoXX9 F
.XXF G

IdServicioXXG Q
)XXQ R
;XXR S
ifZZ 
(ZZ 
servicioViejoZZ 
!=ZZ  
nullZZ! %
)ZZ% &
{ZZ' (
servicioViejo\\ 
.\\ 
Estado\\ $
=\\% &
servicioNuevo\\' 4
.\\4 5
Estado\\5 ;
;\\; <
_context]] 
.]] 
	Servicios]] "
.]]" #
Update]]# )
(]]* +
servicioViejo]]+ 8
)]]8 9
;]]9 :
_context^^ 
.^^ 
SaveChanges^^ $
(^^% &
)^^& '
;^^' (
mensajeEmail__ 
=__ 
email__ $
.__$ %
EnviarEmail__% 0
(__1 2
servicioNuevo__2 ?
.__? @
Correo__@ F
,__F G
EscribirCuerpo`` 
(``  
servicioViejo``  -
.``- .
NombreCliente``. ;
,``; <
servicioViejo``= J
.``J K
Estado``K Q
,``Q R
servicioViejo``S `
.``` a

IdServicio``a k
)``k l
,``l m
EscribirEncabezadoaa "
(aa# $
$straa$ &
)aa& '
)aa' (
;aa( )
returnbb 
newbb &
ActualizarServicioResponsebb 5
(bb6 7
servicioViejobb7 D
)bbD E
;bbE F
}dd 
elsedd 
{dd 
returnff 
newff &
ActualizarServicioResponseff 5
(ff6 7
$"ff7 9
Lo sentimos, ff9 F
{ffF G
servicioViejoffG T
.ffT U

IdServicioffU _
}ff_ `(
 no se encuentra registrada.ff` |
"ff| }
)ff} ~
;ff~ 
}hh 
}jj 	
}kk 
}ll ©
cF:\Documento\GitHub\Proyecto-LDS\Logica\SMovilidadAcademica\ActualizarMovilidadAcademicaResponse.cs
	namespace 	
Logica
 
. 
SMovilidadAcademica $
{ 
public 

class 0
$ActualizarMovilidadAcademicaResponse 5
{ 
public 
bool 
Error 
{ 
get 
;  
set! $
;$ %
}& '
public 
MovilidadAcademica !
	Movilidad" +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
public		 
string		 
Mensaje		 
{		 
get		  #
;		# $
set		% (
;		( )
}		* +
public 0
$ActualizarMovilidadAcademicaResponse 3
(3 4
string4 :
mensaje; B
)B C
{ 	
Error 
= 
true 
; 
Mensaje 
= 
mensaje 
; 
} 	
public 0
$ActualizarMovilidadAcademicaResponse 3
(3 4
MovilidadAcademica4 F
	movilidadG P
)P Q
{ 	
Error 
= 
false 
; 
	Movilidad 
= 
	movilidad !
;! "
} 	
} 
} è
bF:\Documento\GitHub\Proyecto-LDS\Logica\SMovilidadAcademica\ConsultarMovilidadAcademicaResponse.cs
	namespace 	
Logica
 
. 
SMovilidadAcademica $
{% &
public 

class /
#ConsultarMovilidadAcademicaResponse 4
{5 6
public		 
string		 
Mensaje		 
{		 
get		  #
;		# $
set		% (
;		( )
}		* +
public

 
bool

 
Error

 
{

 
get

 
;

  
set

! $
;

$ %
}

& '
public 
List 
< 
MovilidadAcademica &
>& '
Movilidades( 3
{4 5
get6 9
;9 :
set; >
;> ?
}@ A
public /
#ConsultarMovilidadAcademicaResponse 2
(3 4
List4 8
<8 9
MovilidadAcademica9 K
>K L
movilidadesM X
)X Y
{Z [
Error 
= 
false 
; 
Movilidades 
= 
movilidades %
;% &
} 	
public /
#ConsultarMovilidadAcademicaResponse 2
(3 4
string4 :
mensaje; B
)B C
{D E
Error 
= 
true 
; 
Mensaje 
= 
mensaje 
; 
} 	
} 
} ù
`F:\Documento\GitHub\Proyecto-LDS\Logica\SMovilidadAcademica\GuardarMovilidadAcademicaResponse.cs
	namespace 	
Logica
 
. 
SMovilidadAcademica $
{ 
public 

class -
!GuardarMovilidadAcademicaResponse 2
{ 
public 
bool 
Error 
{ 
get 
;  
set! $
;$ %
}& '
public 
MovilidadAcademica !
	Movilidad" +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
public		 
string		 
Mensaje		 
{		 
get		  #
;		# $
set		% (
;		( )
}		* +
public -
!GuardarMovilidadAcademicaResponse 0
(0 1
string1 7
mensaje8 ?
)? @
{ 	
Error 
= 
true 
; 
Mensaje 
= 
mensaje 
; 
} 	
public -
!GuardarMovilidadAcademicaResponse 0
(0 1
MovilidadAcademica1 C
	movilidadD M
)M N
{ 	
Error 
= 
false 
; 
	Movilidad 
= 
	movilidad !
;! "
} 	
} 
} ÀQ
XF:\Documento\GitHub\Proyecto-LDS\Logica\SMovilidadAcademica\MovilidadAcademicaService.cs
	namespace 	
Logica
 
. 
SMovilidadAcademica $
{% &
public		 

class		 %
MovilidadAcademicaService		 *
{		+ ,
private

 
readonly

  
LogisticaSinuContext

 -
_context

/ 7
;

7 8
public %
MovilidadAcademicaService (
() * 
LogisticaSinuContext* >
context? F
)F G
{H I
_context 
= 
context 
; 
} 	
public -
!GuardarMovilidadAcademicaResponse 0
Guardar1 8
(9 :
MovilidadAcademica: L
	movilidadM V
)V W
{X Y
try 
{ 
string 
mensajeEmail #
=$ %
string& ,
., -
Empty- 2
;2 3
Email 
email 
= 
new !
Email" '
(( )
)) *
;* +
var 
movilidadBuscada $
=% &
_context' /
./ 0
Movilidades0 ;
.; <
Find< @
(A B
	movilidadB K
.K L
IdMovilidadL W
)W X
;X Y
if 
( 
movilidadBuscada $
!=% '
null( ,
), -
{. /
return 
new -
!GuardarMovilidadAcademicaResponse @
(A B
$strB g
)g h
;h i
} 
_context 
. 
Movilidades $
.$ %
Add% (
() *
	movilidad* 3
)3 4
;4 5
_context 
. 
SaveChanges $
(% &
)& '
;' (
mensajeEmail 
= 
email $
.$ %
EnviarEmail% 0
(1 2
	movilidad2 ;
.; <
Correo< B
,B C
EscribirCuerpoD R
(S T
	movilidadT ]
.] ^
NombreCliente^ k
,k l
$strl w
,w x
	movilidad	x Å
.
Å Ç
IdMovilidad
Ç ç
)
ç é
,
é è 
EscribirEncabezado
ê ¢
(
£ §
$str
§ Ø
)
Ø ∞
)
∞ ±
;
± ≤
return 
new -
!GuardarMovilidadAcademicaResponse <
(= >
	movilidad> G
)G H
;H I
} 
catch 
( 
	Exception 
e  
)  !
{" #
return 
new -
!GuardarMovilidadAcademicaResponse <
(= >
$"> @#
Error de la aplicacion @ W
{W X
eX Y
.Y Z
MessageZ a
}a b
"b c
)c d
;d e
} 
} 	
public   
string   
EscribirEncabezado   (
(  ) *
string  * 0
tipo  1 5
)  5 6
{  7 8
if!! 
(!! 
tipo!! 
==!! 
$str!! #
)!!# $
{!!% &
return"" 
$str"" /
+""0 1
DateTime""2 :
."": ;
Now""; >
.""> ?
ToString""? G
(""H I
$str""I ^
)""^ _
;""_ `
}## 
return$$ 
$str$$ 8
+$$9 :
DateTime$$; C
.$$C D
Now$$D G
.$$G H
ToString$$H P
($$Q R
$str$$R g
)$$g h
;$$h i
}%% 	
public&& 
string&& 
EscribirCuerpo&& $
(&&% &
string&&& ,
nombre&&- 3
,&&3 4
string&&4 :
tipo&&; ?
,&&? @
string&&@ F
numero&&G M
)&&M N
{&&O P
if'' 
('' 
tipo'' 
=='' 
$str'' "
)''" #
{''# $
return(( 
$"(( J
><b>¬°¬°Bienvenido a log√≠stica educativa del Sin√∫¬°¬°</b><br>(( Q
"((Q R
+((R S
$")) 
Hola )) 
{)) 
nombre)) 
})) 
.<br>)) $
"))$ %
+))% &
$str** i
+**i j
$"++ P
DTenemos el gusto de informarle que su solicitud de servicio n√∫mero ++ U
{++U V
numero++V \
}++\ ]+
 fue registrada con √©xito.<br>++] {
"++{ |
+++| }
$str	,, Ä
+
,,Ä Å
$str-- z
;--z {
}.. 
if// 
(// 
tipo// 
==// 
$str// !
)//! "
{//" #
return00 
$str00 Q
+00Q R
$"11 
Hola 11 
{11 
nombre11 
}11 
 <br>11 $
"11$ %
+11% &
$str22 h
+22h i
$"33 P
DTenemos el gusto de informarle que su solicitud de servicio n√∫mero 33 U
{33U V
numero33V \
}33\ ]!
 fue <b>aceptada</b>.33] r
"33r s
+33s t
$str44 h
+44h i
$str55 z
;55z {
}66 
return77 
$str77 M
+77M N
$"88 
Hola 88 
{88 
nombre88 
}88 
<br>88 
"88  
+88  !
$str99 d
+99d e
$":: ?
3Le informamos que su solicitud de servicio n√∫mero :: @
{::@ A
numero::A G
}::G HW
J fue rechazada por el momento no podemos ofrecerle nuestros servicios.<br>	::H í
"
::í ì
+
::ì î
$str	;; ó
+
;;ó ò
$str<< m
;<<m n
}== 	
public>> /
#ConsultarMovilidadAcademicaResponse>> 2
	Consultar>>3 <
(>>= >
)>>> ?
{>>@ A
try?? 
{?? 
List@@ 
<@@ 
MovilidadAcademica@@ '
>@@' (
movilidades@@) 4
=@@5 6
_context@@7 ?
.@@? @
Movilidades@@@ K
.@@K L
ToList@@L R
(@@S T
)@@T U
;@@U V
returnAA 
newAA /
#ConsultarMovilidadAcademicaResponseAA >
(AA? @
movilidadesAA@ K
)AAK L
;AAL M
}BB 
catchBB 
(BB 
	ExceptionBB 
eBB  
)BB  !
{BB" #
returnCC 
newCC /
#ConsultarMovilidadAcademicaResponseCC >
(CC? @
$"CC@ B 
Error de aplicacion CCB V
{CCV W
eCCW X
.CCX Y
MessageCCY `
}CC` a
"CCa b
)CCb c
;CCc d
}DD 
}EE 	
publicGG 
MovilidadAcademicaGG !!
BuscarxIdentificacionGG" 7
(GG8 9
stringGG9 ?
identificacionGG@ N
)GGN O
{GGP Q
varHH 
	movilidadHH 
=HH 
_contextHH %
.HH% &
MovilidadesHH& 1
.HH1 2
FindHH2 6
(HH6 7
identificacionHH7 E
)HHE F
;HHF G
returnII 
	movilidadII 
;II 
}JJ 	
publicLL	 0
$ActualizarMovilidadAcademicaResponseLL 4
	ModificarLL5 >
(LL? @
MovilidadAcademicaLL@ R
movilidadNuevaLLS a
)LLa b
{LLc d
tryMM 
{MM 
stringNN 
mensajeEmailNN #
=NN$ %
stringNN& ,
.NN, -
EmptyNN- 2
;NN2 3
EmailOO 
emailOO 
=OO 
newOO !
EmailOO" '
(OO( )
)OO) *
;OO* +
varPP 
movilidadViejoPP "
=PP# $
_contextPP% -
.PP- .
MovilidadesPP. 9
.PP9 :
FindPP: >
(PP? @
movilidadNuevaPP@ N
.PPN O
IdMovilidadPPO Z
)PPZ [
;PP[ \
ifQQ 
(QQ 
movilidadViejoQQ "
!=QQ# %
nullQQ& *
)QQ* +
{QQ, -
movilidadViejoRR "
.RR" #
EstadoRR# )
=RR* +
movilidadNuevaRR, :
.RR: ;
EstadoRR; A
;RRA B
_contextSS 
.SS 
MovilidadesSS (
.SS( )
UpdateSS) /
(SS0 1
movilidadViejoSS1 ?
)SS? @
;SS@ A
_contextTT 
.TT 
SaveChangesTT (
(TT) *
)TT* +
;TT+ ,
mensajeEmailUU  
=UU! "
emailUU# (
.UU( )
EnviarEmailUU) 4
(UU5 6
movilidadViejoUU6 D
.UUD E
CorreoUUE K
,UUK L
EscribirCuerpoUUM [
(UU\ ]
movilidadViejoUU] k
.UUk l
NombreClienteUUl y
,UUy z
movilidadViejo	UUz à
.
UUà â
Estado
UUâ è
,
UUè ê
movilidadViejo
UUê û
.
UUû ü
IdMovilidad
UUü ™
)
UU™ ´
,
UU´ ¨ 
EscribirEncabezado
UU≠ ø
(
UU¿ ¡
$str
UU¡ Ã
)
UUÃ Õ
)
UUÕ Œ
;
UUŒ œ
returnVV 
newVV 0
$ActualizarMovilidadAcademicaResponseVV C
(VVD E
movilidadViejoVVE S
)VVS T
;VVT U
}WW 
elseWW 
{WW 
returnXX 
newXX 0
$ActualizarMovilidadAcademicaResponseXX C
(XXD E
$"XXE G
Lo sentimos, XXG T
{XXT U
movilidadViejoXXU c
.XXc d
IdMovilidadXXd o
}XXo p)
 no se encuentra registrada.	XXp å
"
XXå ç
)
XXç é
;
XXé è
}YY 
}ZZ 
catchZZ 
(ZZ 
	ExceptionZZ 
eZZ  
)ZZ  !
{ZZ" #
return\\ 
new\\ 0
$ActualizarMovilidadAcademicaResponse\\ ?
(\\@ A
$"\\A C%
Error de la Aplicaci√≥n: \\C [
{\\[ \
e\\\ ]
.\\] ^
Message\\^ e
}\\e f
"\\f g
)\\g h
;\\h i
}]] 
}__ 	
}aa 
}bb Õ
RF:\Documento\GitHub\Proyecto-LDS\Logica\Transportes\ConsultarTransporteResponse.cs
	namespace 	
Logica
 
. 
Transportes 
{ 
public 

class '
ConsultarTransporteResponse ,
{ 
public 
bool 
Error 
{ 
get 
;  
set! $
;$ %
}& '
public		 
string		 
Mensaje		 
{		  
get		! $
;		$ %
set		& )
;		) *
}		+ ,
public

 
List

 
<

 

Transporte

 
>

 
Transportes

  +
{

, -
get

. 1
;

1 2
set

3 6
;

6 7
}

8 9
public '
ConsultarTransporteResponse *
(* +
List+ /
</ 0

Transporte0 :
>: ;
transportes< G
)G H
{ 	
Error 
= 
false 
; 
Transportes 
= 
transportes #
;# $
} 	
public '
ConsultarTransporteResponse *
(* +
string+ 1
mensaje2 9
)9 :
{ 	
Error 
= 
true 
; 
Mensaje 
= 
mensaje 
; 
} 	
} 
} Â

PF:\Documento\GitHub\Proyecto-LDS\Logica\Transportes\GuardarTransporteResponse.cs
	namespace 	
Logica
 
. 
Transportes 
{ 
public 

class %
GuardarTransporteResponse *
{+ ,
public 
bool 
Error 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
Mensaje 
{ 
get  #
;# $
set% (
;( )
}* +
public		 

Transporte		 

Transporte		 $
{		% &
get		' *
;		* +
set		, /
;		/ 0
}		1 2
public %
GuardarTransporteResponse (
(( )

Transporte) 3
transportes4 ?
)? @
{ 	
Error 
= 
false 
; 

Transporte 
= 
transportes $
;$ %
} 	
public %
GuardarTransporteResponse (
(( )
string) /
mensaje0 7
)7 8
{ 	
Error 
= 
true 
; 
Mensaje 
= 
mensaje 
; 
} 	
} 
} ÕB
HF:\Documento\GitHub\Proyecto-LDS\Logica\Transportes\TransporteService.cs
	namespace 	
Logica
 
. 
Transportes 
{ 
public		 

class		 
TransporteService		 "
{		# $
private

 
readonly

  
LogisticaSinuContext

 /
_Context

1 9
;

9 :
public 
TransporteService  
(! " 
LogisticaSinuContext" 6
_context8 @
)@ A
{B C
_Context 
= 
_context 
;  
} 	
public %
GuardarTransporteResponse (
Guardar) 0
(1 2

Transporte2 <

transporte= G
)G H
{I J
try 
{ 
string 
MensajeEmail #
=$ %
string& ,
., -
Empty- 2
;2 3
Email 
email 
= 
new !
Email" '
(( )
)) *
;* +
var 
TrasporteBuscado $
=% &
_Context' /
./ 0
Transportes0 ;
.; <
Find< @
(A B

transporteB L
.L M
NitM P
)P Q
;Q R
if 
( 
TrasporteBuscado $
!=% '
null( ,
), -
{. /
return 
new %
GuardarTransporteResponse 8
(9 :
$str: d
)d e
;e f
} 
_Context 
. 
Transportes $
.$ %
Add% (
() *

transporte* 4
)4 5
;5 6
_Context 
. 
SaveChanges $
(% &
)& '
;' (
MensajeEmail 
= 
email  %
.% &
EnviarEmail& 1
(2 3

transporte3 =
.= >
CorreoElectronico> O
,O P
EscribirCuerpoQ _
(_ `

transporte` j
.j k
Nombrek q
)q r
,r s
EscribirEncabezado	s Ö
(
Ö Ü
)
Ü á
)
á à
;
à â
return 
new %
GuardarTransporteResponse 4
(5 6

transporte6 @
)@ A
;A B
} 
catch 
( 
	Exception 
e  
)  !
{" #
return 
new %
GuardarTransporteResponse 4
(5 6
$"6 8$
Error de la Aplicacion: 8 P
{P Q
eQ R
.R S
MessageS Z
}Z [
"[ \
)\ ]
;] ^
} 
} 	
public   
string   
EscribirEncabezado   (
(  ( )
)  ) *
{  * +
return!! 
$str!! ,
+!!- .
DateTime!!/ 7
.!!7 8
Now!!8 ;
.!!; <
ToString!!< D
(!!E F
$str!!F [
)!![ \
;!!\ ]
}"" 	
public## 
string## 
EscribirCuerpo## $
(##$ %
string##% +
nombre##, 2
)##2 3
{##3 4
return$$ 
$"$$ 
<b> $$ 
{$$ 
nombre$$ !
}$$" #
	</b> <br $$# ,
"$$, -
+$$. /
$"%% >
2 > se ha realizado su registro Sartisfactoriamente%% D
"%%D E
;%%E F
}&& 	
public'' '
ConsultarTransporteResponse'' *
	Consultar''+ 4
(''5 6
)''6 7
{''8 9
try(( 
{(( 
List)) 
<)) 

Transporte)) 
>))  
transportes))! ,
=))- .
_Context))/ 7
.))7 8
Transportes))8 C
.))C D
ToList))D J
())K L
)))L M
;))M N
return** 
new** '
ConsultarTransporteResponse** 6
(**7 8
transportes**8 C
)**C D
;**D E
}++ 
catch++ 
(++ 
	Exception++ 
e++  
)++  !
{++" #
return,, 
new,, '
ConsultarTransporteResponse,, 6
(,,7 8
$",,8 :#
Error de la Aplicaion: ,,: Q
{,,Q R
e,,R S
.,,S T
Message,,T [
},,[ \
",,\ ]
),,] ^
;,,^ _
}-- 
}.. 	
public00 

Transporte00 

BuscarxNit00 $
(00% &
string00& ,
nit00- 0
)000 1
{002 3

Transporte11 

transporte11 !
=11" #
_Context11$ ,
.11, -
Transportes11- 8
.118 9
Find119 =
(11> ?
nit11? B
)11B C
;11C D
return22 

transporte22 
;22 
}33 	
public44 
string44 
	Modificar44 
(44  !

Transporte44! +
transporteNuevo44, ;
)44; <
{44= >
try55 
{55 
var77 
trasporteViejo77 "
=77# $
_Context77% -
.77- .
Transportes77. 9
.779 :
Find77: >
(77? @
transporteNuevo77@ O
.77O P
Nit77P S
)77S T
;77T U
if88 
(88 
trasporteViejo88 "
!=88# %
null88& *
)88* +
{88, -
trasporteViejo99 "
.99" #
Nombre99# )
=99* +
transporteNuevo99, ;
.99; <
Nombre99< B
;99B C
trasporteViejo:: "
.::" #
Pais::# '
=::( )
transporteNuevo::* 9
.::9 :
Pais::: >
;::> ?
trasporteViejo;; "
.;;" #
Ciudad;;# )
=;;* +
transporteNuevo;;, ;
.;;; <
Ciudad;;< B
;;;B C
trasporteViejo<< "
.<<" #
	Direccion<<# ,
=<<- .
transporteNuevo<</ >
.<<> ?
	Direccion<<? H
;<<H I
trasporteViejo== "
.==" #
Barrio==# )
===* +
transporteNuevo==, ;
.==; <
Barrio==< B
;==B C
trasporteViejo>> "
.>>" #
Telefono>># +
=>>, -
transporteNuevo>>. =
.>>= >
Telefono>>> F
;>>F G
trasporteViejo?? "
.??" #
CorreoElectronico??# 4
=??5 6
transporteNuevo??7 F
.??F G
CorreoElectronico??G X
;??X Y
trasporteViejo@@ "
.@@" #
SitioWeb@@# +
=@@, -
transporteNuevo@@. =
.@@= >
SitioWeb@@> F
;@@F G
trasporteViejoAA "
.AA" #
ClaseTransporteAA# 2
=AA3 4
transporteNuevoAA5 D
.AAD E
ClaseTransporteAAE T
;AAT U
trasporteViejoBB "
.BB" #
CapacidadAsientosBB# 4
=BB5 6
transporteNuevoBB7 F
.BBF G
CapacidadAsientosBBG X
;BBX Y
_ContextCC 
.CC 
TransportesCC (
.CC( )
UpdateCC) /
(CC0 1
trasporteViejoCC1 ?
)CC? @
;CC@ A
_ContextDD 
.DD 
SaveChangesDD (
(DD) *
)DD* +
;DD+ ,
returnEE 
(EE 
$"EE 
El registro EE *
{EE* +
transporteNuevoEE+ :
.EE: ;
NombreEE; A
}EEA B1
% se ha modificado satisfactoriamente.EEB g
"EEg h
)EEh i
;EEi j
}FF 
elseFF 
{FF 
returnGG 
(GG 
$"GG 
Lo sentimos, GG +
{GG+ ,
transporteNuevoGG, ;
.GG; <
NitGG< ?
}GG? @(
 no se encuentra registrada.GG@ \
"GG\ ]
)GG] ^
;GG^ _
}HH 
}II 
catchII 
(II 
	ExceptionII 
eII  
)II  !
{II" #
returnKK 
$"KK %
Error de la Aplicaci√≥n: KK 1
{KK1 2
eKK2 3
.KK3 4
MessageKK4 ;
}KK; <
"KK< =
;KK= >
}LL 
}NN 	
}PP 
}QQ ù
6F:\Documento\GitHub\Proyecto-LDS\Logica\UserService.cs
	namespace 	
Logica
 
{ 
public		 

class		 
UserService		 
{		 
private

 
readonly

  
LogisticaSinuContext

 /
_Context

1 9
;

9 :
public 
UserService 
(  
LogisticaSinuContext 0
_context2 :
): ;
{< =
_Context 
= 
_context 
;  
} 	
public 
User 
ValidarUser 
(  !
string! '
usuario( /
,/ 0
string1 7
password8 @
)@ A
{B C
try 
{ 
return 
_Context 
.  
Users  %
.% &
Where& +
(, -
u- .
=>/ 1
u2 3
.3 4
Usuario4 ;
==< >
usuario? F
&&G I
uJ K
.K L
PasswordL T
==U W
passwordX `
&&a c
(d e
ue f
.f g
Estadog m
==n p
$strq y
||z |
u} ~
.~ 
Estado	 Ö
==
Ü à
$str
â ï
)
ï ñ
)
ñ ó
.
ó ò
FirstOrDefault
ò ¶
(
ß ®
)
® ©
;
© ™
} 
catch 
( 
	Exception 
) 
{  !
return 
null 
; 
} 
} 	
} 
} óN
9F:\Documento\GitHub\Proyecto-LDS\Logica\UsuarioService.cs
	namespace 	
Logica
 
{ 
public 

class 
UsuarioService 
{  !
private 
readonly  
LogisticaSinuContext /
_Context1 9
;9 :
public 
UsuarioService 
(  
LogisticaSinuContext 3
_context5 =
)= >
{? @
_Context 
= 
_context 
;  
} 	
public "
GuardarUsuarioResponse %
Guardar& -
(. /
User/ 3
usuario4 ;
); <
{= >
try 
{ 
string 
mensajeEmail #
=$ %
string& ,
., -
Empty- 2
;2 3
Email 
email 
= 
new !
Email" '
(( )
)) *
;* +
var 
UsuarioBuscado "
=# $
_Context% -
.- .
Users. 3
.3 4
Find4 8
(9 :
usuario: A
.A B
UsuarioB I
)I J
;J K
if 
( 
UsuarioBuscado "
!=# %
null& *
)* +
{, -
return 
new "
GuardarUsuarioResponse 5
(6 7
$str7 w
)w x
;x y
} 
_Context 
. 
Users 
. 
Add "
(# $
usuario$ +
)+ ,
;, -
_Context 
. 
SaveChanges $
(% &
)& '
;' (
mensajeEmail   
=   
email   $
.  $ %
EnviarEmail  % 0
(  1 2
usuario  2 9
.  9 :
Correo  : @
,  @ A
EscribirCuerpo  B P
(  P Q
usuario  Q X
.  X Y
PrimerNombre  Y e
)  e f
,  f g
EscribirEncabezado  g y
(  y z
)  z {
)  { |
;  | }
return!! 
new!! "
GuardarUsuarioResponse!! 1
(!!2 3
usuario!!3 :
)!!: ;
;!!; <
}"" 
catch"" 
("" 
	Exception"" 
e""  
)""  !
{""" #
return## 
new## "
GuardarUsuarioResponse## 1
(##2 3
$"##3 5$
Error de la Aplicacion: ##5 M
{##M N
e##N O
.##O P
Message##P W
}##W X
"##X Y
)##Y Z
;##Z [
}$$ 
}%% 	
public&& 
string&& 
EscribirEncabezado&& (
(&&( )
)&&) *
{&&* +
return'' 
$str'' )
+''* +
DateTime'', 4
.''4 5
Now''5 8
.''8 9
ToString''9 A
(''B C
$str''C X
)''X Y
;''Y Z
}(( 	
public)) 
string)) 
EscribirCuerpo)) $
())$ %
string))% +
nombre)), 2
)))2 3
{))3 4
return** 
$"** J
><b>¬°¬°Bienvenido a log√≠stica educativa del Sin√∫¬°¬°</b><br>** M
"**M N
+**N O
$"++ )
Le informamos que el usuario ++ /
{++/ 0
nombre++0 6
}++6 7=
1 se ha registrado satisfactoriamente.<br><br><br>++7 h
"++h i
+++i j
$str	-- Ï
+
--Ï Ì
$str	.. ê
;
..ê ë
}// 	
public11 $
ConsultarUsuarioResponse11 '
	Consultar11( 1
(112 3
)113 4
{115 6
try22 
{22 
List44 
<44 
User44 
>44 
usuarios44 #
=44$ %
_Context44& .
.44. /
Users44/ 4
.444 5
ToList445 ;
(44< =
)44= >
;44> ?
return55 
new55 $
ConsultarUsuarioResponse55 3
(554 5
usuarios555 =
)55= >
;55> ?
}66 
catch66 
(66 
	Exception66 
e66  
)66  !
{66" #
return77 
new77 $
ConsultarUsuarioResponse77 3
(774 5
$"775 7#
Error de la Aplicaion: 777 N
{77N O
e77O P
.77P Q
Message77Q X
}77X Y
"77Y Z
)77Z [
;77[ \
}88 
}99 	
public;; 
User;; !
BuscarxIdentificacion;; )
(;;* +
string;;+ 1
identificacion;;2 @
,;;@ A
string;;B H
tipoServicio;;I U
);;U V
{;;W X
var<< 
usuario<< 
=<< 
_Context<< #
.<<# $
Users<<$ )
.<<) *
Find<<* .
(<</ 0
identificacion<<0 >
)<<> ?
;<<? @
if== 
(== 
tipoServicio== 
==== 
$str==  +
)==+ ,
{==- .
if>> 
(>> 
usuario>> 
!=>> 
null>> #
)>># $
{>>% &
var?? 
movilidades?? #
=??$ %
_Context??& .
.??. /
Movilidades??/ :
.??: ;
ToList??; A
(??B C
)??C D
;??D E
foreach@@ 
(@@ 
var@@  
item@@! %
in@@& (
movilidades@@) 4
)@@4 5
{@@6 7
ifAA 
(AA 
itemAA  
.AA  !
	IdClienteAA! *
==AA+ -
usuarioAA. 5
.AA5 6
IdentificacionAA6 D
)AAD E
{AAF G
usuarioBB #
.BB# $
MovilidadesBB$ /
.BB/ 0
AddBB0 3
(BB4 5
itemBB5 9
)BB9 :
;BB: ;
}CC 
}DD 
}FF 
returnGG 
usuarioGG 
;GG 
}HH 
ifII 
(II 
usuarioII 
!=II 
nullII 
)II  
{II! "
varJJ 
	serviciosJJ 
=JJ 
_ContextJJ  (
.JJ( )
	ServiciosJJ) 2
.JJ2 3
ToListJJ3 9
(JJ: ;
)JJ; <
;JJ< =
foreachKK 
(KK 
varKK 
itemKK !
inKK" $
	serviciosKK% .
)KK. /
{KK0 1
ifLL 
(LL 
itemLL 
.LL 
	IdClienteLL &
==LL' )
usuarioLL* 1
.LL1 2
IdentificacionLL2 @
)LL@ A
{LLB C
usuarioMM 
.MM  
	ServiciosMM  )
.MM) *
AddMM* -
(MM. /
itemMM/ 3
)MM3 4
;MM4 5
}NN 
}OO 
}PP 
returnRR 
usuarioRR 
;RR 
}SS 	
publicUU %
ActualizarUsuarioResponseUU (
	ModificarUU) 2
(UU3 4
UserUU4 8
usuarioNuevoUU9 E
)UUE F
{UUG H
tryVV 
{VV 
varXX 
personaViejaXX  
=XX! "
_ContextXX# +
.XX+ ,
UsersXX, 1
.XX1 2
FindXX2 6
(XX7 8
usuarioNuevoXX8 D
.XXD E
UsuarioXXE L
)XXL M
;XXM N
ifYY 
(YY 
personaViejaYY  
!=YY! #
nullYY$ (
)YY( )
{YY* +
personaViejaZZ  
.ZZ  !
PrimerNombreZZ! -
=ZZ. /
usuarioNuevoZZ0 <
.ZZ< =
PrimerNombreZZ= I
;ZZI J
personaVieja[[  
.[[  !
SegundoNombre[[! .
=[[/ 0
usuarioNuevo[[1 =
.[[= >
SegundoNombre[[> K
;[[K L
personaVieja\\  
.\\  !
PrimerApellido\\! /
=\\0 1
usuarioNuevo\\2 >
.\\> ?
PrimerApellido\\? M
;\\M N
personaVieja]]  
.]]  !
SegundoApellido]]! 0
=]]1 2
usuarioNuevo]]3 ?
.]]? @
SegundoApellido]]@ O
;]]O P
personaVieja^^  
.^^  !
Telefono^^! )
=^^* +
usuarioNuevo^^, 8
.^^8 9
Telefono^^9 A
;^^A B
personaVieja__  
.__  !
Correo__! '
=__( )
usuarioNuevo__* 6
.__6 7
Correo__7 =
;__= >
personaVieja``  
.``  !
Password``! )
=``* +
usuarioNuevo``, 8
.``8 9
Password``9 A
;``A B
_Contextaa 
.aa 
Usersaa "
.aa" #
Updateaa# )
(aa* +
personaViejaaa+ 7
)aa7 8
;aa8 9
_Contextbb 
.bb 
SaveChangesbb (
(bb) *
)bb* +
;bb+ ,
returncc 
newcc %
ActualizarUsuarioResponsecc 8
(cc9 :
personaViejacc: F
)ccF G
;ccG H
}dd 
elsedd 
{dd 
returnee 
newee %
ActualizarUsuarioResponseee 8
(ee9 :
$"ee: <
Lo sentimos, ee< I
{eeI J
usuarioNuevoeeJ V
.eeV W
IdentificacioneeW e
}eee f)
 no se encuentra registrada.	eef Ç
"
eeÇ É
)
eeÉ Ñ
;
eeÑ Ö
}ff 
}gg 
catchgg 
(gg 
	Exceptiongg 
egg  
)gg  !
{gg" #
returnii 
newii %
ActualizarUsuarioResponseii 4
(ii5 6
$"ii6 8%
Error de la Aplicaci√≥n: ii8 P
{iiP Q
eiiQ R
.iiR S
MessageiiS Z
}iiZ [
"ii[ \
)ii\ ]
;ii] ^
}jj 
}ll 	
}mm 
}nn £
:F:\Documento\GitHub\Proyecto-LDS\Logica\UtilidadService.cs
	namespace 	
Logica
 
{ 
public 

class 
UtilidadService  
{! "
private		 
readonly		  
LogisticaSinuContext		 /
_Context		1 9
;		9 :
public 
UtilidadService 
(   
LogisticaSinuContext  4
_context6 >
)> ?
{@ A
_Context 
= 
_context 
;  
} 	
public %
GuardarUtilidadesResponse (
Guardar) 0
(1 2
Utilidad2 :
utilidad; C
)C D
{E F
try 
{ 
var 
UtulidadBuscada #
=$ %
_Context& .
.. /

Utilidades/ 9
.9 :
Find: >
(? @
utilidad@ H
.H I
IdPagoI O
)O P
;P Q
if 
( 
UtulidadBuscada #
!=$ &
null' +
)+ ,
{- .
return 
new %
GuardarUtilidadesResponse 8
(9 :
$str: _
)_ `
;` a
} 
utilidad 
. 
CalcularUtilidades +
(+ ,
), -
;- .
_Context 
. 

Utilidades #
.# $
Add$ '
(( )
utilidad) 1
)1 2
;2 3
_Context 
. 
SaveChanges $
(% &
)& '
;' (
return 
new %
GuardarUtilidadesResponse 4
(5 6
utilidad6 >
)> ?
;? @
} 
catch 
( 
	Exception 
e  
)  !
{" #
return 
new %
GuardarUtilidadesResponse 4
(5 6
$"6 8$
Error de la Aplicacion: 8 P
{P Q
eQ R
.R S
MessageS Z
}Z [
"[ \
)\ ]
;] ^
} 
} 	
public '
ConsultarUtilidadesResponse *
	Consultar+ 4
(5 6
)6 7
{8 9
try   
{   
List!! 
<!! 
Utilidad!! 
>!! 

Utilidades!! )
=!!* +
_Context!!, 4
.!!4 5

Utilidades!!5 ?
.!!? @
ToList!!@ F
(!!G H
)!!H I
;!!I J
return"" 
new"" '
ConsultarUtilidadesResponse"" 6
(""7 8

Utilidades""8 B
)""B C
;""C D
}## 
catch## 
(## 
	Exception## 
e##  
)##  !
{##" #
return$$ 
new$$ '
ConsultarUtilidadesResponse$$ 6
($$7 8
$"$$8 :#
Error de la Aplicaion: $$: Q
{$$Q R
e$$R S
.$$S T
Message$$T [
}$$[ \
"$$\ ]
)$$] ^
;$$^ _
}%% 
}&& 	
}-- 
}.. 