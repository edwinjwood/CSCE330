%% This suppresses some warning messages
%% from the interpretor. 
:- discontiguous male/1.
:- discontiguous female/1.

%% child(X, Y): X is a child of Y.
child(john,sue).
child(john,sam).
child(jane,sue).
child(jane,sam).
child(sue,george).
child(sue,gina).
child(adam, james).
child(adam, susan).
child(jessie, susan).
child(jessie, jordan).
child(sarah, jordan).
child(sarah, emma).

child(alberto,guido). child(alberto,antonietta).
child(giulia,enrico). child(giulia,annamaria).
child(dante,marco).   child(clara,marco).
child(dante,laura).   child(clara,laura).
child(marco,alberto).   child(marco,giulia).
child(laura,lawrence).  child(laura,julie).
child(emily,lawrence).  child(emily, julie).
child(claire,lawrence). child(claire, julie).
child(sam,emily). child(ben,emily).
child(sam,dave). child(ben,dave).
child(eve,claire). child(annabelle,claire).
child(eve,ed). child(annabelle,ed).
child(giulio,guido). child(donata,giulio).
child(sara,donata). child(marco2,donata).
child(giulio,antonietta). child(gioia,clara).

%% male(X) : X is male.
%% female(X): X is female.
male(james).
male(jordan).
male(guido). male(enrico).
male(marco). male(dante). male(alberto). male(lawrence).
male(sam). male(ben). male(dave). male(ed).
male(giulio). male(marco2).
female(antonietta). female(annamaria).
female(clara).  female(laura).  female(giulia). female(julie).
female(emily). female(claire). female(eve). female(annabelle).
female(donata). female(sara). female(gioia).
female(susan).
female(jessie).
male(adam).
male(john).
female(sue).
male(sam).
female(jane).
male(george).
female(june).
female(sarah).
female(emma).

%% parent(Y,X): Y is parent of X. 
parent(Y,X) :- child(X,Y).

%% father(Y,X): Y is father of X.
father(Y,X) :- child(X,Y), male(Y).

%% mother(X, Y): X is the mother of Y.
mother(X, Y) :- child(Y, X), female(X).

%% opp_sex(X, Y): X is of opposite sex of Y. 
opp_sex(X,Y) :- male(X), female(Y).
opp_sex(Y,X) :- male(X), female(Y).

%% grand_father(X,Z): X is grand_father of Z. 
grand_father(X,Z) :- father(X,Y), parent(Y,Z).

%% Full siblings are siblings who have two parents in common.
%% Problem 1. Define the full_sibling predicate. (3 points)
%% Hints: use mother and father predicates.
full_sibling(X, Y) :- undefined.

%% Half siblings are siblings who have exactly one parent in common. 
%% Problem 2. Define the half_sibling predicate. (4 points)
%% Hints: use mother and father predicates.
half_sibling(X, Y) :- undefined.


%% We will use Prolog to find the digits for C, R,O, S, A, D, N, G, E, R such that CROSS + ROADS = DANGER. Note that C , D and R must greater than 0.

%%  CROSS
%%+ ROADS
%% -------
%% DANGER

%% dig(X): X is a digit.
dig(0). dig(1). dig(2). dig(3). dig(4).
dig(5). dig(6). dig(7). dig(8). dig(9).

%% An auxiliary predicate to ensure uniqueness.
uniq(C, R,O, S, A, D, N, G, E) :-
    \+ C = R,
    \+ C = O,
    \+ C = S,
    \+ C = A,
    \+ C = D,
    \+ C = N,
    \+ C = G,
    \+ C = E,

    \+ R = O,
    \+ R = S,
    \+ R = A,
    \+ R = D,
    \+ R = N,
    \+ R = G,
    \+ R = E,

    \+ O = S,
    \+ O = A,
    \+ O = D,
    \+ O = N,
    \+ O = G,
    \+ O = E,

    \+ S = A,
    \+ S = D,
    \+ S = N,
    \+ S = G,
    \+ S = E,

    \+ A = D,
    \+ A = N,
    \+ A = G,
    \+ A = E,

    \+ D = N,
    \+ D = G,
    \+ D = E,

    \+ N = G,
    \+ N = E,
    \+ G = E.
    
%% Problem 3. Define solve_digits predicates. You must use dig/1 and uniq/9.
%% Try to apply the optimization techniques to make
%% your program more efficient. (8 points)
solve_digits(C, R, O, S, A, D, N, G, E) :- undefined. 

%% A pretty printing predicate to check your solution.
print_solution :-
    solve_digits(C, R,O, S, A, D, N, G, E),
    format("~d~d~d~d~d\n", [C, R, O, S, S]),
    write("+"), nl, 
    format("~d~d~d~d~d\n", [R, O, A, D, S]),
    write("-------------\n"),
    format("~d~d~d~d~d~d\n", [D, A, N, G, E, R]).

%% We will use Prolog to solve the following puzzle.

%% Donna, Danny, David, and Doreen were seated at a table in a restaurant.
%% The men sat across from each other, as did the women. They each ordered a
%% different main course with a different beverage. In addition,
%% – Doreen sat beside the person who ordered steak.
%% – The chicken came with a Coke.
%% – The person with the lasagna sat across from the person with milk.
%% – David never drinks coffee.
%% – Donna only drinks water.
%% – Danny could not afford to order steak.
%% Who ordered the pizza?

people(donna).
people(danny).
people(david).
people(doreen).


%% beside(X, Y): X is sitting beside Y. 
beside(donna, danny).
beside(donna, david).
beside(danny, donna).
beside(david, donna).
beside(doreen, danny).
beside(doreen, david).
beside(danny, doreen).
beside(david, doreen).


%% across(X, Y): X is sitting across Y. 
across(donna, doreen).
across(doreen, donna).
across(david, danny).
across(danny, david).

%% Problem 4. Defined the following solve predicate to solve the puzzle. (10 points)
%% Hints: Use people/1, beside/2, across/2. 
solve(Coffee, Water, Coke, Milk, Steak, Lasagna, Pizza, Chicken) :- undefined.
