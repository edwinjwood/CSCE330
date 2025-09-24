% Problem 1.
% 1. (1 point) Define exactly_3(X), it is true if X is a list with exactly three elements.
exactly_3(X) :- undefined. 

% 2. (1 point) Define at_least_3(X), it is true if X is a list with at least three elements.
at_least_3(X) :- undefined. 

% 3. (2 points) Define at_most_3(X), it is true if x is list with at most three elements.
at_most_3(X) :- undefined. 

% Problem 2 (2 points). Use the 'append' predicate to define a predicate just_before(X, Y, Z)
% such that it holds when X appears just before Y as an element of the list Z.
% E.g., just_before(3,4, [1,2,3,4,5,6]). returns true.
% just_before(3,5, [1,2,3,4,5,6]). returns false.

just_before(X, Y, Z) :- undefined. 


% Problem 3. (2 points). Consider the following mystery predicates p and q. 

p(X) :- q(X, [], X).
q([], Y, Y).
q([H|T], Y, Z) :- q(T, [H|Y], Z).


% Describe in English the lists X for which the predicate p holds.
% Please put your answer into a prolog comment. 




% Problem 4 (4 points) Use recursion to define the following remove predicate. 
% remove(X, Y, Z): Removes all occurrences of X from the List Y to produce Z.
remove(X, Y, Z) :- undefined.


% Problem 5 (4 points) Use recursion to define the following intersect predicate.
% intersect(X, Y, Z): the list Z is the intersection of the list X, Y.    
intersect(X, Y, Z) :- undefined.
