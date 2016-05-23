/***********************************************************
*
* FRANCISCO CARRILLO PÉREZ
* UNIVERSIDAD DE GRANADA
*
************************************************************/

/*

	22. Modelar y resolver como un programa de restricciones en ECLiPSe el siguiente problema: Hay que
	invitar a cenar de 1 a 6 abuelos, 1 a 10 padres y 1 a 40 niños. Invitar a los abuelos cuesta 3 €, a los
	padres 2€ y a los niños 0.50€. Tenemos un total de 20 personas para cenar y disponemos de 20€
	para pagar la cena. ¿Cuántos abuelos, padres y niños pueden ir a la cena?.

*/

:- lib(ic).
:- lib(ic_search).

fiesta([Abuelos,Padres,Ninos],Dinero,Personas):-
	P=[Abuelos,Padres,Ninos],
	Abuelos::1..6,
	Padres::1..10,
	Ninos::1..40,
	300*Abuelos+200*Padres+50*Ninos #= Dinero,
	Abuelos + Padres + Ninos #= Personas,

	minimize(search(P,0,smallest,indomain_max,complete,[]),Personas).
