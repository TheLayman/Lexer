%{
#include "./source/lexer.h"
%}

%%

;      return e;
"drop" return DROP;
"DROP" return DROP;
"table" return TABLE;
"TABLE" return TABLE;
"alter" return alter;
"ALTER" return alter;
"column" return column;
"COLUMN" return column;
"add" return add;
"ADD" return add;


[a-zA-Z][_a-zA-Z0-9]*  return name;
[ \t\n] ;
.     printf("Un-expected input \n");
%%

int yywrap(void)
{
return 1;
}
