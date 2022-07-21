program main;
uses crt;
type 
	tRegistro = record
		Annio:integer;
		Mes: 1..12;
		Dia: 1..31;
		Temperatura: -30..120
	end;

var 
	auxiliarReal : Real;
	cantidadAsteriscos, cantidadEspacios, i : integer;
	Registro : tRegistro;
	Archivo : file of tRegistro;

const 
	Espacio = 11;
	EspacioRoja = 40;

begin
	assign(Archivo, 'ArchivoDeTemperaturas.dat');
	reset(archivo);
	writeln('   -30        0         30        60       90        120');

// aca arrancariamos a tratar el archivo
	while not eof(Archivo) do
	begin
		read(Archivo,Registro);

		if (Registro.Temperatura < 0) then
		begin
			write(Registro.Temperatura); // Mostramos el valor
			auxiliarReal := Registro.Temperatura / 3; // Dividimos por 3
			auxiliarReal := auxiliarReal * (-1); // Pasamos a positivo
			cantidadAsteriscos := round(auxiliarReal); // Pasamos a entero
			cantidadEspacios := Espacio - cantidadAsteriscos; // Calculamos la cantidad de espacios necesarios
			if (Registro.Temperatura > -10) then write(' ');
			for i := 1 to cantidadEspacios do write(' ');
			for i := 1 to cantidadAsteriscos do write('*');
			write('|');
		end;
		if (Registro.Temperatura >0) then 
		begin
			write(Registro.Temperatura);
			auxiliarReal := Registro.Temperatura /3;
			cantidadAsteriscos := round	(auxiliarReal);
			if (Registro.Temperatura < 10) then write(' '); // Para alinear correctamente la gráfica
			if (Registro.Temperatura < 100) then write (' '); // Para alinear correctamente la gráfica
			for i := 1 to Espacio do write(' ');
			write('|');
			for i := 1 to cantidadAsteriscos do write('*');
			
		end;
		writeln('');
	end;
	readln(); // Esto es para evitar que se cierre al ejecutar

end.