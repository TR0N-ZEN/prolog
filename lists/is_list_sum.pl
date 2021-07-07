is_list_sum(0, []).
is_list_sum(NEWSUM, [HEAD|LIST]) :- is_list_sum(SUM, LIST), NEWSUM is SUM + HEAD.

?- is_list_sum(6, [1,2,3]).