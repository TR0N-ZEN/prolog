# facts

are axioms - so the undeniable truth set by the programmer.
```prolog
frau(eva).
```
Expresses that eva is a frau.
So if someone ask if eva is a frau the answer can be given and it is yes.
The question would look like this:
```prolog
? - frau(eva).
```
and would in this case be ansered with
```CMD
true.
```
Some more facts as an example:
```CMD
mann(adam).
mann(tobias).
mann(frank).
frau(daniela).
frau(ulrike).
vater(adam, tobias).
vater(tobias, frank).
vater(tobias, ulrike).
mutter(eva, tobias).
mutter(daniela, frank).
mutter(daniela, ulrike).
```
These facts can be considered sets (unordered lists with no double occurences of elements as defined in mathematics) of arguments whilst the arguments here are names, like:  
>
>frau = {eva, daniela, ulrike},  
>mann = {adam, tobias, frank},  
>vater = {(adam, tobias), (tobias, frank), (tobias, ulrike)},  
>mutter = {(eva,tobias), (daniela, frank), (daniela, ulrike)}.  

If we write the name of a set like *mutter* and append a term  wrapped in braces we want to know for if it is inside the set we get an answer:
```
?- frau(daniela).
true.
```