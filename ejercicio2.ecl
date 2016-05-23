/***********************************************************
*
* FRANCISCO CARRILLO PÉREZ
* UNIVERSIDAD DE GRANADA
*
************************************************************/

/*
	2.Un problema criptoaritmétio puede verse como un puzle matemático en el que un conjunto de
	dígitos es reemplazado por letras. En concreto se pide reemplazar cada letra por un dígito de tal
	forma que la siguiente suma sea correcta.
			SEND
			+ MORE
			-----------
			MONEY
	Modelar este problema criptoaritmético como un PSR y escribir un programa en ECLiPSe que
	lo resuelva.

*/
:- lib(ic).

sendmore1(Digits) :-
    Digitos = [S,E,N,D,M,O,R,Y],
    Digitos :: [0..9],
    alldifferent(Digitos),
    S #\= 0,
    M #\= 0,
                 1000*S + 100*E + 10*N + D
               + 1000*M + 100*O + 10*R + E
    #= 10000*M + 1000*O + 100*N + 10*E + Y,
    labeling(Digitos).