//MENU

	Funcion opc <- menu
		
		Escribir " "
		Escribir "1.  Ingrese el estudiante"
		Escribir "2.  Ingrese la nota"
		Escribir "3.  ingrese las inansitencias de cada estiduante"
		Escribir "4.  Lista de estidiantes"
		Escribir "5.  nota final"
		Escribir "6.  Continuar"
		Escribir "7.  salir"
		Escribir " "
		Escribir " "
		Leer opc
		
FinFuncion




//Crear estudiante
Funcion Crear_estudiante(datos, e)
	e = 1
	si e >= 10 Entonces
		Escribir "ya ahi 10 estudiantes reguistrados"
	SiNo
		Escribir "Codigo de estudiante"
		leer datos(e,1)                           
		Escribir "Nombre de estudiante"
		leer datos(e,2)
		Escribir " Codigo             Nombre             "
		Escribir datos(e, 1) "------------------" datos(e, 2) 
		Escribir "ESTUDIANTE EXITOSAMENTE"	
	FinSi		
	
FinFuncion



// Notas de parciales


Funcion Notas(parciales, calificacion, nota total)
	
	parciales = 0
	
	c = 1
	
	Escribir "ingrece la primera nota"
	leer nota1
	
	Escribir "ingrece la segunda nota"
	leer nota2
	
	Escribir "ingrece la tercera nota"
	leer nota3
	
	Mientras calificacion <> 1 Hacer
		
		Si parciales[10] <> 0 Entonces
			pacriales = 0
		FinSi
		si parciales[c] = 0 Entonces
		
			parciales = 0
			
		FinSi
		
	FinMientras
	
	c = c + 1
	
FinFuncion

//Inacistencias

Funcion inancitencias(faltas)
	
	faltas = 1
	f = 1
	
	Escribir "ingrece la cantidad de faltas que tuvo el estudiante"
	leer nota
	Mientras faltas <> 1
		
	si faltas[10] <>0 Entonces
		
		faltas = 0
		
	FinSi
	si faltas[f] = 0 Entonces
		
		faltas = 0
		
	FinSi
FinMientras
FinFuncion

// lista de estudiantes

Funcion estu(datos,e)                
	
	e = e - 2
	si i = 0 Entonces                  
		Escribir "no hay productos registrados"
	SiNo
		Escribir " Codigo             Nombre   "
		Para j = 1 Hasta i Hacer		
			Escribir datos(e, 1) "------------------" datos(e, 2) 
		FinPara		
	FinSi
	
FinFuncion

//nota final

Funcion final(parciales, calificacion, nota, faltas)
	
		si faltas >= 15 
	
FinFuncion

Algoritmo Examen
	
	Dimensionar datos(10,2)
	Dimensionar parciales(10)
	Dimensionar faltas(10)
	e = 1
	
	opc = menu
	
	Repetir
		
		Segun opc hacer
			
			1: 
				Escribir "Ingrese el estudiante"
				Crear_estudiante(datos, j)
				
				
			2:
				Escribir "Ingrese la nota"
				Notas(parciales, inasistencias, calificacion, nota)
				
		
			3: 
				Escribir "ingrese las inansitencias de cada estiduante"
				
				inancitencias(faltas)
				
			4: 
				Escribir "Lista de estidiantes"
				estu(datos,e)
		
			5: 
				Escribir "nota final"
		
			6: 
				Escribir "Continuar"
		
			7: 
				Escribir "salir"
		
	FinSegun

	Hasta Que opc = 6
 
	
FinAlgoritmo
