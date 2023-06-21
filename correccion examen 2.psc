

funcion triangulo_estrellas
	definir n,i,j Como Entero
	n = 5
	para i <- 1 hasta n
		para j <- 1 hasta i
			escribir "*" Sin Saltar
		FinPara
		escribir ""
	FinPara
FinFuncion





funcion expresion
	definir a,b,x Como Entero
	a = 3; b = 6
	x = a+a*(a+b)-b*a+(trunc(b/3)-2+a*a mod 2)
	escribir x
finfuncion

funcion prueba_de_escritorio
	definir n,m,r Como Entero
	n = 20; m = 25; r = 1
	mientras (r <> 0) hacer
		r = m mod n
		si (r = 0) Entonces
			escribir "m=",m,"n=",n
		sino 
			n = m
			m = r
		FinSi
		
	FinMientras
FinFuncion





funcion CalculoPulsaciones
    Escribir "Ingrese su nombre:"
    Leer nombre
	
    Escribir "Ingrese su edad:"
    Leer edad
	
    si edad >= 1 y edad <= 9 entonces
        base <- 10
    sino
		si edad < 18 entonces
			base <- 10 + (10 * 0.1)
		sino
			base <- 10 + (10 * 0.15)
		finSi
	finsi
	
	pulsaciones <- (200 - edad) / base
	
	Escribir "Hola, ", nombre, ". Seg�n su edad, debe tener ", pulsaciones, " pulsaciones por segundo de ejercicio."
FinFuncion







funcion OperadorMasRepetido

    operadores <- ["*", "+", "-", "/"]
    contadorOperadores <- [0, 0, 0, 0]
    expresion <- ""
    caracter <- ""
	
    mientras caracter <> "F" hacer
        Escribir "Ingrese un car�cter de la expresi�n (F para finalizar):"
        Leer caracter
		
        expresion <- expresion + caracter
		
        para i <- 1 hasta Longitud(operadores) hacer
            si caracter = operadores[i] entonces
                contadorOperadores[i] <- contadorOperadores[i] + 1
            finSi
        finPara
    finMientras
	
    mayorRepeticion <- 0
    indiceMayorRepeticion <- -1
	
    para i <- 1 hasta Longitud(contadorOperadores) hacer
        si contadorOperadores[i] > mayorRepeticion entonces
            mayorRepeticion <- contadorOperadores[i]
            indiceMayorRepeticion <- i
        finSi
    finPara
	
    si indiceMayorRepeticion <> -1 entonces
        Escribir "El operador matem�tico con mayor cantidad de repeticiones es: ", operadores[indiceMayorRepeticion]
    sino
        Escribir "No se ingresaron operadores matem�ticos."
    finSi
Finfuncion







funcion multiplos_3_y_4
	Definir numerosPositivosMultiplos, numerosNegativosNoMultiplos Como Entero
	numerosPositivosMultiplos <- 0
	numerosNegativosNoMultiplos <- 0
	
	Escribir "Ingrese la cantidad de n�meros a evaluar:"
	Leer cantidadNumeros
	
	Para i <- 1 Hasta cantidadNumeros Hacer
		Escribir "Ingrese el n�mero ", i, ":"
		Leer numero
		
		Si numero > 0 Entonces
			Si (numero MOD 3 = 0) Y (numero MOD 4 = 0) Entonces
				Escribir "El n�mero ", numero, " es positivo y m�ltiplo de 3 y 4."
				numerosPositivosMultiplos <- numerosPositivosMultiplos + 1
			Fin Si
		Sino
			Si (numero MOD 3 <> 0) Y (numero MOD 4 <> 0) Entonces
				Escribir "El n�mero ", numero, " es negativo y no es m�ltiplo de 3 ni 4."
				numerosNegativosNoMultiplos <- numerosNegativosNoMultiplos + 1
			Fin Si
		Fin Si
		
	Fin Para
	
	Escribir "La cantidad de n�meros positivos que son m�ltiplos de 3 y 4 es: ", numerosPositivosMultiplos
	Escribir "La cantidad de n�meros negativos que no son m�ltiplos de 3 ni 4 es: ", numerosNegativosNoMultiplos
Finfuncion




Algoritmo correciones
	triangulo_estrellas()
	//expresion()
	//prueba_de_escritorio()
	//CalculoPulsaciones()
	//OperadorMasRepetido()
	//multiplos_3_y_4()
	
FinAlgoritmo








