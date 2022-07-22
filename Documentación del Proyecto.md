# Pascal

## Modelo de registro elegido

| AÑO | MES | DIA | TEMPERATURA |
| --- | --- | --- | --- |
|  |  |  |  |
|  |  |  |  |

### Cabecera de gráfica:

No tiene muchas complicaciones, cada 30 grados existen entre 8 y 9 espacios para exista una distancia de 10 caracteres entre sí al sumar los dígitos de la temperatura, además de 3 espacios al principio asi no se superponen con los valores de la temperatura al principio.

```pascal
writeln('   -30        0        30        60       90       120');
```

# Método de resolución del problema

## Resolución Grafica

En primer lugar, se decidió abordar la construcción gráfica ya que era la que representaba mayores desafíos. 

Una de las posibles soluciones, que fue rápidamente descartada, fue la utilización de un condicional múltiple que desarrolle un mensaje personalizado por cada uno de las temperaturas disponibles según el planteo del ejercicio. El principal problema de esta opción es su nula modularización, ya que si queremos aumentar o disminuir el rango de temperatura deberiamos tener un conocimiento especializado en el código.

Ejemplo de la posible solución en Pascal (incompleto):

```pascal
unit Graficas
interface
	procedure mostrar(temperatura: Real);
implementation
	procedure mostrar(temperatura: Real);
	begin
			  writeln('   -30        0        30        60       90       120')
		case(temperatura) of
		-20 : writeln('-20    *******|');
		-20 : writeln('-20    *******|');
		0 :   writeln('  0           |');
		1 :   writeln('  0           |');
		2 :   writeln('  0           |');
		3 :   writeln('  0           |');
		4 :   writeln('  0           |');
		5 :   writeln('  0           |');
		6 :   writeln('  0           |');
		7 :   writeln('  0           |');
		8 :   writeln('  0           |');
		9 :   writeln('  0           |');

		10 :  writeln('  0           |');
		11 :  writeln('  0           |');
		12 :  writeln('  0           |');
		13 :  writeln('  0           |');
		14 :  writeln('  0           |');
		15 :  writeln('  0           |');
		16 :  writeln('  0           |');
		17 :  writeln('  0           |');
		18 :  writeln('  0           |');
		19 :  writeln('  0           |');

		20 :  writeln('  0           |');
		20 :  writeln('  0           |');
		20 :  writeln('  0           |');
		20 :  writeln('  0           |');
		20 :  writeln('  0           |');
		20 :  writeln('  0           |');
		20 :  writeln('  0           |');
		20 :  writeln('  0           |');
		20 :  writeln('  0           |');
		20 :  writeln('  0           |');

		30 :  writeln('  0           |');
		30 :  writeln('  0           |');
		30 :  writeln('  0           |');
		30 :  writeln('  0           |');
		30 :  writeln('  0           |');
		30 :  writeln('  0           |');
		30 :  writeln('  0           |');
		30 :  writeln('  0           |');
		30 :  writeln('  0           |');
		30 :  writeln('  0           |');

		40 :  writeln('  0           |');
		40 :  writeln('  0           |');
		40 :  writeln('  0           |');
		40 :  writeln('  0           |');
		40 :  writeln('  0           |');
		40 :  writeln('  0           |');
		40 :  writeln('  0           |');
		40 :  writeln('  0           |');
		40 :  writeln('  0           |');
		40 :  writeln('  0           |');

		50 :  writeln('  0           |');
		50 :  writeln('  0           |');
		50 :  writeln('  0           |');
		50 :  writeln('  0           |');
		50 :  writeln('  0           |');
		50 :  writeln('  0           |');
		50 :  writeln('  0           |');
		50 :  writeln('  0           |');
		50 :  writeln('  0           |');
		50 :  writeln('  0           |');

		60 :  writeln('  0           |');
		60 :  writeln('  0           |');
		60 :  writeln('  0           |');
		60 :  writeln('  0           |');
		60 :  writeln('  0           |');
		60 :  writeln('  0           |');
		60 :  writeln('  0           |');
		60 :  writeln('  0           |');
		60 :  writeln('  0           |');
		60 :  writeln('  0           |');

		70 :  writeln('  0           |');
		70 :  writeln('  0           |');
		70 :  writeln('  0           |');
		70 :  writeln('  0           |');
		70 :  writeln('  0           |');
		70 :  writeln('  0           |');
		70 :  writeln('  0           |');
		70 :  writeln('  0           |');
		70 :  writeln('  0           |');
		70 :  writeln('  0           |');

		80 :  writeln('  0           |');
		80 :  writeln('  0           |');
		80 :  writeln('  0           |');
		80 :  writeln('  0           |');
		80 :  writeln('  0           |');
		80 :  writeln('  0           |');
		80 :  writeln('  0           |');
		80 :  writeln('  0           |');
		80 :  writeln('  0           |');
		80 :  writeln('  0           |');

		90 :  writeln('  0           |');
		90 :  writeln('  0           |');
		90 :  writeln('  0           |');
		90 :  writeln('  0           |');
		90 :  writeln('  0           |');
		90 :  writeln('  0           |');
		90 :  writeln('  0           |');
		90 :  writeln('  0           |');
		90 :  writeln('  0           |');
		90 :  writeln('  0           |');
		90 :  writeln('  0           |');
		
	end.

end.
```

Por esa razón se decidió por una solución mas práctica y facil de modificar, que consiste en dividir el problema en dos, si la temperatura es negativa o si la temperatura es positiva.

### Temperatura negativa

