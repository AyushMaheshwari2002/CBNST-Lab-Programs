%{
%}
%%
"<"[^>]*">" { printf("%s",yytext); }
. ;
%%
int yywrap(){}
int main(int argc,char **argv)
{
extern FILE *yyin,*yyout;
yyin=fopen(argv[1],"r");
yyout=fopen(argv[2],"w");
yylex();
return 0;
}



Input :   <html>Hello</html>

Output : <html></html>


