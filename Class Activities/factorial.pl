%% non-tail recursive version of factorial.
%% factorial(0, 1).
%% factorial(N, F) :-
%%    N > 0,
%%    N1 is N - 1,
%%    factorial(N1, F1),
%%    F is N * F1.

%% tail recursive version of factorial.
factorial2(N, F) :- factorial_helper(N, 1, F).

factorial_helper(0, Acc, Acc).
factorial_helper(N, Acc, Result) :-
   N > 0,
   NewAcc is Acc * N,
   N1 is N - 1,
   factorial_helper(N1, NewAcc, Result).