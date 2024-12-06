#1. Escribe un programa que lea 10 números y determine si cada uno es positivo, negativo o cero utilizando la estructura if.
numeros <- c()

for (i in 1:10) {
  cat("Ingresa el número", i, ": ")
  numero <- scan(n = 1, quiet = TRUE) 
  numeros <- c(numeros, numero)
}
for (num in numeros) {
  if (num > 0) {
    cat(num, "es positivo\n")
  } else if (num < 0) {
    cat(num, "es negativo\n")
  } else {
    cat(num, "es cero\n")
  }
}

#2. Genera una lista de 100 números enteros aleatorios.Usa un bucle for para recorrer la lista y una estructura of para contar cuántos so pares y cuántos son impares.
numeros <- sample(1:100, 100, replace = TRUE)  

pares <- 0
impares <- 0
for (num in numeros) {
  if (num %% 2 == 0) {
    pares <- pares + 1
  } else {
    impares <- impares + 1
  }
}

cat("Cantidad de números pares:", pares, "\n")
cat("Cantidad de números impares:", impares, "\n")

#3. Escribe un programa que pida al usuario un número Ne imprima la suma del los números del 1 al N usando un bucle for
cat("Ingresa un número N: ")
N <- scan(n = 1, quiet = TRUE)

suma <- 0

for (i in 1:N) {
  suma <- suma + i
}
cat("La suma de los primeros", N, "números es:", suma, "\n")

#4. Utiliza un bucle while para generar los primeros 20 números dela secuencia de Fibonaci y mostrar el resultado en la pantalla.
n1 <- 0
n2 <- 1
contador <- 2

cat("Secuencia de Fibonacci:\n")
cat(n1, n2)

while (contador < 20) {
  siguiente <- n1 + n2
  cat(siguiente, " ")
  n1 <- n2
  n2 <- siguiente
  contador <- contador + 1
}
cat("\n")

#5. Escribe un programa que calcule el factorial de un número n introducido por el usuario usando un bucle for.
cat("Ingresa un número para calcular su factorial: ")
n <- scan(n = 1, quiet = TRUE)
factorial <- 1

for (i in 1:n) {
  factorial <- factorial * i
}

cat("El factorial de", n, "es:", factorial, "\n")

#6. Implementa un juego donde el programa elige un número entre 1 y 100. El usuario debe adivinar el número, y le programa debe dar pistas de si el numero ingresaso es "mayor" o "menor" que el numeor secreto utilizando un bucle while y la estructura if.
numero_secreto <- sample(1:100, 1)
cat("Adivina el número entre 1 y 100: ")
adivinanza <- scan(n = 1, quiet = TRUE)

while (adivinanza != numero_secreto) {
  if (adivinanza > numero_secreto) {
    cat("Es menor. Intenta de nuevo: ")
  } else {
    cat("Es mayor. Intenta de nuevo: ")
  }
  adivinanza <- scan(n = 1, quiet = TRUE)
}

cat("¡Felicidades! Adivinaste el número:", numero_secreto, "\n")

#7. Crea un sistema se autenticación que pida una contraseña y permita tres intentos antes de bloquear al usuario. Utiliza un bucle While que verifique si la contraseña ingresada es correcta o no.
contraseña_correcta <- "12345"
intentos <- 3

while (intentos > 0) {
  cat("Ingresa la contraseña: ")
  contraseña <- readline()
  
  if (contraseña == contraseña_correcta) {
    cat("¡Contraseña correcta! Acceso concedido.\n")
    break
  } else {
    intentos <- intentos - 1
    if (intentos > 0) {
      cat("Contraseña incorrecta. Te quedan", intentos, "intentos.\n")
    } else {
      cat("Has agotado los intentos. Usuario bloqueado.\n")
    }
  }
}

#8. Pide al usuario que ingrese un numero entero y utiliza un bucle while para sumar los dígitos del número. Por ejemplo si el número es 1234, la suma sería 1+2+3+4 =10
cat("Ingresa un número entero: ")
numero <- as.numeric(readline())
suma_digitos <- 0

while (numero > 0) {
  digito <- numero - (numero %/% 10) * 10 
  suma_digitos <- suma_digitos + digito
  numero <- numero %/% 10
}

cat("La suma de los dígitos es:", suma_digitos, "\n")

#9. Utiliza un bucle for para imprimir un patrón en pantalla, como un triángulo o una pirámide de asteriscos.
cat("Ingresa la altura del triángulo: ")
altura <- as.numeric(readline())
i <- 1

while (i <= altura) {
  j <- 1
  while (j <= i) {
    cat("*")
    j <- j + 1
  }
  cat("\n")
  i <- i + 1
}

#10. Escribe un programa que imprima todos los números primos entre 1 y 100.Usa un bucle for par Iterar por los númeos y una estructura if para verificar si cada número es primo
num <- 2
while (num <= 100) {
  es_primo <- TRUE
  i <- 2
  
  while (i < num) {
    if (num - (num %/% i) * i == 0) { 
      es_primo <- FALSE
      break
    }
    i <- i + 1
  }
  
  if (es_primo) {
    cat(num, "\n")
  }
  
  num <- num + 1
}