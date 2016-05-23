/***********************************************************
*
* FRANCISCO CARRILLO PÉREZ
* UNIVERSIDAD DE GRANADA
*
************************************************************/

/*
	6.Considerar el siguiente problema:
	Encontrar una permutación de los números 1 al 10 tal que:
	- 6 está en la 7a posición
	- cada número a partir del segundo es, o bien 3 unidades mayor, o bien 2 unidades menor que
	su predecesor.
	Modelar este problema como un PSR y escribir un programa en ECLiPSe que lo resuelva.
	Información: La única solución es 3 1 4 2 5 8 6 9 7 10.

*/
:-lib(ic).

permutacion(Vars):-
	Vars=[Pos1,Pos2,Pos3,Pos4,Pos5,Pos6,Pos7,Pos8,Pos9,Pos10],
	Vars::[1..10],
	alldifferent(Vars),
	Pos7 #= 6,
	Pos2 #= Pos1 + 3 or Pos2 #= Pos1 - 2 ,
	Pos3 #= Pos2 + 3 or Pos3 #= Pos2 - 2 ,
	Pos4 #= Pos3 + 3 or Pos4 #= Pos3 - 2 ,
	Pos5 #= Pos4 + 3 or Pos5 #= Pos4 - 2 ,
	Pos6 #= Pos5 + 3 or Pos6 #= Pos5 - 2 ,
	Pos7 #= Pos6 + 3 or Pos7 #= Pos6 - 2 ,
	Pos8 #= Pos7 + 3 or Pos8 #= Pos7 - 2 ,
	Pos9 #= Pos8 + 3 or Pos9 #= Pos8 - 2 ,
	Pos10 #= Pos9 + 3 or Pos10 #= Pos9 - 2 ,
	labeling(Vars).
