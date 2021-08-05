is_nat(0).
is_nat(s(X)) :- nat(X).

is_sum(0,X,X) :- nat(X).
is_sum(s(X),Y,s(Z)) :- is_sum(X,Y,Z).