%{
%}

%%
"//"[^\n]* ;
"/*"([^*]|[*]+[^/])*[*]+"/" ;
. fprintf(yyout,"%s",yytext);
%%

yywrap(){};

int main()
{
extern FILE *yyin,*yyout;
yyin=fopen("input.c","r");
yyout=fopen("output.c","w");
yylex();
}
