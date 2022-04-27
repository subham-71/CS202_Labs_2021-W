%{
    #include<stdio.h>
    #include<stdlib.h>
    int yyerror(char *error_msg);
    int yylex();    
%}

%token num

%left '+' '-'
%left '*' '/'
%left '(' ')'
%left '{' '}'
%left '[' ']'

%%

EXPR: term {
    printf("Answer : %d\n", $$); 
    return 0;
    }

term:
    term'+'term {$$ = $1 + $3;}
    |term'-'term {$$ = $1 - $3;}
    |term'*'term {$$ = $1 * $3;}
    |term'/'term {$$ = $1 / $3;}
    |num {$$ = $1;}
    |'-'term {$$ = -$2;}
    |'('term ')' {$$ = $2;}
    |'{'term '}' {$$ = $2;}
    |'['term ']' {$$ = $2;};
%%

int yyerror(char *error_msg)
{
    printf("Invalid \n");
}

int main(){
    printf("Enter expression : ");
    yyparse();
}