%{
    #include<stdio.h>
    int cmnts;
%}

%%
\/\/.* {
    cmnts++;
}

\/\*[^*]*[*]+([^/][^*]*[*]+)*\/  {
    cmnts++;
}
%%

int main(int argc, char* argv[]){
    yyin = fopen(argv[1], "r");
    yyout = fopen(argv[2], "w");
    yylex();
    printf("Comments count : %d\n", cmnts);
    return 0;
}