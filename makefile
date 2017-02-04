#make it to shake it.

scanner : ./source/lexer.c lex.yy.c
	gcc ./source/lexer.c lex.yy.c -o scanner

lex.yy.c : ./source/scanner.l
	lex ./source/scanner.l
 	  
