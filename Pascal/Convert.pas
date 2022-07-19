unit Convert;
interface
	function toInt(N : real): integer;
implementation

	function toInt(N : real): integer;
	var aux : integer
	begin
		case(N) of
		-30 : aux := 30;
		-29 : aux := 29;
		-28 : aux := 28;
		-27 : aux := 27;
		-26 : aux := 26;
		-25 : aux := 25;
		-24 : aux := 24;
		-23 : aux := 23;
		-22 : aux := 22;
		-21 : aux := 21;
		-20 : aux := 20;
		-19 : aux := 19;
		-18 : aux := 18;
		-17 : aux := 17;
		-16 : aux := 16;
		-15 : aux := 15;
		-14 : aux := 14;
		-13 : aux := 13;
		-12 : aux := 12;
		-11 : aux := 11;
		-10 : aux := 10;
		-9 : aux := 9;
		-8 : aux := 8;
		-7 : aux := 7;
		-6 : aux := 6;
		-5 : aux := 5;
		-4 : aux := 4;
		-3 : aux := 3;
		-2 : aux := 2;
		-1 : aux := 1;
		toInt := aux;
		end;
	end.