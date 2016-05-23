:-lib(ic).

nqueens(N,Xs):-
  dim(Xs,[N]),
  Xs[1..N]::1..N,
  alldifferent(Xs[1..N]),
  (for(I,1,N-1), param(Xs,N) do
  (for(J,I+1,N), param(Xs,I) do
  Xs[I] #\= Xs[J] + I-J,
  Xs[I] #\= Xs[J] + J-I)),
  labeling(Xs[1..N]).