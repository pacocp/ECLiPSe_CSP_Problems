/***********************************************************
*
* FRANCISCO CARRILLO PÉREZ
* UNIVERSIDAD DE GRANADA
*
************************************************************/

/*
	9. Teniendo en cuenta las características del Problema 8, considerar que el montaje de los ejes
	sólo lo puede realizar un trabajador y que hay un requisito adicional de tener montado el coche
	en 30 minutos como máximo. Modelar este problema como un PSR y escribir un programa en
	ECLiPSe que lo resuelva

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
	Coste is A+B+C+D+E+F+G+H+I+J+K+L+M+N+O,
	Coste #< 31,
	labeling(Vars). 
