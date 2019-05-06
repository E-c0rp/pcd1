%{
#include "y.tab.h"
extern int yylval;
%}

%%

if {return(IF);}
"=" {return(EQU);}
"(" {return(OPBR);}
")" {return(CLBR);}
"<"|">"|"=="|"!=" {return(RELOP);}
"&&" {return(AND);}
[0-9]+ {yylval=atoi(yytext); return(NUM);}
[a-zA-Z]+ {yylval=yytext[0]; return(ID);}

%%

yywrap()
{
return 1;
}
