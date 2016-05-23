/***********************************************************
*
* FRANCISCO CARRILLO PÉREZ
* UNIVERSIDAD DE GRANADA
*
************************************************************/

/*
	17. Cuatro jugadores de golf (Fede, Jose, Bibi, Tomás) están situados en línea de izquierda a derecha.
	Cada uno lleva pantalones de diferente color:
	• Uno lleva pantalones de color rojo.
	• El que está a la derecha inmediata de Fede lleva pantalones azules.
	• Jose es el segundo en la línea.
	• Bibi lleva pantalones a cuadros.
	• Tomás no está en la posición uno o cuatro de la línea, y no lleva pantalones naranja.
	
	Escribir un programa en ECLIPSE que resuelva este problema respondiendo a la pregunta . ¿En qué
	orden está situados los jugadores y de qué color tiene cada uno los pantalones?.

*/

:-lib(ic).

jugadores(Vars):-
	Vars=[Fede,Jose,Bibi,Tomas],
	Pantalones = [Rojo,Azul,Cuadros,Naranja],
	Linea = [Primera,Segunda,Tercera,Cuarta],
	Vars::[1..4],
	Pantalones::[1..4],
	Linea::[1..4],
	alldifferent(Vars),
	alldifferent(Pantalones),
	alldifferent(Linea),
	Fede + 1 #= Azul,
	Jose #= Segunda,
	Bibi #= Cuadros,
	Tomas #\= Primera,
	Tomas #\= Cuarta,
	Tomas #\= Naranja,

	flatten([Vars,Pantalones,Linea],Lista),
	labeling(Lista),
	write("Jugadores = "),write(Vars),nl,
  	write("Pantalones = "), write(Pantalones),nl,
  	write("Linea = "),write(Linea),nl.

