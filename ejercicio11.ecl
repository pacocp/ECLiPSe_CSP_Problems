/***********************************************************
*
* FRANCISCO CARRILLO PÉREZ
* UNIVERSIDAD DE GRANADA
*
************************************************************/

/*
	11. Problema de horario(simple).Modelar el siguiente problema como un PSR y escribir un
	programa en ECLiPSe que lo resuelva:
	Encontrar asignación de tiempos a las clases que deben impartir unos profesores dados,
	considerando que cada profesor puede impartir la clase dentro de un horario especificado (ver
	tabla). Todas las clases se dan en un aula y duran 1 hora. Las clases impartidas por mujeres deben
	impartirse lo más pronto posible.
	Profesor    Min   Max
	Pedro       3     6
	Juana       3     4
	Ana         2     5
	Yago        2     4
	David       3     4
	María       1     6

*/

:-lib(fd).

horario(Vars):-
	Vars=[Pedro,Juana,Ana,Yago,David,Maria],
	Pedro::[3..6],
	Juana::[3..4],
	Ana::[2..5],
	Yago::[2..4],
	David::[3..4],
	Maria::[1..6],
	alldifferent(Vars),
	S#=Juana+Ana+Maria,
	minimize(labeling(Vars),S).
