program ecenario2;
uses crt;
    type
    tRegistro = record
		  Annio:integer;
		  Mes: 1..12;
		  Dia: 1..31;
		  Temperatura: -30..120;
	  end;
  archivo = file of tRegistro;
  var
    reg: tRegistro;
    archS: archivo;
    archE: archivo;
    cantidadasteriscos,  i: Integer;
    cantidadtemp, acutemperpositiva, acutempernegativa, tempernegativa, espacioenblanco: Integer;
    promenor, promayor: real;
  const
    espacio=10;
 procedure initializationS(var arch_local:archivo);
     begin

		assign(arch_local, 'datos.dat');

		//Control de acciones sobre el archivo
		{$I-}				
			rewrite(arch_local);				
		{$I+}

		//Verifico estado de la accion ejecutada
	  	if IOResult <> 0 then	  			  			
		      	writeln('No se pudo abrir el archivo... ERROR');	  	
		end;
 procedure initializationE(var arch_local:archivo);
     begin

		assign(arch_local, 'Temperaturas.dat');

		//Control de acciones sobre el archivo
		{$I-}				
			reset(arch_local);				
		{$I+}

		//Verifico estado de la accion ejecutada
	  	if IOResult <> 0 then	  			  			
		      	writeln('No se pudo abrir el archivo... ERROR');	  	
 end;
    

begin
  initializationS(archS);
  initializationE(archE);
  cantidadtemp:=0;
  tempernegativa:=0;
  acutempernegativa:=0;
  acutemperpositiva:=0;
 
  writeln('   -30       0        30        60        90       120');
  while not eof(archE) do
    begin
        read(archE,reg);
        write(reg.temperatura);
        cantidadtemp:=cantidadtemp+1;
        cantidadasteriscos:= Round(reg.temperatura / 3);
        if (cantidadasteriscos) >= 0 then
          begin
               acutemperpositiva:=acutemperpositiva+reg.temperatura;
               if reg.Temperatura>100 then
                begin
                  for i:=1 to espacio do 
                  begin
                      write(' ');
                  end;
                  write('|');
                  for i:=1 to cantidadasteriscos do
                  begin
                      write('*');
                  end; 
                end
                else 
                 begin
                    if reg.Temperatura< 10 then
                    begin
                      for i:=1 to espacio+2 do 
                      begin
                        write(' ');
                      end;
                      write('|');
                      for i:=1 to cantidadasteriscos do
                      begin
                       write('*');
                      end; 
                   end
                   else 
                    begin
                      for i:=1 to espacio+1 do 
                      begin
                        write(' ');
                      end;
                      write('|');
                      for i:=1 to cantidadasteriscos do
                      begin
                       write('*');
                      end; 
                    end;
                      
                  end;
          end
                
            
        else
          begin
              tempernegativa:=tempernegativa+1;
              acutempernegativa:=acutempernegativa+reg.temperatura;
               cantidadasteriscos:=cantidadasteriscos*-1;
               espacioenblanco:=espacio-cantidadasteriscos;
               if reg.Temperatura>-10 then
               begin
                 for i:=1 to espacioenblanco+1 do 
                  begin
                      write(' ');
                  end;
                  for i:=1 to cantidadasteriscos do
                  begin
                      write('*')
                  end;
                  Write('|')
                end
                  
                else
                 begin
                 for i:=1 to espacioenblanco do 
                  begin
                      write(' ');
                  end;
                  for i:=1 to cantidadasteriscos do
                  begin
                      write('*')
                  end;
                  Write('|')
                   
                 end;
           end;
           WriteLn;
          
    end;
        promenor:=((100*tempernegativa)/cantidadtemp);
        WriteLn('El porcentaje de temperatura inferior a 0 es ', promenor:3:2, '%') ;
        promayor:=(acutemperpositiva+acutemperpositiva)/cantidadtemp;
        if (promayor > 50 )then
        begin
          WriteLn('alerta roja');
        end;
        if (reg.mes=8 )then
        begin
          Write(archs, reg);
        end;
    Close(archS);
    Close(archE);
          
end.