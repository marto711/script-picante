#!/bin/bash

TITULO="Resultados nmap"
FECHA_ACTUAL="$(date)"
TIMESTAMP="Informe generado el $FECHA_ACTUAL por el usuario $USERNAME"

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
    
