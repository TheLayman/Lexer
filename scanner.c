#include <stdio.h>
#include "scanner.h"

extern int yylex();
extern int yylineno;
extern char* yytext;

char *names[] = {NULL,"drop","table","name"};

int main(void)
{
 int ntoken, vtoken;

 ntoken=yylex();
 while(ntoken){

        if(ntoken== DROP)
	{
		if(yylex()!= TABLE)
		{
		printf("Syntax error in line %d, Expected 'TABLE' but found %s\n", yylineno, yytext);
		return 1;
		}

		vtoken=yylex();
		printf("Dropped table %s\n", yytext);
		
	}
	
	if(ntoken== alter)
	{
		 if(yylex()!= TABLE)
                {
                printf("Syntax error in line %d, Expected 'TABLE' but found %s\n", yylineno, yytext);
                return 1;
                }
		vtoken=yylex();
		int temp=yylex();
		if((temp!= DROP)&&(temp!=add))
		{
		printf("Syntax error in line %d, Unexpected token %s\n", yylineno,yytext);
		return 1;
		}
		if(temp==DROP)
		{
		 temp=yylex();
		  if(temp!= column)
                {
                printf("Syntax error in line %d, Expected 'column' but found %s\n", yylineno, yytext);
                return 1;
                }
		vtoken=yylex();
		printf("Dropped Column %s\n",yytext);

		}
		
		else if(temp==add)
		{
		vtoken=yylex();
		char* new=yytext;
		vtoken=yylex();
		printf("Added Column %s with definition %s\n", new, yytext);
		}
	}


        else { }//printf("More features coming soon"); }


	ntoken=yylex();	
}

return 0;
}
