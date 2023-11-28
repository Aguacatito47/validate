%{
#include <stdio.h>
%}

%%
[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}   { printf("Correo electrónico válido: %s\n", yytext); }
.|\n                                             ;
%%

int main() {
    yylex();
    return 0;
}
