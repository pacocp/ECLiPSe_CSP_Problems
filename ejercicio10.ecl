/***********************************************************
*
* FRANCISCO CARRILLO PÉREZ
* UNIVERSIDAD DE GRANADA
*
************************************************************/

/*
  10. Considerar el siguiente puzle: Dadas 10 variables con la siguiente configuración:
	X7 		  X8 		X9 			X10
	 	  X4		X5			X6
	 			X2			X3
	 				  X1
	Se sabe que X1 = 3 y se quiere asignar cada variable con un entero diferente del conjunto
	{1,2,...,10} tal que por cada tres variables

	Xi		Xj
		Xk

	Se satisface |Xi – Xj| = Xk. Modelarlo como un PSR y escribir un programa en ECLiPSe que lo
	resuelva.


*/

:-lib(ic).

puzzle(Vars):-
	Vars=[X1,X2,X3,X4,X5,X6,X7,X8,X9,X10],
	Vars::[1..10],
	alldifferent(Vars),
	X1 #= 3,
	X4 #= abs(X7 - X8),
	X5 #= abs(X8 - X9),
	X6 #= abs(X9 - X10),
	X2 #= abs(X4 - X5),
	X3 #= abs(X5 - X6),
	abs(X2 - X3) #= 3,
	labeling(Vars).
