%pointer
%option noyywrap

%%

 /* ── Reglas ya implementadas ────────────────────────── */

 /* Constante octal: 0 seguido de dígitos octales (o solo 0) */
0[0-7]*         { printf("constante octal: %s\n", yytext); }

 /* Ignorar espacios, tabs y saltos de línea */
[ \t\n]         { }

 /* ── TODO: completar las siguientes reglas ──────────── */

 /* Constante decimal: sin cero inicial (excepto 0, que lo toma la regla octal) */
[1-9][0-9]*     { printf("constante decimal: %s\n", yytext); }

 /* Constante hexadecimal: prefijo 0x/0X y al menos un dígito hexa */
0[xX][0-9A-Fa-f]+ { printf("constante hexadecimal: %s\n", yytext); }

 /* Identificador: letra o _, seguido de letras/dígitos/_ */
[A-Za-z_][A-Za-z0-9_]* { printf("identificador: %s\n", yytext); }

 /* Comodín: cualquier carácter no reconocido por reglas anteriores */
.               { printf("caracter no reconocido: %s\n", yytext); }

%%

int main(void) {
    yylex();
    return 0;
}
