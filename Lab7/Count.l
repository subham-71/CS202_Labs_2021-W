%{
#include<stdio.h>
int characters, words, spaces,lines;
%}

%%

[\n] { lines++;characters++;}
<<EOF>> {lines++; return 0;}
[ ] { spaces++; characters++;}
[a-z0-9A-Z.]+ { words++; characters += yyleng;}

%%


int main (int argc , char*argv[])
{
    yyin = fopen(argv[1],"r");
    yylex();
    printf("Characters : %d\n", characters);
    printf("Words : %d\n", words);
    printf("Spaces : %d\n", spaces);
    printf("Lines : %d\n",lines);
    return 0;
}





