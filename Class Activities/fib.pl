%% Simple recursive definition of Fibonacci numbers
fib(0, 0) :- !. % The 0th Fibonacci number is 0
fib(1, 1) :- !. % The 1st Fibonacci number is 1
fib(N, F) :-
    N > 1,
    N1 is N - 1,
    N2 is N - 2,
    fib(N1, F1),
    fib(N2, F2),
    F is F1 + F2.

%% More efficient version using an accumulator
fib2(0, 0, 0).
fib2(1, 1, 0).
fib2(X, Y, Z) :-
    X > 0,
    X1 is X - 1,
    fib2(X1, A, B),
    Y is A + B,
    Z is A.