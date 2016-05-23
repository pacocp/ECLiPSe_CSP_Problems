/***********************************************************
*
* FRANCISCO CARRILLO PÉREZ
* UNIVERSIDAD DE GRANADA
*
************************************************************/

/*
	3.(Otro Puzzle Criptoaritmético). Reemplazar las letras distintas por dígitos distintos (los
	números no tienen ceros a la izquierda), de forma que el siguiente cálculo tenga sentido (una
	posible traducción del alemán es “Prueba a fondo tus fortalezas”):
		TESTE
		+FESTE
		+DEINE
		=KRAFTE
	Escribe un progrma en ECLiPSe que lo resuelva. Considerar el uso de la restricción global
	all_different(+Vars)

*/
:- lib(ic).

aleman(Vars):-
	Digitos=[T,E,S,F,D,I,N,K,R,A],
	Digitos::[0..10],
	alldifferent(Digitos),
	T #\= 0,
	F #\= 0,
	D #\= 0,
	K #\= 0,
	10000*T + 1000*E + 100S + 10*T + E
	+ 10000*F + 1000*E + 100*S + 10*T + E
	+ 10000*D + 1000*E + 100*I + 10*N + E
	#= 100000*K+ 10000*R + 1000*A + 100*F + 10*T + E,
	labeling(Digitos).