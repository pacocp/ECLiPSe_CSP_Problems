/***********************************************************
*
* FRANCISCO CARRILLO PÉREZ
* UNIVERSIDAD DE GRANADA
*
************************************************************/

/*
	18. Marieta ha comprado cuatro pares de zapatos (Zapatillas, Planos, Botas y Sandalias) pero no
	recuerda en qué tienda los compró (CorteInglés, Carrefour, Alcampo y Kiabi). Solo tiene algunas
	pistas:
	1. Los planos los compró en Carrefour.
	2. La tienda que visitó justo después de comprar las botas no era Kiabi.
	3. El CorteInglés fue su segunda parada.
	4. Dos paradas después de dejar Alcampo, compró las sandalias.
	
	Escribir un programa en ECLiPSe que ayude a Marieta a recordar en qué orden compró los zapatos y
	en qué almacén.

*/

:-lib(ic).

marieta(Zapatos):-
	Zapatos = [Zapatillas,Planos,Botas,Sandalias],
	Tiendas = [CorteIngles,Carrefour,Alcampo,Kiabi],
	Orden = [Primero,Segundo,Tercero,Cuarto],
	Zapatos::[1..4],
	Tiendas::[1..4],
	Orden::[1..4],
	alldifferent(Zapatos),
	alldifferent(Tiendas),
	alldifferent(Orden),

	Planos #= Carrefour,
	Botas + 1 #\= Kiabi,
	CorteIngles #= Segundo,
	Sandalias #= Alcampo + 2,
	flatten([Zapatos,Tiendas,Orden],Lista),
	labeling(Lista),
	write("Zapatos = "),write(Zapatos),nl,
  	write("Tiendas = "), write(Tiendas),nl,
  	write("Orden = "), write(Orden),nl.
