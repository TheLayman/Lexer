%{
#include <stdio.h>
%}
%%

"("           printf("LB\n");
")"           printf("RB\n");
"<"           printf("LT\n");
">"           printf("GT\n");
"<="          printf("LTE\n");
">="          printf("GTE\n");
"="           printf("EQ\n");
","           printf("COMMA\n");
"*"           printf("STAR\n");
";"           printf("SC\n");
"'"           printf("APS\n");
"+"           printf("PLUS\n");
"-"           printf("MINUS\n");
"/"           printf("DIV\n");

CREATE      printf("keyword CREATE\n");
TABLE       printf("keyword TABLE\n"); 
INTEGER     printf("keyword INTEGER\n");
REAL        printf("keyword REAL\n");
VARCHAR     printf("keyword VARCHAR\n");
PRIMARY     printf("keyword PRIMARY\n");
KEY         printf("keyword KEY\n");
FOREIGN     printf("keyword FOREIGN\n");

REFERENCES  printf("keyword REFERENCES\n");
SELECT      printf("keyword SELECT\n");
FROM        printf("keyword FROM\n");
WHERE       printf("keyword WHERE\n");
GROUP       printf("keyword GROUP\n");
BY          printf("keyword BY\n");
HAVING      printf("keyword HAVING\n");
JOIN        printf("keyword JOIN\n");
ON          printf("keyword ON\n");
INSERT      printf("keyword INSERT\n");
INTO        printf("keyword INTO\n");
VALUES      printf("keyword VALUES\n");
UPDATE      printf("keyword UPDATE\n");
SET         printf("keyword SET\n");
DELETE      printf("keyword DELETE\n");
DROP        printf("keyword DROP\n");
ALTER       printf("keyword ALTER\n");
ADD         printf("keyword ADD\n");
COLUMN      printf("keyword COLUMN\n");
IN          printf("keyword IN\n");

[a-zA-Z][_a-zA-Z0-9]*    printf("IDENTFIER %s\n",yytext);
                             
[0-9][0-9]*[\.][0-9]*	printf("NUMBER %s\n",yytext);
[ \t\n]					;
[^ \t\n()<>=,\*;\'\+\-\/]*		printf("unexpected character: %s\n", yytext);

%%

int yywrap(void)
{
	return 1;
}









