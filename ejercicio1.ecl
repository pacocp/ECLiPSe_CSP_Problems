male(paco).
male(pepe).
male(victor).
male(narciso).
male(paquillo).
male(miguel).
female(elena).
female(mmar).
female(loida).

parent(paco,paquillo).
parent(paco,miguel).
parent(paco,loida).
parent(mmar,paquillo).
parent(mmar,miguel).
parent(mmar,loida).
parent(elena,paco).
parent(elena,pepe).
parent(narciso,paco).
parent(narciso,pepe).
parent(pepe,victor).

mother(X,Y) :-parent(X,Y),female(X).
father(X,Y) :-parent(X,Y),male(X).
brother(Y,Z) :-parent(X,Y),parent(X,Z),male(Y), Y\=Z.
sister(Y,Z) :-parent(X,Y),parent(X,Z),female(Y), Y\=Z.
grandmother(X,Y) :-parent(X,Z),parent(Z,Y),female(X).
grandfather(X,Y) :-parent(X,Z),parent(Z,Y),male(X).
uncle(X,Y) :-parent(Z,Y),brother(Z,X),male(X).
cousin(X,Y) :-parent(Z,X),parent(W,Y),brother(Z,W), X\=Y.



