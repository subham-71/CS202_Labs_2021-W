%{
    #include "y.tab.h"
%}

%%
[a] {return token_a;}
[b] {return token_b;}
\n {return newline;}
. {return yytext[0];}
%%
