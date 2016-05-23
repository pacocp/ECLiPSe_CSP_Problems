
:-lib(fd).
%:-lib(ic).
:-lib(cumulative).

tareas(Vars):-
	Vars=[A,B,C,D,E,F,Last],
	A#::[0..10],
	B#::[0..15],
	C#::[5..25],
	D#::[0..20],
	E#::[10..25],
	F#::[0..5],
	Last#::[0..100],
	A + 2 #<= B,
    B + 3 #<= C,
	D + 2 #<= C,
	F + 3 #<= E,
	E + 5 #<= C,
	C + 4 #<= Last,
	minimize(labeling(Vars),Last).
mudanza(Vars):-
	Vars=[X1,X2,X3,X4],
	Vars::[0..70],
	Duracion=[30,10,15,15],
	Recursos=[3,1,2,3],
	cumulative(Vars, Duracion, Recursos, 4),
	labeling(Vars).

%Uno de puzzles lógico, restricciones lineales (mochila), 