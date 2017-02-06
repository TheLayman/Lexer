#make it to shake it.

lex.yy.c : ./source/lexer.l new.txt
	lex ./source/lexer.l
	gcc lex.yy.c -ll -o lexer
	./lexer <new.txt
