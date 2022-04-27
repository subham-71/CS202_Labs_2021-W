============ Q1 ===============
Count.l

Steps to run :

lex Count.l
cc lex.yy.c -ll
./a.out input.txt

---
Here input.txt is input file.

Every space is also character as one character. (also spaces caused due to \t)
If there is a special character in between a word ("hell@o") , then the program considers it as two words.


============ Q2 ===============
Comments.l

Steps to run :

lex Comments.l
cc lex.yy.c -ll
./a.out input.txt output.txt

---
Here input.txt and output.txt are input and output files respectively.


============ Q3 ===============
ab.l , ab.y

Steps to run :

lex ab.l
yacc -d ab.y
cc lex.yy.c y.tab.c
./a.out

Recognizes only if 'a' is present in the pattern. (Invalid if A is present)

============ Q4 ===============
calc.l

Steps to run :

lex calc.l
cc lex.yy.c -ll
./a.out

Three types of brackets in expressions can be used. ( a+[cd*{b+(po-ee/f)}] is considered valid and can yield operators and operands)
Expressions with spaces between them are considered invalid

============ Q5 ===============
calc.y

Steps to run :

lex calc_y.l
yacc -d calc.y
cc lex.yy.c y.tab.c
./a.out

Three types of brackets in expressions can be used. ( 4+[56*{23+(66-24/3)}] this expression can be evaluated.)
Expressions with spaces between them won't be evaluated properly.
