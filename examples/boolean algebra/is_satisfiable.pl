% 'and', 'or', 'neg' are constructors, meaning they are operations of booelan logic and assemble new terms if boolean logic if they are supplied with enough arguments which must be terms of boolean logic

is_satisfiable(true).
is_satisfiable(and(X,Y)) :- is_satisfiable(X), is_satisfiable(Y).
is_satisfiable(or(X,Y)) :- is_satisfiable(X).
is_satisfiable(or(X,Y)) :- is_satisfiable(Y).
is_satisfiable(neg(X)) :- is_invalid(X).

is_invalid(and(X,Y)) :- is_invalid(X).
is_invalid(and(X,Y)) :- is_invalid(Y).
is_invalid(or(X,Y)) :- is_invalid(X), is_invalid(Y).
is_invalid(neg(X)) :- is_satisfiable(X).