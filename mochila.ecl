
:-lib(fd).
:-lib(fd_search).

mochila(Vars):-
	Vars=[W,P,C,Coste],
	Vars::[0..5],
	Coste#=30,
	Z #= 0,
	C#= Z -Coste,
	W*4 + P*3+T*2 #=<9,
	W*15+P*10+T*2#>=30,
	minimize(labeling(Vars),C).
