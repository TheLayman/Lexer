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

(?i:"CREATE")    printf("keyword CREATE\n");
(?i:"TABLE")       printf("keyword TABLE\n"); 
(?i:"INT")     printf("keyword INTEGER\n");
(?i:"FLOAT")        printf("keyword FLOAT\n");
(?i:"VARCHAR")     printf("keyword VARCHAR\n");
(?i:"PRIMARY")     printf("keyword PRIMARY\n");
(?i:"KEY")         printf("keyword KEY\n");
(?i:"FOREIGN")     printf("keyword FOREIGN\n");

(?i:"REFERENCES")  printf("keyword REFERENCES\n");
(?i:"SELECT")      printf("keyword SELECT\n");
(?i:"FROM")        printf("keyword FROM\n");
(?i:"WHERE")       printf("keyword WHERE\n");
(?i:"GROUP")       printf("keyword GROUP\n");
(?i:"BY")          printf("keyword BY\n");
(?i:"HAVING")      printf("keyword HAVING\n");
(?i:"JOIN")        printf("keyword JOIN\n");
(?i:"ON")          printf("keyword ON\n");
(?i:"INSERT")      printf("keyword INSERT\n");
(?i:"INTO")        printf("keyword INTO\n");
(?i:"VALUES")      printf("keyword VALUES\n");
(?i:"UPDATE")      printf("keyword UPDATE\n");
(?i:"SET")         printf("keyword SET\n");
(?i:"DELETE")      printf("keyword DELETE\n");
(?i:"DROP")        printf("keyword DROP\n");
(?i:"ALTER")       printf("keyword ALTER\n");
(?i:"ADD")         printf("keyword ADD\n");
(?i:"COLUMN")      printf("keyword COLUMN\n");
(?i:"IN")          printf("keyword IN\n");
(?i:"UNIQUE")          printf("keyword UNIQUE\n");

[a-zA-Z][_a-z\.A-Z0-9]*    printf("IDENTFIER %s\n",yytext);
                             
[0-9]*[\.]?[0-9]*	printf("NUMBER %s\n",yytext);
[ \t\n]					;
[^ \t\n()<>=,\*;\'\+\-\/]*		printf("unexpected character: %s\n", yytext);

%%

int yywrap(void)
{
	return 1;
}








