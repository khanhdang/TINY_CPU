%{
 #include <string.h>
 #include "y.tab.h"
 int n=0;
%}
%%
[ \t\n\r]
&&    {return(AND);}
\|\|  {return(OR);}
==    {return(EQ);}
!=    {return(NE);}
\>=   {return(GE);}
\<=   {return(LE);}
\<\<  {return(SHL);}
\>\>  {return(SHR);}
do    {yylval.n=++n;return(DO);}
else  {return(ELSE);}
goto  {return(GOTO);}
halt  {return(HALT);}
if    {yylval.n=++n;return(IF);}
in    {return(IN);}
int   {return(INT);}
out    {return(OUT);}
while    {yylval.n=++n;return(WHILE);}
[0-9]+       {yylval.s=strdup(yytext);return(NUMBER);}
[a-zA-Z][a-zA-Z0-9]*    {yylval.s=strdup(yytext);return(NAME);}
.            {return(yytext[0]);}
%%
int yywrap(){ return(1);}
