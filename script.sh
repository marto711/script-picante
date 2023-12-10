#!/bin/bash

TITULO="Resultados nmap"
FECHA_ACTUAL="$(date)"
TIMESTAMP="Informe generado el $FECHA_ACTUAL por el usuario $USERNAME"

nmap_exec () {
	echo "[INFO] Ejecutnado nmap, banca un toque..."
	sudo nmap -sV 192.168.1.0/24 > salida_nmap.raw
        echo "[OK] Fichero salida_nmap.raw generado correctamente"	
}

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

#Reporte de nmap
nmap_exec


#Reporte HTML
echo "[INFO] Generando reporte HTML..."

#Pasaje del reporte a HTML
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
    