En primer lugar realizaremos el procesamiento de temperaturas negativas, como se especifica en el enunciado, debemos

- Mostrar su valor a la izquierda
- Dividir su valor en tres así no tenemos inconvenientes de mostrar una gráfica a escala en la pantalla.
- Pasarlo a positivo, ya que no podemos mostrar una cantidad negativa de asteriscos
- Para alinear la temperatura según lo mostrado en la consigna, disponemos de 10 caracteres de separación entre la temperatura 30 y los 0 grados. Por esa razón, la cantidad de espacios necesarios es un complemento a la cantidad de asteriscos para llegar a 10, calculamos su valor con una simple resta.
- En primer lugar se imprime la cantidad de espacios en blanco, ya que estan van primeros y luego la cantidad de asteriscos utilizando una estructura repetitiva definida (FOR o PARA).

```pascal
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
```

### Temperatura Positiva

En este caso, lo primero que van a notar es que en vez de utilizar una estructura alternativa, utilizamos una estructura simple nuevamente, esto se debe a problemas con el uso del lenguaje y la imposibilidad de escribir varias sentencias despues del “else”.

La estructura es bastante similar a la temperatura negativa, con la diferencia de que no necesitamos pasar el número a positivo ni calcular la cantidad de espacios (que siempre es 10), por lo que solamente:

- Mostramos por pantalla la temperatura
- Dividimos esta por 3 para obtener la cantidad de asteriscos
- Redondeamos el valor, en caso de que no sea múltiplo y la función lo convierte a Entero.
- Mostramos los espacios para alinear correctamente la gráfica.
- Mostramos la cantidad de asteriscos correspondientes según el valor calculado.

```pascal
if (Temperatura >=0) then 
	begin
		write(Temperatura :4:0); // Mostramos el valor
		auxiliarReal := Temperatura /3; // Dividimos por 3
		cantidadAsteriscos := round	(auxiliarReal); // Pasamos a entero
		for i := 0 to Espacio do write(' '); // Mostramos los espacios
		write('|');
		for i := 1 to cantidadAsteriscos do write('*');

	end;
```

---

# Archivo de entrada

En la consigna nos indican que recibiremos el archivo, por lo que en la acción principal no forma parte la generación del mismo, de igual manera dentro de la carpeta con el código fuente se encuentra un archivo con el nombre de ‘creacion.pas’ donde está la carga de datos. Esta acción generará un nuevo archivo para acceder desde memoria externa como se vió en la materia.

Declaramos el tipo de registro según lo informado, además de asegurarnos congruencia gruesa en sus valores. 

```pascal
type 
	RegistroTemp = record
		Annio:integer;
		Mes: 1..12;
		Dia: 1..31;
		Temperatura: -30..120;
	end;
var
	ListaTemperaturas : RegistroTemp;
```

Se decidió por cargar una cantidad de 25 registros, de esa manera se pueden probar muchas combinaciones, (además, es la cantidad máxima para que no se pierda información al ejecutar el programa principal. porque después de una determinada cantidad de líneas de impresión la consola prioriza la nueva información)

Ejemplo de carga de un dato al archivo:

```pascal
assign(Archivo, 'ArchivoDeTemperaturas.dat');
rewrite(Archivo);
	Registro.Annio := 2019;
	Registro.Mes := 1;
	Registro.Dia := 15;
	Registro.Temperatura := 115;
	write(Archivo,Registro);
```

Además en un programa auxiliar, se puede ejecutar el recorrido del archivo para comprobar que despliegue los valores correctamente.

```pascal
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
```

---

## Tratamiento del archivo en la acción principal

Se define el tipo de dato registro y en el ambiente se define la variable Registro y el archivo del mismo. Ejecutando las funciones correspondientes, se abre y se lee el archivo. 

El cambio con respecto a la lógica anterior es que ahora no graficaremos solamente una temperatura sino todas las que forman parte del registro, por esa razón toda la lógica debemos ponerla dentro de un bucle “While”. Además de acceder a las variables dentro del registro a través del dot notation.

---

## Porcentajes y Promedios

Dos de los informes adicionales solicitaban el porcentaje de temperaturas bajo cero sobre el total de temperaturas y el promedio de temperaturas con un mensaje si superaba los 50°.

Para realizar estos ítems se utilizaron otras unidades que luego se importaron en el archivo principal, el archivo extra es bastante simple conteniendo una función y un procedimiento:

```pascal
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
```

Luego se añadió un acumulador de todas las temperaturas, un contador a la condición si la temperatura era inferior a 0 y un contador general para ambos puntos.

```pascal
acumulador := acumulador + Registro.Temperatura; // acumula todas las temperaturas para el promedio.
contador := contador +1; // Cuenta para el promedio y para el porcentaje inferior a 0.
inferiores := inferiores +1; // Cuenta los inferiores a 0 para calcular el porcentaje.
```

---

## Archivo de Salida

En primer lugar, generamos un archivo de salida, con el mismo formato.

Asignamos un archivo en memoria externa y lo inicializamos. 

Antes de terminar la iteración del archivo principal, el de entrada, comprobamos si el año es 2021 y el mes es Agosto (8) Si las condiciones son verdaderas, escribe en el archivo de salida el registro.

```pascal
if (Registro.Annio = 2021) then
		begin
			if (Registro.Mes = 8) then
			begin
				write(ArchivoSal,Registro);
			end;
		end;
```

Luego en una acción aparte podemos comprobar que se haya escrito correctamente, al ejecutar el archivo de Salida nos dan los resultados esperados:

```pascal
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
```