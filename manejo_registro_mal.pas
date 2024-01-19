unit manejo_registro_mal;

{$mode ObjFPC}{$H+}

interface
uses
Classes, SysUtils,crt,crear_arbol,manejo_arch_cond;
PROCEDURE MUESTRA_registro(r: conductores);

implementation
PROCEDURE MUESTRA_registro(r: conductores);
var
  v:string[2];
begin
with (r) do
begin
writeln('nombre y apellido: ', nomyape);
WRITEln('DNI: ',dni);
WRITEln('Cantidad de reincidencias: ',cantreinc);
if (habilitado= false) then
v:= 'No'
else
if (habilitado= true ) then
v:= 'Si' ;
WRITEln('se encuentra habilitado: ', v);
WRITELN('Numero de telefono: ', nTelefono);
writeln('');
end;
end;

end.
