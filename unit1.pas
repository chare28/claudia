unit Unit1;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils,crt,crear_arbol,manejo_arch_cond;

procedure mostrar_nodos(var nodo: t_punt_arbol);

implementation
procedure mostrar_nodos(var nodo: t_punt_arbol);
begin
if nodo <> nil then
begin
mostrar_nodos(nodo^.SAI);
writeln('DNI: ',nodo^.info.clave);
mostrar_nodos(nodo^.SAD);
end
else if nodo=nil then
writeln('el arbol se encuentra vacio');
end;


end.

