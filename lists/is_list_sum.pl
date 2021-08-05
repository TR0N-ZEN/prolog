/* begin predicate is_ist_sum */
is_list_sum(0, []). /* If first argument is 0 and second argument is [] (the empty list) return true, since the sum of the elements of the empty list is 0*/
is_list_sum(NEWSUM, [HEAD|TAIL]) :- is_list_sum(SUM, TAIL), NEWSUM is SUM + HEAD. /* The first argument is bound to NEWSUM and the second argument is bound to a list [HEAD|TAIL] while the first element of that list is bound to HEAD and the rest of the list is bound to TAIL. The literal on the right is true if both literals on the right are true, so if is_list_sum(SUM, TAIL) and NEWSUM is SUM + HEAD */
/* begin predicate is_ist_sum */

?- is_list_sum(6, [1,2,3]).