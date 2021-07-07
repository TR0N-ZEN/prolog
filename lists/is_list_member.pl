is_list_member(X, [X|_]).
is_list_member(X, [_|TAIL]) :- is_list_member(X, TAIL).

?- is_list_member(3, [4,6,2,3]).