unit abcm;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, crear_arbol,crt, manejo_arch_cond;

procedure ALTA (var r:t_punt_arbol; var persona:conductores);
//procedure BAJA ();
//procedure MODIFICACION (); }
procedure CONSULTA (r:t_punt_arbol);

implementation
procedure ALTA (var r:t_punt_arbol; var persona:conductores);

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
//  writeln('¿Se encuentra habilitado? (si/no): ');
// readln(persona.habilitado);
  writeln('Fecha de habilitacion: ');
  gotoxy(40,27);
  readln(persona.fechHabil);
  gotoxy(40,28);
  writeln('Cantidad de reincidencias: ');
  gotoxy(40,39);
  readln(persona.cantReinc);
  insertar_arbol(r,persona);


end;

procedure CONSULTA(r:t_punt_arbol);  {lista}
begin
  repeat
  with (r^.info) do
       begin
         writeln('DNI: ', DNI);
         writeln('Nombre y apellido: ', nomyape);
         writeln('Fecha de nacimiento: ', fechNac);
         writeln('Numero de telefono: ', nTelefono);
         writeln('e-mail: ', email);
         writeln('Puntos de scoring: ', scoring);
         writeln('¿Se encuentra habilitado? (si/no): ', habilitado);
         writeln('Fecha de habilitacion: ', fechHabil);
         writeln('Cantidad de reincidencias: ', cantReinc);
       end;
  until (EOF(arch_cond));
end;

end.

