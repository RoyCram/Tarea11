#1.Crear el vector vistas:
vistas <- c(8321, 2974, 5792, 4932, 4889, 7433, 6651)
print(vistas)
#2.Crear el vector de nombre de videos:
nombre_de_videos <- c("Video1", "Video2", "Video3", "Video4", "Video5", "Video6", "Video7")
print(nombre_de_videos)
#3.Cuantos videos hay:7:
numero_de_videos <- length(nombre_de_videos)
print(numero_de_videos)
#4.Cuántas vistas tiene el video más visto:8321:
vistas_maximas <- max(vistas)
print(vistas_maximas)
#5.Cuántas vistas tiene el video menos visto:2974:
vistas_minimas <- min(vistas)
print(vistas_minimas)
#6.Cuál es el promedio de vistas que tiene el canal:5856:
promedio_vistas <- mean(vistas)
print(promedio_vistas)
#7.En total cuantas vistas tiene el canal:40992:
total_vistas <- sum(vistas)
print(total_vistas)
#8.Sumar 1000 a cada uno del vector vistas, dividir entre 500, log 
#de estas vistas, contar el número de caracteres del vector nombres:
vistas_modificadas <- vistas + 1000
vistas_divididas <- vistas_modificadas / 500
log_vistas <- log(vistas_divididas)
caracteres_nombres <- nchar(nombres)
print(vistas_modificadas)
print(vistas_divididas) 
print(log_vistas) 
print(caracteres_nombres)
#9.Subimos un nuevo video al canal:
vistas <- c(vistas, 6587)
nombre_de_videos <- c(nombres, "VideoGood")
print(vistas)
print(nombre_de_videos)
#10.Ponerle el nombre a las entradas de un vector:
names(vistas) <- nombre_de_videos
print(vistas)
#11.Ordenar el vector de menor a mayor:
vistas_orden_asc <- sort(vistas)
print(vistas_orden_asc)
#12.Ordenar el vector de mayor a menor:
vistas_orden_desc <- sort(vistas, decreasing = TRUE)
print(vistas_orden_desc)
#13.Que videos tienen mas de 6000 vistas:
videos_6000 <- vistas > 6000 
nombres_videos_6000 <- nombres[videos_6000] 
print(videos_6000)
#14.Cuantos videos hay con mas de 6000 vistas:
cantidad_6000 <- sum(vistas > 6000) 
print(cantidad_6000)
#15.Algun video tiene mas de 8000 vistas:
video_mas_de_8000 <- sum(vistas > 8000) > 0 
print(video_mas_de_8000)
if (video_mas_de_8000) { 
  videos_mas_de_8000 <- nombres[which(vistas > 8000)] 
  print(videos_mas_de_8000) 
} else { 
  print("No hay videos con más de 8000 vistas.") }
#16.Todos los videos tienen mas de 2000 vistas:
videos_mas_de_2000 <- sum(vistas <= 2000) == 0 
print(videos_mas_de_2000)
#17.Algun video tiene mas de 8000 vistas:any:
alguno_mas_de_8000 <- any(vistas > 8000) 
print(alguno_mas_de_8000) 

alguno_mas_8000<-any(vistas>8000)
alguno_mas_8000 <- nombre_videos[vistas > 8000]
print(alguno_mas_8000)
#18.Todos los videos tienen mas de 2000 vistas:all:
todos_mas_de_2000 <- all(vistas > 2000) 
print(todos_mas_de_2000)
if (!todos_mas_de_2000) { 
  videos_menos_de_2000 <- nombres[which(vistas <= 2000)] 
  print(videos_menos_de_2000) 
} else { 
  print("Todos los videos tienen más de 2000 vistas.") }
#19.Que videos tienen menos de 5000 vistas:which:
videos_menos_de_5000 <- which(vistas < 5000) 
nombres_videos_menos_de_5000 <- nombres[videos_menos_de_5000] 
print(nombres_videos_menos_de_5000)
#20.Que videos tienen mas de 5000 vistas:which:
videos_mas_de_5000 <- which(vistas > 5000) 
nombres_videos_mas_de_5000 <- nombres[videos_mas_de_5000] 
print(nombres_videos_mas_de_5000)
print(vistas)