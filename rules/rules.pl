frau(brunhilde). % fact
mann(thomas). % fact
mann(carsten). % fact
mann(niklas). % fact
mann(jonas). % fact
elter(thomas,carsten). % fact
elter(brunhilde,carsten). % fact
elter(carsten,niklas). % fact
elter(carsten,jonas). % fact


/* begin of predicate mutter */
mutter(A,B) :- frau(A), elter(A,B). /* clause a.k.a. rule of predicate mutter*/
/* end of predicate mutter */

/* begin of predicate vater */
vater(A,B) :- mann(A), elter(A,B). /* clause a.k.a. rule of predicate vater*/
/* end of predicate vater */

/* begin of predicate grossmutter */
grossmutter(A,B) :- mutter(A,C), mutter(C,B). /* clause 1 of predicate grossmutter */
grossmutter(A,B) :- mutter(A,C), vater(C,B). /* clause 2 of predicate grossmutter */
/* end of predicate grossmutter */

/* begin of predicate grossvater */
grossvater(A,B) :- vater(A,C), vater(C,B). /* clause 1 of predicate grossvater */
grossvater(A,B) :- vater(A,C), mutter(C,B). /* clause 2 of predicate grossvater */
/* end of predicate grossvater */


/*
	, is the logical conjunction (logical and)
	 mutliple clauses work like the logical disjunction (logical or)
*/