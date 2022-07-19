Program test;
uses crt;
	var 
		aux, aux3, i : integer;
	 	N, auxREAL : Real;


	const 
		esp = 10;

begin
	aux := 0;
	N := -21;
	auxREAL := N*(-1);
	aux := round(auxREAL);
	aux := aux div 3;
	writeln('   -30        0        30        60       90       120');
	write(N:4:0);
	if (N<0) then
		aux3 := esp - aux;
		for i := 1 to aux3 do write(' ');
		for i := 1 to aux do write('*');
		write('|');

	readln(); // Para que no se cierre al ejecutar
end.
