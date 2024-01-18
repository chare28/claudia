unit crear_arbol;

{$mode ObjFPC}{$H+}

interface

uses
 manejo_arch_cond,crt, Classes, SysUtils;
type
  t_dato_arbol_cond=record
    clave: string[100];      //dni
    pos: integer;            //posicion de la persona en el archivo
  end;
  t_punt_arbol=^t_nodo;
  t_nodo=record
    info:t_dato_arbol_cond;
    SAI,SAD:t_punt_arbol;
  end;
procedure insertar_arbol(var nodo:t_punt_arbol; persona: conductores;pos:integer);
procedure creararbol (var raiz:t_punt_arbol; var arch_cond:t_arch);
//function preorden (raiz:t_punt_arbol; buscado:string): t_punt_arbol;
//procedure guarda_reg_cond (var arch:t_arch; raiz_nombre, raiz_dni:t_punt_arbol; pos:byte; reg:conductores);
implementation
procedure insertar_arbol(var nodo:t_punt_arbol; persona: conductores;pos:integer);
begin
  if nodo= nil then
  begin
    new(nodo);
    nodo^.info.clave:= persona.dni;
    nodo^.info.pos:=pos;
    nodo^.SAI:= nil;
    nodo^.SAD:=nil;
  end
  else if persona.dni< nodo^.info.clave then
  insertar_arbol(nodo^.SAI, persona,pos)
  else if persona.dni>nodo^.info.clave then
  insertar_arbol(nodo^.SAD,persona,pos);
end;

procedure creararbol (var raiz:t_punt_arbol;var arch_cond:t_arch); {se deberia crear un arbol desde archivo, o el arbol se debe de ir construyendo y despues gusradr eso en el archivo}
var
  persona:conductores;
begin
  while not EOF(arch_cond)do
  begin
       read(arch_cond,persona);
       insertar_arbol(raiz,persona,filepos(arch_cond));
  end;

end;

end.

