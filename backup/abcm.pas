unit abcm;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, crear_arbol,crt, manejo_arch_cond, manejo_registro;

PROCEDURE ALTA (var persona:conductores;var arch_cond:t_arch; info:t_punt_arbol);
//procedure BAJA ();
//procedure MODIFICACION ();
//procedure CONSULTA(raiz:t_punt_arbol; var arch_cond:t_arch);  {lista}
//PROCEDURE LISTADO(VAR ARCH_cond:T_ARCH);

implementation
PROCEDURE ALTA (var persona:conductores;var arch_cond:t_arch; info:t_punt_arbol);
VAR
R:conductores;
POS:integer;
BEGIN
GUARDA_REGISTRO(arch_cond,pos,persona);

end;

end.

