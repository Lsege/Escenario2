Program RecorridoArchivo;
uses crt;
type
	tRegistro = record
		Annio:integer;
		Mes: 1..12;
		Dia: 1..31;
		Temperatura: -30..120
	end;
var
	Registro : tRegistro;
	Archivo : file of tRegistro;

begin
	assign(Archivo, 'ArchivoDeTemperaturas.dat');
	reset(archivo);
	
	while not eof(Archivo) do
	begin
	read(Archivo,Registro);
	write(Registro.Annio);
	write('/');
	write(Registro.Mes);
	write('/');
	write(Registro.Dia);
	write('||');	
	write(Registro.Temperatura);
	writeln(' ');
	end;

	close(Archivo);
	readln(); // Para que no se cierre al ejecutar
end.
