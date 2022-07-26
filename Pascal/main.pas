program main;
uses FuncionesUtiles,crt;
type 
	tRegistro = record
		Annio:integer;
		Mes: 1..12;
		Dia: 1..31;
		Temperatura: -30..120
	end;

var 
	auxiliarReal, inferiores, acumulador, porcentaje : Real;
	cantidadAsteriscos, cantidadEspacios, i, contador : integer;
	Registro : tRegistro;
	Archivo : file of tRegistro;
	ArchivoSal : file of tRegistro;
const 
	Espacio = 11;

begin
	assign(ArchivoSal, 'ArchivoDeSalida.dat');
	rewrite(ArchivoSal);

	assign(Archivo, 'ArchivoDeTemperaturas.dat');
	reset(Archivo);
	writeln('   -30        0         30        60       90        120');
	acumulador := 0; contador := 0; inferiores := 0;
// aca arrancariamos a tratar el archivo
	while not eof(Archivo) do
	begin
		read(Archivo,Registro);
		acumulador := acumulador + Registro.Temperatura; // acumula todas las temperaturas para el promedio.
		contador := contador +1; // Cuenta para el promedio y para el porcentaje inferior a 0.

		if (Registro.Temperatura < 0) then
		begin
			inferiores := inferiores +1; // Cuenta los inferiores a 0 para calcular el porcentaje.
			write(Registro.Temperatura); // Mostramos el valor.
			auxiliarReal := Registro.Temperatura / 3; // Dividimos por 3.
			auxiliarReal := auxiliarReal * (-1); // Pasamos a positivo.
			cantidadAsteriscos := round(auxiliarReal); // Pasamos a entero.
			cantidadEspacios := Espacio - cantidadAsteriscos; // Calculamos la cantidad de espacios necesarios.
			if (Registro.Temperatura > -10) then write(' ');
			for i := 1 to cantidadEspacios do write(' ');
			for i := 1 to cantidadAsteriscos do write('*');
			write('|');
		end;
		if (Registro.Temperatura >=0) then 
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

		if (Registro.Annio = 2021) then
		begin
			if (Registro.Mes = 8) then
			begin
				write(ArchivoSal,Registro);
			end;
		end;

	end;
	porcentaje := PorcentajeFrio(contador, inferiores);
	writeln('El porcentaje de temperaturas inferiores a 0 grados es: ',porcentaje:3:2);
	PromedioTemp(contador, acumulador);

	close(Archivo); close(ArchivoSal);
	readln(); // Esto es para evitar que se cierre al ejecutar


end.