#!/bin/bash

TITULO="Resultados nmap"
FECHA_ACTUAL="$(date)"
TIMESTAMP="Informe generado el $FECHA_ACTUAL por el usuario $USERNAME"

#prueba de variable local, solo sirve dentro de la funcion
funcion_pichi () {
	local variable="variable local"
	echo $variable
	return
}
#Genera una serie de comandos con nmap, ejecuta la serie.
nmap_exec () {
	echo "[INFO] Ejecutnado nmap de la red $1, banca un toque..."
	sudo nmap -sV $1 > $2
        echo "[OK] Fichero salida_nmap.raw generado correctamente"	
}

#Toma las lineas de codigo HTML y las mete en una función para usarla en otros momentos.
generar_html (){
cat <<EOF
<html>
    <head>
        <title>$TITULO</title>
    </head>
    <body>
       <h1>$TITULO</h1>
        <p1>Aqui van los resultados de nmap</p1>
        <p2>$TIMESTAMP</p2>
     </body>
</html>

EOF
}
#probando funcion local
funcion_pichi
#Ejecuta la función nmap_exec que contiene el inicio de la acción, la acción y la salida en un archivo .raw
nmap_exec "192.168.1.0/24" "salida_nmap2.raw"

#Termina la funcion anterior y lanza un mensaje de que dará un reporte en HTML
echo "[INFO] Generando reporte HTML..."

#Mete la función dentro de un .html
#Agarra la funcion que aglomera al HTML y lo mete en un archivo
generar_html > resultados_nmap.html 

echo "[OK] Reporte resultados.html generado correctamente"
numero=7

#-le quiere decir menor o igual

#Deentro de los corchetes se encuentra la función o lo que se tomara como referencia de verdadero o falso, siendo entonces
#Si [esto sucede]; entonces (then)
#echo (decir "xxx")
#Elif quiere decir "sino si" una especie de if antes de que sucede el else, una nueva condicion de que si otra cosa sucede antes generar una generalidad que de como respuesta else
#luego else, que es la generalidad que toma el hilo al no cumplirse la primer orden, o segunda. En donde si tal o tal no pasa, entonces sucede esto.

##Este if lo que hace es buscar el archivo que se genera con la funcion "nmap_exec" y consultar si se generé hace menos de 30 min, si coinciden
##las especdificaciones, me dirá que ya existe
if [ $(find salida_nmap.raw -mmin -30) ]; then	
	echo "[INFO] El fichero existe y tiene una antigûedad menor a 30 minutos"
#elif [ 5 -le 10 ]; then 
#	echo "la de arriba no se cumple, entonces me cumplo yo. Soy un else travesti"

## Si el if no se cumple, se generará ese archivo de salida, por ende si ejecuto el script ahora, me lo va a crear porque lo hice hace unas horas, 
## pero si lo vuelvo a ejecutar una vez hecho el archivo, ahi si me va a tirar el mensaje de que ya existe
else
	nmap_exec "192.168.1.0/24" "salida_nmap.raw"
fi

#expr es lo que se va a evaluar si es verdadero o falso, luego va el then (entonces)
#lo importante está en "expr"
    
