minus(X, 0, X).  
minus(s(X), s(Y), Z) :- minus(X, Y, Z).  

power(_, 0, s(0)). 
power(X, s(Y), Z) :- power(X, Y, Z1), multiply(X, Z1, Z).  

multiply(0, _, 0).  
multiply(s(A), B, C) :- multiply(A, B, C1), add(B, C1, C).

add(0, B, B). 
add(s(A), B, s(C)) :- add(A, B, C).  
