/***********************************************************
*
* FRANCISCO CARRILLO PÉREZ
* UNIVERSIDAD DE GRANADA
*
************************************************************/

/*
	12. Problema de asignación de recursos. Modelar el siguiente problema como un PSR y escribir un
	programa en ECLiPSe que lo resuelva:
	Asignar 4 trabajadores a cuatro productos de tal forma que cada trabajador trabaje en un producto
	y cada producto sea producido por un trabajador. La efectividad de la producción está dada por la
	tabla mostrada más abajo (p.e. trabajador W1 produce P1 con efectividad 7) y la efectividad total
	de la asignación debe ser al menos 19.
		P1 P2 P3 P4
  	W1  7  1  3  4
	W2  8  2  5  1
	W3  4  3  7  2
	W4  3  1  6  3

Modelar este problema de tres formas distintas:
• Como un problema de satisfacción de restricciones con variables booleanas.
• Como un CSP tomando como variables los trabajadores.
• Como un CSP tomando como variables los productos.
*/

:-lib(ic).

/*Variables booleanas*/


/*Variables trabajadores*/




trabajadores(Vars):-
	Vars=[W1,W2,W3,W4],
	Vars::[1,2,3,4],
	alldifferent(Vars),
	element(W1,[7,1,3,4],EW1),
	element(W2,[8,2,5,1],EW2),
	element(W3,[4,3,7,2],EW3),
	element(W4,[3,1,6,3],EW4),
	EW1+EW2+EW3+EW4 #> 18,
	labeling(Vars),
	Coste is EW1+EW2+EW3+EW4,
	write(Coste).

/*Variables productos*/

trabajadores(Vars):-
	Vars=[P1,P2,P3,P4],
	Vars::[1,2,3,4],
	alldifferent(Vars),
	element(P1,[7,8,3,4],EP1),
	element(P2,[1,2,3,1],EP2),
	element(P3,[3,5,7,6],EP3),
	element(P4,[4,1,2,3],EP4),
	EP1+EP2+EP3+EP4 #> 18,
	labeling(Vars),
	Coste is EP1+EP2+EP3+EP4,
	write(Coste).