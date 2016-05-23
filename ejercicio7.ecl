:- lib(ic).

magico(N) :-
	NN is N*N,				% tamaño de la matriz
	Sum is N*(NN+1)//2,			% este es el número de la suma
	printf("Sum = %d%n", [Sum]),

	dim(Cuadrado, [N,N]),			% creamos las variables
	Cuadrado :: 1..NN,			% el rango de valores
	alldifferent(Cuadrado),			% they are all different

	(
	    for(I,1,N),
	    foreach(U,DiagSup), %Diagonal superior
	    foreach(D,DiagInfe), %Diagonal inferior
	    param(N,Cuadrado,Sum)
	do
	    Sum #= sum(Cuadrado[I,1..N]),		% suma de la fila I
	    Sum #= sum(Cuadrado[1..N,I]),		% suma de la columna I
	    U is Cuadrado[I,I],
	    D is Cuadrado[I,N+1-I]
	),
	Sum #= sum(DiagSup),			% añadimos la suma de las diagonales
	Sum #= sum(DiagInfe),

	Cuadrado[1,1] #< Cuadrado[1,N],		% eliminamos las simetrías
	Cuadrado[1,1] #< Cuadrado[N,N],
	Cuadrado[1,1] #< Cuadrado[N,1],
	Cuadrado[1,N] #< Cuadrado[N,1],

	% búsqueda heurística con el método search, primero las diaglonales y luego el resto
	/* Las opciones de la búsqueda son las siguientes:
		- La variable
		- 0, ya que es una lista con dominio
		- el modelo de selección, que en este caso es first_fail, que hace que la entrada con el dominio más pequeña sea la seleccionada
		- indomain, que usa el dominio propio de la lista
		- complete, que significa que hace una búsqueda completa 
		- y al final ninguna opción
	*/
	search(DiagSup,0,first_fail,indomain,complete,[]),
	search(DiagInfe,0,first_fail,indomain,complete,[]),
	search(Cuadrado,0,first_fail,indomain,complete,[]),

	print_cuadrado(Cuadrado).			% imprimimos el resultado


print_cuadrado(Cuadrado) :-
	dim(Cuadrado, [Tama,Tama]),
	( for(I,1,Tama), param(Tama,Cuadrado) do
	    ( for(J,1,Tama), param(I,Cuadrado) do
                Pos is Cuadrado[I,J],
                printf("%3d", Pos)
            ), nl
	), nl.