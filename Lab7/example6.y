#define YYSTYPE char *

%%
commands:
|
commands command SEMICOLON
;

command:
zone_set
;
zone_set:
ZONETOK quotedname zonecontent
{
printf("Complete zone for '%s' found\n",$2);
}
;
%%