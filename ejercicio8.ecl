/***********************************************************
*
* FRANCISCO CARRILLO PÉREZ
* UNIVERSIDAD DE GRANADA
*
************************************************************/
/*
	8. Considérese una pequeña parte del proceso de ensamblado de un coche en el que intervienen
	las tareas: instalar ejes (una para el trasero y otra para el delantero), poner ruedas (una para
	cada rueda), apretar tuercas (una tarea para cada rueda) y poner tapacubos (una para cada
	rueda) . Los ejes tienen que ponerse antes que las ruedas y poner un eje toma 10 minutos. Poner
	ruedas toma 1 minuto, apretar tuercas (para cada rueda) 2 minutos y poner cada embellecedor
	1minuto. Al final del ensamblado hay una tarea de inspección que toma 3 minutos. Asumir que
	hay recursos ilimitados para hacer las tareas. Se desea saber el tiempo en el que debe empezar
	cada tarea. Modelar este problema como un PSR y escribir un programa en ECLiPSe que lo
	resuelva.

*/
:- lib(ic).
mecanico(Vars) :-
	% Variables
	Vars=[A,B,C,D,E,F,G,H,I,J,K,L,M,N,O],
	Vars::[0..100],
	
	C#>=A+10,
	D#>=A+10,
	E#>=A+10,
	F#>=A+10,
		
	C#>=B+10,
	D#>=B+10,
	E#>=B+10,
	F#>=B+10,

	G#>=C+1,
	H#>=D+1,
	I#>=E+1,
	J#>=F+1,

	K#>=G+2,
	L#>=H+2,
	M#>=I+2,
	N#>=J+2,

	O#>=K+1,
	O#>=L+1,
	O#>=M+1,
	O#>=N+1,

	labeling(Vars). 
