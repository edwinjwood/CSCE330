% Problem 1.
% 1. (1 point) Define exactly_3(X), it is true if X is a list with exactly three elements.
exactly_3([_,_,_]).

% 2. (1 point) Define at_least_3(X), it is true if X is a list with at least three elements.
at_least_3([_,_,_|_]).

% 3. (2 points) Define at_most_3(X), it is true if x is list with at most three elements.
at_most_3([]).
at_most_3([_]).
at_most_3([_,_]).
at_most_3([_,_,_]).

% Problem 2 (2 points). Use the 'append' predicate to define a predicate just_before(X, Y, Z)
% such that it holds when X appears just before Y as an element of the list Z.
% E.g., just_before(3,4, [1,2,3,4,5,6]). returns true.
% just_before(3,5, [1,2,3,4,5,6]). returns false.

just_before(X, Y, Z) :-
	append(_, [X,Y|_], Z).


% Problem 3. (2 points). Consider the following mystery predicates p and q. 

p(X) :- q(X, [], X).
q([], Y, Y).
q([H|T], Y, Z) :- q(T, [H|Y], Z).


% Describe in English the lists X for which the predicate p holds.
% Please put your answer into a prolog comment.
%
% Short answer: p(X) is true exactly when X is a palindrome (it reads the same
% forwards and backwards).
%
% Why: `q/3` reverses its first argument into the second argument (the second
% argument is used as an accumulator). So `q(X, [], X)` requires that reversing
% X yields X.
%
% Examples:
%   p([]).        % true
%   p([a]).       % true
%   p([a,b,a]).   % true
%   p([a,b]).     % false


% Problem 4 (4 points) Use recursion to define the following remove predicate. 
% remove(X, Y, Z): Removes all occurrences of X from the List Y to produce Z.
remove(_, [], []).
remove(X, [X|T], R) :-
	remove(X, T, R).
remove(X, [H|T], [H|R]) :-
	X \= H,
	remove(X, T, R).


% Problem 5 (4 points) Use recursion to define the following intersect predicate.
% intersect(X, Y, Z): the list Z is the intersection of the list X, Y.    
intersect([], _, []).
intersect([H|T], Y, [H|R]) :-
	member(H, Y),
	intersect(T, Y, R).
intersect([H|T], Y, R) :-
	\+ member(H, Y),
	intersect(T, Y, R).


% ---------------------------
% Quick test commands (copy/paste into SWI-Prolog)
% ---------------------------
% Load the file:
% ?- ['c:/VS Projects/CSCE330/HW4/hw4.pl'].
%
% Problem 1
% ?- exactly_3([a,b,c]).        % true
% ?- exactly_3([a,b]).          % false
% ?- exactly_3(X).              % X = [_G1,_G2,_G3]
%
% ?- at_least_3([a,b,c,d]).     % true
% ?- at_least_3([a,b]).         % false
%
% ?- at_most_3([a,b]).          % true
% ?- at_most_3([a,b,c,d]).      % false
%
% Problem 2
% ?- just_before(3,4,[1,2,3,4,5]).   % true
% ?- just_before(X,Y,[a,b,c,d]).      % enumerates consecutive pairs
%
% Problem 3 (palindrome)
% ?- p([a,b,a]).   % true
% ?- p([a,b]).     % false
% ?- p(X).         % enumerates palindromic lists
%
% Problem 4 (remove)
% ?- remove(a,[a,a,b,a],Z).   % Z = [b]
% ?- remove(a,[b,a,c],Z).     % Z = [b,c]
%
% Problem 5 (intersect)
% ?- intersect([a,b,c],[b,c,d],Z).   % Z = [b,c]
% ?- intersect([a,a,b],[a,b],Z).     % Z = [a,a,b]

