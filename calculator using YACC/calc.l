
/*
yacc -d calc.y
flex calc.l
gcc lex.yy.c y.tab.c
./a.out
*/

%{
	#include "y.tab.h"
	extern int yylval;  
%}

%%

[0-9]+ {yylval=atoi(yytext); 
return NUM;
}   

\n   {return 0;}

.     {return yytext[0];}   

%%