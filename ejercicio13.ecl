/***********************************************************
*
* FRANCISCO CARRILLO PÉREZ
* UNIVERSIDAD DE GRANADA
*
************************************************************/

/*
	13. Viajante de comercio. En el problema del viajante de comercio hay un número dado de
	ciudades, cada una conectada con todas las otras y cada conexión tiene un coste (asociado con
	la distancia). El problema consiste en encontrar el recorrido más corto que visita todas las
	ciudades exactamente una vez y finaliza en la ciudad de partida (este tipo de recorrido se
	conoce como un ciclo o circuito Hamiltoniano). La restricción global circuit(L) restringe los
	elementos de la lista L a que formen un circuito hamiltoniano. Es decir, L es una colección de
	N elementos representando nodos de un grafo dirigido, donde el i-ésimo elemento de L
	representa el sucesor del nodo i. Entonces la restricción fuerza a que L forme un circuito
	hamiltoniano. Usar esta restricción global y la del ejercicio anterior para resolver el problema
	del viajante de comercio con los siguientes datos donde X_i representan ciudades:
		X1 	X2 	X3 	X4 	X5 	X6 	X7
  	X1	0	4	8	10	7	14	15
	X2	4	0	7	7	10	12	5
	X3	8	7	0	4	6	8	10
	X4	10	7	4	0	2	5	8
	X5	7	10	6	2	0	6	7
	X6	14	12	8	5	6	0	5
	X7	15	5	10	8	7	5	0
*/

:-lib(fd).

viajanteComercio(Var):-
	Var=[X1, X2, X3, X4,X5,X6,X7],
	element(X1,[0,4,8,10,7,14,15],EX1),
	element(X2,[4,0,7,7,10,12,5],EX2),
	element(X3,[8,7,0,4,6,8,10],EX3),
	element(X4,[10,7,4,0,2,5,8],EX4),
	element(X5,[7,10,6,2,0,6,7],EX5),
	element(X6,[14,12,8,5,6,0,5],EX6),
	element(X7,[15,5,10,8,7,5,0],EX7),
	gfd:circuit(Var),
	Coste #= EX1+EX2+EX3+EX4+EX5+EX6+EX7,
	minimize(labeling(Var),Coste).
