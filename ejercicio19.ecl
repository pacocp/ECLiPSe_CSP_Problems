/***********************************************************
*
* FRANCISCO CARRILLO PÉREZ
* UNIVERSIDAD DE GRANADA
*
************************************************************/

/*
	19. (Puzzle de la Cebra). Cinco personas con diferentes nacionalidades viven en las primeras cinco
	casas contiguas en una calle. Practican cinco profesiones distintas, cada uno tiene un animal y una
	bebida favoritos, todos diferentes. Las casas están pintadas con diferentes colores. Ademas
	sabemos lo siguiente:

	a.
	 El vasco vive en la casa roja.
	b.
	 El catalán tiene un perro.
	c.
	 El gallego es un pintor.
	d.
	 El navarro bebe te.
	e.
	 El andaluz vive en la primera casa de la izquierda.
	f.
	 El de la casa verde bebe café.
	g.
	 La casa verde está al lado de la blanca y a su derecha.
	h.
	 El escultor cría caracoles.
	i.
	 El diplomático vive en la casa amarilla.
	j.
	 En la casa central se bebe leche.
	k.
	 La casa del andaluz está al lado de la azul.
	l.
	 El violinista bebe zumo.
	m.
	 El zorro está en una casa al lado de la del médico.
	n.
	 El caballo está en una casa al lado de la del diplomático.

	Escribir un programa en ECLIPSE que nos permita responder ¿Dónde está la cebra y quién
	bebe agua?.


*/

:-lib(ic).

whereismycebra(Casas):-
	Casas = [P1,P2,P3,P4,P5],
	Nacionalidades = [Vasco, Catalan,Andaluz,Gallego,Navarro],
	Bebidas = [Te,Cafe,Leche,Zumo,Agua],
	Animales = [Perro,Caracoles,Zorro,Caballo,Cebra],
	Colores = [Roja,Verde,Blanca,Azul,Amarilla],
	Profesiones = [Pintor,Escultor,Diplomatico,Violinista,Medico],
	Casas::[1..5],
	Nacionalidades::[1..5],
	Animales::[1..5],
	Bebidas::[1..5],
	Colores::[1..5],
	Profesiones::[1..5],
	alldifferent(Casas),
	alldifferent(Nacionalidades),
	alldifferent(Animales),
	alldifferent(Colores),
	alldifferent(Profesiones),

	Vasco #= Roja,
	Catalan #= Perro,
	Navarro #= Te,
	P1 #= Andaluz,
	Verde #= Cafe,
	Verde #= Blanca - 1,
	Escultor #= Caracoles,
	Diplomatico #= Amarilla,
	P1 + 1 #= Azul or P1 - 1 #= Azul,
	Violinista #= Zumo,
	Zorro #= Medico + 1 or Zorro #= Medico - 1,
	Caballo #= Diplomatico + 1 or Diplomatico - 1,

	flatten([Casas,Nacionalidades,Bebidas,Animales,Colores,Profesiones],Lista),
	labeling(Lista),

	write("La cebra está en = "),write(Cebra),nl,
	write("Bebe agua = "),write(Agua),nl.