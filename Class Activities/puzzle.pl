% puzzle.pl
solution(Flute) :-

    uniq_people(Doctor,Lawyer,Engineer), 
    uniq_people(Piano,Violin,Flute), 
 
spouses(Chris_spouse,Sandy_spouse,Pat_spouse), 

Chris_spouse = Doctor, % Chris is married to the doctor. 
Lawyer = Piano, % The lawyer plays the piano. 
\+ Pat_spouse = Engineer, % Pat is not married to the engineer. 
Violin = Doctor, % Sandy is a patient of 
\+ sandy = Violin. % the violinist. 

uniq_people(A,B,C) :-
    person(A), person(B), person(C), \+ A=B, \+ A=C, \+ B=C. 
    
person(chris). 
person(sandy). 
person(pat). 

% spouses(X,Y,Z): X,Y,Z can be spouses of Chris,Sandy,Pat. 
spouses(none,none,none). % Nobody is married.
spouses(sandy,chris,none). % Chris and Sandy are married.
spouses(pat,none,chris). % Chris and Pat are married. 
spouses(none,pat,sandy). % Sandy and Pat are married.