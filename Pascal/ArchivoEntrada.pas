Program ArchivoEntrada;
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
	opcion: Char;

begin
	assign(Archivo, 'ArchivoDeTemperaturas.dat');
	rewrite(Archivo);
	Registro.Annio := 2019;
	Registro.Mes := 1;
	Registro.Dia := 15;
	Registro.Temperatura := 115;
	write(Archivo,Registro);

	Registro.Annio := 2019;
	Registro.Mes := 3;
	Registro.Dia := 9;
	Registro.Temperatura := 100;
	write(Archivo,Registro);

	Registro.Annio := 2019;
	Registro.Mes := 6;
	Registro.Dia := 5;
	Registro.Temperatura := -15;
	write(Archivo,Registro);

			Registro.Annio := 2019;
			Registro.Mes := 7;
			Registro.Dia := 14;
	Registro.Temperatura := -29;
	write(Archivo,Registro);

	Registro.Annio := 2019;
	Registro.Mes := 9;
	Registro.Dia := 12;
	Registro.Temperatura := 45;
	write(Archivo,Registro);

	Registro.Annio := 2019;
	Registro.Mes := 12;
	Registro.Dia := 6;
	Registro.Temperatura := 119;
	write(Archivo,Registro);

			Registro.Annio := 2020;
			Registro.Mes := 1;
			Registro.Dia := 6;
	Registro.Temperatura := 100;
	write(Archivo,Registro);

	Registro.Annio := 2020;
			Registro.Mes := 2;
			Registro.Dia := 7;
	Registro.Temperatura := 95;
	write(Archivo,Registro);


	Registro.Annio := 2020;
			Registro.Mes := 6;
			Registro.Dia := 14;
	Registro.Temperatura := -20;
	write(Archivo,Registro);

	Registro.Annio := 2020;
			Registro.Mes := 7;
			Registro.Dia := 12;
	Registro.Temperatura := 0;
	write(Archivo,Registro);

	Registro.Annio := 2020;
			Registro.Mes := 8;
			Registro.Dia := 23;
	Registro.Temperatura := 35;
	write(Archivo,Registro);

	Registro.Annio := 2020;
			Registro.Mes := 11;
			Registro.Dia := 14;
	Registro.Temperatura := 55;
	write(Archivo,Registro);

	Registro.Annio := 2020;
			Registro.Mes := 12;
			Registro.Dia := 25; // NAVIDAD
	Registro.Temperatura := 45;
	write(Archivo,Registro);

	Registro.Annio := 2021;
			Registro.Mes := 1;
			Registro.Dia := 1;
	Registro.Temperatura := 69;
	write(Archivo,Registro);

		Registro.Annio := 2021;
			Registro.Mes := 3;
			Registro.Dia := 3;
	Registro.Temperatura := 49;
	write(Archivo,Registro);

		Registro.Annio := 2021;
			Registro.Mes := 5;
			Registro.Dia := 14;
	Registro.Temperatura := 15;
	write(Archivo,Registro);

		Registro.Annio := 2021;
			Registro.Mes := 8;
			Registro.Dia := 7;
	Registro.Temperatura := -2;
	write(Archivo,Registro);

		Registro.Annio := 2021;
			Registro.Mes := 8;
			Registro.Dia := 10;
	Registro.Temperatura := 58;
	write(Archivo,Registro);

		Registro.Annio := 2021;
			Registro.Mes := 8;
			Registro.Dia := 14;
	Registro.Temperatura := 45;
	write(Archivo,Registro);


		Registro.Annio := 2021;
			Registro.Mes := 8;
			Registro.Dia := 25;
	Registro.Temperatura := 100;
	write(Archivo,Registro);

		Registro.Annio := 2021;
			Registro.Mes := 8;
			Registro.Dia := 31;
	Registro.Temperatura := 120;
	write(Archivo,Registro);

		Registro.Annio := 2021;
			Registro.Mes := 10;
			Registro.Dia := 25;
	Registro.Temperatura := 75;
	write(Archivo,Registro);

		Registro.Annio := 2021;
			Registro.Mes := 11;
			Registro.Dia := 14;
	Registro.Temperatura := 32;
	write(Archivo,Registro);

		Registro.Annio := 2021;
			Registro.Mes := 11;
			Registro.Dia := 22;
	Registro.Temperatura := 99;
	write(Archivo,Registro);


		Registro.Annio := 2022;
			Registro.Mes := 1;
			Registro.Dia := 7;
	Registro.Temperatura := 100;
	write(Archivo,Registro);


			Registro.Annio := 2022;
			Registro.Mes := 5;
			Registro.Dia := 15;
	Registro.Temperatura := -10;
	write(Archivo,Registro);

			Registro.Annio := 2022;
			Registro.Mes := 7;
			Registro.Dia := 20;
	Registro.Temperatura := -29;
	write(Archivo,Registro);

 
Writeln('Si desea agregar mas datos presione "s"');
ReadLn(opcion);

while (opcion ='s') do
begin
    Writeln('Ingrese Anio'); Readln(Registro.Annio);

    Writeln('Ingrese Mes');  Readln(Registro.Mes);

    WriteLn('Ingrese Dia'); Readln(Registro.Dia);

    WriteLn('Ingrese Temperatura'); ReadLn(Registro.Temperatura);
      
    Write(Archivo, Registro); 

    WriteLn('Desea continuar?'); ReadLn(opcion);

end;

Close(Archivo);
end.