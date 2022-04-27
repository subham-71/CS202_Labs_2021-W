%{
    #include<stdio.h>
    #include<stdlib.h>
    int yylex();
    void yyerror(char *error_msg);
%}

%token token_a token_b newline

%%

letters: token_a token_a token_a token_a token_a token_a token_a token_a token_a token_a letter token_b newline {printf("Valid string \n"); exit(0);};
letter: letter token_a |  ;

%%

void yyerror(char *error_msg){
        printf("Invalid string \n");
        exit(0);
}

int yywrap(){
    return 1;
}

int main(){
    printf("Enter string : ");
    yyparse();
}