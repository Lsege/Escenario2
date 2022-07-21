unit FuncionesUtiles;
interface
	function PorcentajeFrio(total : integer; inferiores: real): real;
	procedure PromedioTemp(total: integer; acumulador:real );

implementation
	function PorcentajeFrio(total : integer; inferiores: real): real;	
	begin
		PorcentajeFrio := (inferiores * 100)/total;
	end;

	procedure PromedioTemp(total: integer; acumulador:real );
	var promedio : real;
	begin
		promedio := acumulador/total;
		if promedio > 50.0 then write('El promedio es ', promedio:4:2, '|ALERTA ROJA|');
		if promedio <= 50.0 then write('El promedio es ', promedio:4:2);
	end;
end.