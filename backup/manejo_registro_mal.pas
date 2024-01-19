unit manejo_registro_mal;

{$mode ObjFPC}{$H+}

interface
uses
Classes, SysUtils,crt,crear_arbol,manejo_arch_cond;
PROCEDURE MUESTRA_registro(r: conductores);
PROCEDURE LISTADO(VAR ARCH_cond:T_ARCH);

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


PROCEDURE LISTADO(VAR ARCH_cond:T_ARCH);
VAR
REG:conductores;
BEGIN
RESET(ARCH_cond);
CLRSCR;
WHILE NOT(EOF(ARCH_cond)) DO
BEGIN
READ(ARCH_cond, REG);
if reg.habilitado = TRUE then
MUESTRA_REGISTRO(REG);
END;
READKEY;
END;
end.
