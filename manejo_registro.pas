unit manejo_registro;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils,crt,crear_arbol,manejo_arch_cond,unit1;

PROCEDURE LEE_REGISTRO(VAR ARCH_cond:T_ARCH; POS:CARDINAL; VAR REG:conductores);
PROCEDURE GUARDA_REGISTRO(VAR ARCH_cond:T_ARCH; var POS:integer; REG:conductores);
PROCEDURE guardar_archivo (VAR ARCH_cond:T_ARCH);   //alta
PROCEDURE CARGA_registro(VAR persona: conductores);
procedure nolose(var nodo: T_punt_arbol; var arch_cond:t_arch);

implementation
PROCEDURE LEE_REGISTRO(VAR ARCH_cond:T_ARCH; POS:CARDINAL; VAR REG:conductores);
BEGIN
SEEK(ARCH_cond, POS);
READ(ARCH_cond, REG);
END;
PROCEDURE GUARDA_REGISTRO(VAR ARCH_cond:T_ARCH; var POS:integer; REG:conductores);
BEGIN
SEEK(ARCH_cond, POS);
WRITE(ARCH_cond, REG);
END;
PROCEDURE CARGA_registro(VAR persona: conductores);
begin
clrscr;
  gotoxy(40,8);
  writeln('ALTA');
  gotoxy(40,12);
  writeln('ingrese los datos del conductor: ');
  gotoxy(40,14);

  with (persona) do
  writeln('DNI: ');
  gotoxy(40,15);
  readln(persona.dni);
  gotoxy(40,16);
  writeln('Nombre y apellido: ');
  gotoxy(40,17);
  readln(persona.nomyape);
  gotoxy(40,18);
  writeln('Fecha de nacimiento: ');
  gotoxy(40,19);
  readln(persona.fechNac);
  gotoxy(40,20);
  writeln('Numero de telefono: ');
  gotoxy(40,21);
  readln(persona.nTelefono);
  gotoxy(40,22);
  writeln('e-mail: ');
  gotoxy(40,23);
  readln(persona.email);
  gotoxy(40,24);
  writeln('Puntos de scoring: ');
  gotoxy(40,25);
  readln(persona.scoring);
  gotoxy(40,26);
  writeln('Fecha de habilitacion: ');
  gotoxy(40,27);
  readln(persona.fechHabil);
  gotoxy(40,28);
  writeln('Cantidad de reincidencias: ');
  gotoxy(40,29);
  readln(persona.cantReinc);
end;
PROCEDURE guardar_archivo (VAR ARCH_cond:T_ARCH);   //alta
VAR
R:conductores;
POS:integer;
BEGIN
CLRSCR;
GOTOXY (30, 5); WRITELN ('OPCION ALTA');
CARGA_registro(R);
POS:= FILESIZE(ARCH_cond);
GUARDA_REGISTRO (ARCH_cond, POS, R);
end;
procedure nolose(var nodo: T_punt_arbol; var arch_cond:t_arch);
begin
 guardar_archivo(arch_cond);
 creararbol(nodo,arch_cond);
// mostrar_nodos(nodo,arch_cond);

end;

end.
