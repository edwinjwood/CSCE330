% Problem 1. (4 points) Consider the following definition of
% location(X, Y): X is located in Y. 
location(desk, office).
location(computer, office).
location(flashlight, office).
location(envelope, desk).
location(stamp, envelope).
location(key, envelope).

% Define a predicate is_contained_in(X, Y) that is true if X is
% located in Y, either directly or indirectly. For example,
% is_contained_in(stamp, desk) is true because stamp is in envelope
% and envelope is in desk. Similarly, is_contained_in(stamp, office)
% is true because stamp is in envelope, envelope is in desk, and
% desk is in office.

% Base case: directly located
is_contained_in(X, Y) :- location(X, Y).
% Recursive case: X is in Z, and Z is contained in Y
is_contained_in(X, Y) :- location(X, Z), is_contained_in(Z, Y).


% Problem 2. (4 points) Define the summation function as a predicate in Prolog that add from 0 to n-1. e.g. sum(4, X), X = 0+1+2+3.
% sum(X, Y) :- undefined. 

% Base case
sum(0, 0).
% Recursive case: sum(N, S) = sum(N-1, S1) + (N-1)
sum(N, S) :-
	N > 0,
	N1 is N - 1,
	sum(N1, S1),
	S is S1 + N1.

% Tail-recursive summation: sum_tr(N, S) computes S = 0 + 1 + ... + (N-1).
sum_tr(N, S) :- sum_tr_acc(N, 0, S).

sum_tr_acc(0, Acc, Acc).
sum_tr_acc(N, Acc, S) :-
    N > 0,
    N1 is N - 1,
    Acc1 is Acc + N1,
    sum_tr_acc(N1, Acc1, S).

% Problem 3. 
q(z).
q(succ(X)):- q(X).

% 3.1 (2 points) Obsering the outputs for the query q(X), how would you describe the set of all possible X?
% Please put your answer in a prolog comment.

% The set produced by `q/1` is the unary representation of the
% natural numbers using `z` and `succ/1` (where `z` represents 0 and
% `succ(T)` represents the successor of T). The terms are:
%   z,
%   succ(z),
%   succ(succ(z)),
%   ...
% In other words, `q(X)` enumerates an infinite sequence of terms
% representing 0, 1, 2, 3, ... using `z`/`succ` notation.


% 3.2 (2 points) What does the following predicate describe?
% Please put your answer in a prolog comment.

p(z, Y, Y).
p(succ(X), Y, succ(Z1)) :- p(X, Y, Z1).

% The predicate `p(A, Y, Z)` applies the `succ/1` constructor A times
% to `Y` to produce `Z`. That is, treating the first argument as a
% unary natural number in `z`/`succ` notation, `p(A, Y, Z)` holds
% exactly when Z = Y + A (addition where `succ` represents increment).
% For example:
%   p(z, y, y).              % 0 added -> same
%   p(succ(z), y, succ(y)).  % 1 added
%   p(succ(succ(z)), y, succ(succ(y))).

% 3.2 (2 points) Define another recursive relation/predicate on the mysterious set from Problem 3.1.

% is_even(X) succeeds when X represents an even natural number
% (0, 2, 4, ...). Examples:
%   is_even(z).                    % 0 is even
%   is_even(succ(succ(z))).        % 2 is even
is_even(z).
is_even(succ(succ(X))) :- is_even(X).








