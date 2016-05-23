/***********************************************************
*
* FRANCISCO CARRILLO PÉREZ
* UNIVERSIDAD DE GRANADA
*
************************************************************/

/*
	23. Escribir un programa en ECLIPSE que permita determinar las monedas que tenemos que usar para
	pagar una suma exacta y considerando que tenemos que usar el menor número de monedas posible
	(Usar las monedas de curso legal del Euro: 2€, 1€, 50Cents, 20Cents, 10Cents, 5Cents, 2Cents,
	1Cent).

*/

:- lib(ic).
:- lib(ic_search).
:- lib(branch_and_bound).

cambiosmonedas([DosEuros, UnEuro, CinCent, VeinteCent, DiezCent, CincoCent, DosCent, UnCent],NumMonedas,Cambio) :-

        LMonedas = [DosEuros, UnEuro, CinCent, VeinteCent, DiezCent, CincoCent, DosCent, UnCent],

        LMonedas :: 0..100, 

        
        200*DosEuros+100*UnEuro+50*CinCent+20*VeinteCent+10*DiezCent+5*CincoCent+2*DosCent+1*UnCent #= Cambio,

        
        DosEuros+UnEuro+CinCent+VeinteCent+DiezCent+CincoCent+DosCent+UnCent #= NumMonedas,

        
        minimize(search(LMonedas,0,smallest,indomain_max,complete,[]),NumMonedas).