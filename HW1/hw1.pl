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

%% opp_sex(X, Y): X is of opposite sex of Y. 
opp_sex(X,Y) :- male(X), female(Y).
opp_sex(Y,X) :- male(X), female(Y).

%% grand_father(X,Z): X is grand_father of Z. 
grand_father(X,Z) :- father(X,Y), parent(Y,Z).

%% ===============================================================
%% In this homework, you must replace "undefined" with your own
%% work. Your file must be free of syntax errors.

%% Problem 1. Who are the grandchildren of marco? (2 points). 
%% Please paste your prolog answers and put them in the comments.
%% ?- child(Grandchild, Parent), child(Parent, marco).
%% Grandchildren of marco are: gioia.


%% mother(X, Y): X is the mother of Y.
%% Problem 2. Define the mother predicate. (2 points) 
mother(X, Y) :- child(Y, X), female(X).

%% grand_parent(X, Y): X is a grand parent of Y.
%% Problem 3. Define the grand_parent predicate. (2 points) 
grand_parent(X, Z) :- parent(X, Y), parent(Y, Z).

%% great_grand_mother(X, Z): X is a great grand mother of Z.
%% Problem 4. Define the great_grand_mother predicate. (2 points) 
great_grand_mother(X, Z) :- mother(X, Y), parent(Y, W), parent(W, Z).

%% married(X, Y): X and Y are married couple. 
%% Problem 5. Define a married couple predicate. Note that
%% we define two people are married if they have a common child. (2 points)
married(X, Y) :- child(C, X), child(C, Y), X \= Y.

