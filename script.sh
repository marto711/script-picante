#!/bin/bash

TITULO="Resultados nmap"
FECHA_ACTUAL="$(date)"
TIMESTAMP="Informe generado el $FECHA_ACTUAL por el usuario $USERNAME"

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
if [ $numero -le 6 ]; then 
	echo "la posta es posta"
elif [ 5 -le 10 ]; then 
	echo "la de arriba no se cumple, entonces me cumplo yo. Soy un else travesti"
else
	echo "la posta no es posta"

fi

#expr es lo que se va a evaluar si es verdadero o falso, luego va el then (entonces)
#lo importante está en "expr"
    
