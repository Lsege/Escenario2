program main;
uses crt;

var 
	Temperatura, auxiliarReal : Real;
	cantidadAsteriscos, cantidadEspacios, auxiliarEntero,  i : integer;

const 
	Espacio = 10;

begin
	writeln('Ingrese el valor de la temperatura');
	readln(Temperatura);
	writeln('');
	writeln('   -30        0        30        60       90       120');

// aca arrancariamos a tratar el archivo
	if (Temperatura < 0) then
	begin
		write(Temperatura :4:0); // Mostramos el valor
		auxiliarReal := Temperatura / 3; // Dividimos por 3
		auxiliarReal := auxiliarReal * (-1); // Pasamos a positivo
		cantidadAsteriscos := round(auxiliarReal); // Pasamos a entero
		cantidadEspacios := Espacio - cantidadAsteriscos; // Calculamos la cantidad de espacios necesarios
		for i := 1 to cantidadEspacios do write(' ');
		for i := 1 to cantidadAsteriscos do write('*');
		write('|');
	end;
	if (Temperatura >0) then 
	begin
		write(Temperatura :4:0);
		auxiliarReal := Temperatura /3;
		cantidadAsteriscos := round	(auxiliarReal);
		for i := 1 to Espacio do write(' ');
		write('|');
		for i := 1 to cantidadAsteriscos do write('*');

	end;
	readln(); // Esto es para evitar que se cierre al ejecutar

end.