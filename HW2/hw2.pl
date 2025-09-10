% Problem 1. (4 points) Consider the following definition of
% location(X, Y): X is located in Y. 
location(desk, office).
location(computer, office).
location(flashlight, office).
location(envelope, desk).
location(stamp, envelope).
location(key, envelope).

% Define the predicate is_contained_in(X, Y) to list all the X that is contained in Y, including the nested ones. 

is_contained_in(X, Y) :- undefined. 


% Problem 2. (4 points) Define the summation function as a predicate in Prolog
% that add from 0 to n. e.g. sum(4, X), X = 0+1+2+3.

sum(X, Y) :- undefined. 



% Problem 3. 
q(z).
q(succ(X)):- q(X).

% 3.1 (2 points) Obsering the outputs for the query q(X), how would you describe the set of all possible X?
% Please put your answer in a prolog comment.



% 3.2 (2 points) What does the following predicate describe?
% Please put your answer in a prolog comment.
p(z, Y, Y).
p(succ(X), Y, succ(Z1)) :- p(X, Y, Z1).


% 3.2 (2 points) Define another recursive relation/predicate on the mysterious set from Problem 3.1.








