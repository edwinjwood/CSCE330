front(L1,L2) :- append(L1,_,L2).

last(E,L) :- append(_,[E],L).