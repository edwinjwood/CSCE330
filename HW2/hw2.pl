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


% Problem 2. (4 points) Define the summation function as a predicate in Prolog
% that add from 0 to n. e.g. sum(4, X), X = 0+1+2+3.

% Base case
sum(0, 0).
% Recursive case: sum(N, S) = sum(N-1, S1) + (N-1)
sum(N, S) :-
	N > 0,
	N1 is N - 1,
	sum(N1, S1),
	S is S1 + N1.



% Problem 3. 
q(z).
q(succ(X)):- q(X).

% 3.1 (2 points) Obsering the outputs for the query q(X), how would you describe the set of all possible X?
% Please put your answer in a prolog comment.

% The set produced by `q/1` is the Peano-style representation of the
% natural numbers (including 0). The terms are:
%   z,
%   succ(z),
%   succ(succ(z)),
%   ...
% In other words, `q(X)` enumerates an infinite sequence of terms
% representing 0, 1, 2, 3, ... in unary (Peano) notation.



% 3.2 (2 points) What does the following predicate describe?
% Please put your answer in a prolog comment.

p(z, Y, Y).
p(succ(X), Y, succ(Z1)) :- p(X, Y, Z1).

% The predicate `p(A, Y, Z)` applies the `succ/1` constructor A times
% to `Y` to produce `Z`. That is, treating `A` as a Peano number,
% `p(A, Y, Z)` holds exactly when Z = Y + A (Peano addition where
% `succ` represents increment). For example:
%   p(z, y, y).              % 0 added -> same
%   p(succ(z), y, succ(y)).  % 1 added
%   p(succ(succ(z)), y, succ(succ(y))).

% 3.2 (2 points) Define another recursive relation/predicate on the mysterious set from Problem 3.1.

% Example additional predicate on Peano numbers: convert a Peano term to an integer.
% peano_to_int(Peano, Int) succeeds if Int is the ordinary integer value
% of the Peano term (z = 0, succ(z) = 1, ...).
peano_to_int(z, 0).
peano_to_int(succ(X), N) :-
	peano_to_int(X, N1),
	N is N1 + 1.








