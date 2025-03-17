rev([], []).
rev([H|T], Ys) :- rev(T, Zs), add_last(H, Zs, Ys).
add_last(X, [], [X]).
add_last(X, [H|T], [H|T2]) :- add_last(X, T, T2).


lastmem([X], X).
lastmem([_|T], L) :- lastmem(T, L).
