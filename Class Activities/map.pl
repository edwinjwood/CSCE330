% This program finds a solution to the map-coloring problem for
% five regions A, B, C, D, and E.
% The program finds a coloring of the regions such that no two
% connected regions have the same color. The colors used are red,
% white, and blue.

solution(A,B,C,D,E) :- 
color(A), color(B), color(C), color(D), color(E), 
\+ A=B, \+ A=C, \+ A=D, \+ A=E, \+ B=C, \+ C=D, \+ D=E. 

% The three colors are these. 
color(red). 
color(white). 
color(blue).
