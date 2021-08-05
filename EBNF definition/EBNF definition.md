**Preface**
This definition is constructive from the smallest alement to the complex ones relying on the smallest.
Every symbol that has a circumflex (^) above it is not part of the language and is part of the EBNF-description grammar.
|EBNF grammar|meaning|
|-|-|
|$ \lang x \rang ::= \cdots $|x will be defined as ...|
|$ \hat{(} x \hat{)} $ | x will be there once |
|$ \hat{\{} x \hat{\}} $ | x will be there zero, one or arbitrarily many times |
|$ x \hat{\|} y $ | x or y will be there |

$$
	\lang varid \rang ::=
	\hat{(}
		A \hat{|} \cdots \hat{|} Z
	\hat{)}
	\hat{\{}
		A \hat{|} \cdots \hat{|} Z \hat{|}
		a \hat{|} \cdots \hat{|} z \hat{|}
		0 \hat{|} \cdots \hat{|} 9
	\hat{\}}
\tag{variables}
$$

$$
	\lang predid \rang ::=
	\hat{(}
		a \hat{|} \cdots \hat{|} z
	\hat{)}
	\hat{\{}
		a \hat{|} \cdots \hat{|} z
	\hat{\}}
\tag{predicate symbols}
$$

$$
	\lang conid \rang ::=
	\hat{(}
		a \hat{|} \cdots \hat{|} z
	\hat{)}
	\hat{\{}
		a \hat{|} \cdots \hat{|} z
	\hat{\}}
\tag{constructors}
$$

$$
	\lang pat \rang ::=
		\lang varid \rang \hat{|}
		\lang conid \rang \hat{|}
		\lang conid \rang
			( \lang pat \rang  \hat{\{} , \lang pat \rang \hat{\}} )
\tag{patterns}
$$

$$
	\lang lit \rang ::=
		\lang predid \rang \hat{|}
		\lang predid \rang
			( \lang pat \rang  \hat{\{} , \lang pat \rang \hat{\}} )
\tag{(positive) literals}
$$


$$
\lang clause \rang ::=
	\lang lit \rang :- \lang lit \rang \hat{\{} , \lang lit \rang \hat{\}}.
	\hat{|}
	\tag{rule}
$$
$$
	\lang lit \rang .
	\tag{fact}
$$

$$
\lang pred \rang ::= \lang clause \rang \hat{\{} \lang clause \rang \hat{\}}
\tag{predicate}
$$

$$
\lang prog \rang ::= \lang pred \rang \hat{\{} \lang pred \rang \hat{\}}
\tag{program}
$$

>For example:
>```prolog
>nat(0).
>nat(s(X)) :- nat(X).
>```
>whichs first line means '0 is element of nat'
>second line from right to left: 'if X is an element of nat so is s(X)'  
>or second line from left to right: 's(X) is an element of nat if X is an element of nat'  
>while *nat* is a $ \lang predid \rang $ (*predicate identifier*),  
> *0* is a terminal symbol (= a part oft the language and not further to interprete but tu understand its meaning in the language you must),  
> *X* is a $ \lang varid \rang $ (*variable identifier*),  
> *s* is a $ \lang conid \rang $ (*constructor*).  

>We now could query
>```prolog
>?-s(s(s(X))).
>```
>and receive the following
>```prolog
>X = 0 .
>```
>

>Unifying the concrete program with the syntax definition of *prolog* in *EBNF*:
>>$ \lang prog \rang $  
>
>>$ \lang pred \rang $
>
>>$ \lang clause \rang $  
>>$ \lang clause \rang $
>
>>$ \lang lit \rang .$  
>>$ \lang lit \rang $ $:-$ $ \lang lit \rang .$
>
>>$ \lang predid \rang ( \lang pat \rang ) .$  
>>$ \lang predid \rang ( \lang pat \rang ) $ $:-$ $ \lang predid \rang ( \lang pat \rang ) .$
>
>>$ nat ( 0 ) .$  
>>$ nat ( \lang conid \rang (\lang varid \rang) ) $ $:-$ $ nat ( \lang varid \rang ) .$
>
>>$ nat ( 0 ) .$  
>>$ nat ( s (X) ) $ $:-$ $ nat (X) .$
>
>