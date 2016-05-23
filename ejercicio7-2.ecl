:-lib(ic).
:-lib(ic_global).


cuadrado_latino(Tama, Cuadrado) :-
        dim(Cuadrado, [Tama,Tama]), %Creamos el cuadrado con el tamaño que se pasa
        Cuadrado[1..Tama,1..Tama] :: 1..Tama, %A cada posición de la matriz le damos el dominio
        (
            for(I, 1, Tama),
            param(Cuadrado, Tama)
        do
            ic_global:alldifferent(Cuadrado[1..Tama, I]),
            ic_global:alldifferent(Cuadrado[I, 1..Tama])
        ),
        % búsqueda heurística con el método search
		/* Las opciones de la búsqueda son las siguientes:
			- La variable, en este caso el cuadrado
			- 0, ya que es una lista con dominio
			- el modelo de selección, que en este caso es smallest, que escoge la entrada con el valor más pequeño en el dominio
			- indomain_middle, se prueba los valores desde la mitad del dominio.
			- complete, que significa que hace una búsqueda completa 
			- y al final ninguna opción
		*/
        search(Cuadrado, 0, smallest, indomain_middle, complete, []),
        print_cuadrado(X).

print_cuadrado(Cuadrado) :-
	dim(Cuadrado, [Tama,Tama]),
	( for(I,1,Tama), param(Tama,Cuadrado) do
	    ( for(J,1,Tama), param(I,Cuadrado) do
                Pos is Cuadrado[I,J],
                printf("%3d", Pos)
            ), nl
	), nl.
