program TestSalida;
uses crt;
type 
	tRegistro = record
		Annio:integer;
		Mes: 1..12;
		Dia: 1..31;
		Temperatura: -30..120
	end;
var	
	ArchivoSal : file of tRegistro;
	Registro : tRegistro;

begin
	assign(ArchivoSal, 'ArchivoDeSalida.dat');
	reset(ArchivoSal);

	while not eof(ArchivoSal) do
	begin
		read(ArchivoSal,Registro);
		write(Registro.Annio);
		write('/');
		write(Registro.Mes);
		write('/');
		write(Registro.Dia);
		write('||');	
		write(Registro.Temperatura);
		writeln(' ');
	end;

	close(ArchivoSal);
	readln(); // Para que no se cierre al ejecutar
end.

