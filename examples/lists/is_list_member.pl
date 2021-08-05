/*begin predicate list*/
is_list_member(X, [X|_]). /* if X is the first element of the list X return true, since it is part of the list this makes sense, if X is not the first element of the list move on to the next clause/rule */
is_list_member(X, [_|TAIL]) :- is_list_member(X, TAIL). /* if anything is the first element of the list check if X is member of the list TAIL*/
/*end predicate list*/

?- is_list_member(3, [4,6,2,3]).

/*
	_ is a wildcard, meaning it is something that matches everything
*/