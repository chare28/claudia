unit abcm;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, crear_arbol;

{procedure ALTA ();
procedure BAJA ();
procedure MODIFICACION (); }
procedure CONSULTA (r:t_nodo);

implementation
procedure CONSULTA(r:t_nodo);  {lista}
begin
  with (r.info) do
       begin
         writeln('DNI: ', DNI);
         writeln('Nombre y apellido: ', nomyape);
         writeln('Fecha de nacimiento: ', fechNac);
         writeln('Numero de telefono: ', nTelefono);
         writeln('e-mail: ', email);
         writeln('Puntos de scoring: ', scoring);
         writeln('¿Se encuentra habilitado? (si/no): ', habilitado);
         writeln('Fecha de habilitacion: ', fechHabil);
         //writeln('Cantidad de reincidencias: ', cantRein);
       end;
end;

end.

