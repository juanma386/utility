#!/bin/sh


echo '
## Part Deploy working
##
## @author      Villalba Juan Manuel Pedro <https://github.com/juanma386>
# @Version:     0.0.1
# @Estado:      Alpha
# @Destino:     Deploy Server Php Linux
# @Date:        05:41pm 14-09-2017
# @Advertencia  Usar con cautela y bajo propia responsabilidad
# @Licence:     GPLv2 Free Software Foundation <licensing@fsf.org>
'

_hoy=$(date +"%m_%d_%Y_%r_%S")
_pwd=$(pwd)
_permisos=$(ls -la *)	

PrintLogData(){
cat <<EOF


 ##         ######   ###   ##  ##    ##  ##    ## 
 ##         ######   ###   ##  ##    ##  :##  ##: 
 ##           ##     ###:  ##  ##    ##   ##  ##  
 ##           ##     ####  ##  ##    ##   :####:  
 ##           ##     ##:#: ##  ##    ##    ####   
 ##           ##     ## ## ##  ##    ##    :##:   
 ##           ##     ## ## ##  ##    ##    :##:   
 ##           ##     ## :#:##  ##    ##    ####   
 ##           ##     ##  ####  ##    ##   :####:  
 ##           ##     ##  :###  ##    ##   ##::##  
 ########   ######   ##   ###  :######:  :##  ##: 
 ########   ######   ##   ###   :####:   ##    ## 

EOF
}

bin(){
	if [ -d bin ];
	then
	echo "Sí, sí existe."
	echo "Data is exist in bin folder".	" [ ".$_hoy." ]"
    echo "Data deploy is existed  OK ".	" [ "$_hoy" ]" >> testing.server.log
    echo "Directorio de ./bin existe OK ".	" [ "$_pwd" ]" >> testing.server.log
    echo "Directorio de ./bin OK ".	" [ "$_pwd" ]"
	data
	else
	echo "No, no existe"
	echo "File does not exist"
	echo "Create Directory"
	mkdir bin
        echo "Directorio de bin creado OK ".      " [ "$_pwd" ]" >> testing.server.log
	fi
}
bin

#PrintDataHexome(){ cat >> "EOF" 
#                           EOF}
#PrintDataHexome

# Registro del sistema
registro() {
logger=./testing.server.log
if [ ! -e "$logger" ];
then
echo "Log operative not found init process charging data"
echo '
## Part Deploy working
##
## @author      Villalba Juan Manuel Pedro <https://github.com/juanma386>
# @Version:     0.0.1
# @Estado:      Alpha
# @Destino:     Deploy Server Php Linux
# @Date:        05:41pm 14-09-2017
# @Advertencia  Usar con cautela y bajo propia responsabilidad
# @Licence:     GPLv2 Free Software Foundation <licensing@fsf.org>
' > testing.server.log

    echo "Finish file logger is created and continue process"
else
    echo "Data file log is existed".	" [ ".$_hoy." ]"
    # echo "Los permisos del archivo" $_permisos
    echo "Data file log is existed".    " [ ".$_hoy." ]" >> testing.server.log
    echo "Los permisos del archivo" $_permisos >> testing.server.log
    PrintLogData
fi
}
registro

#Servidor del sistema de despliegue
server() {
servidor=./bin/server.sh
if [ ! -e "$servidor" ];
then
    echo "File does not exist sh"
	mkdir bin
    echo "Download sh deployer to system_".		"[".$_hoy."]"
    curl -o bin/server.sh https://pastebin.com/raw/RA8w25Vu
	echo 'Downloading finish OK'
	echo "Downloadings data sh to working deploy ".	" [ ".$_hoy." ]" >> testing.server.log 
        dos2unix $_pwd/./*/server.sh
else
    echo "Data Deploy is existed".	" [ ".$_hoy." ]"
    echo "Data deploy is existed  OK ".	" [ "$_hoy" ]" >> testing.server.log
    echo "Directorio de ejecución OK ".	" [ "$_pwd" ]" >> testing.server.log
    echo "Directorio de ejecución OK ".	" [ "$_pwd" ]"
fi
}
server
# Archivo Route del sistema de despliegue
route() {
fileroute=./bin/route.php
if [ ! -e "$fileroute" ]; 
then
    echo "File does not exist"
	echo "Create Directory"
	mkdir bin
    echo "Route data deploy work download".		"[".$_hoy."]"
	echo "Downloading data in progress"
	curl -o bin/route.php https://pastebin.com/raw/dLFnEQvz
	echo "preparing deployer to inicializated ".	" [ ".$_hoy." ]" >> testing.server.log 
else
    echo "Data is exist in bin folder".	" [ ".$_hoy." ]"
    echo "Data deploy is existed  OK ".	" [ "$_hoy" ]" >> testing.server.log
    echo "Directorio de ejecución OK ".	" [ "$_pwd" ]" >> testing.server.log
    echo "Directorio de ejecución OK ".	" [ "$_pwd" ]"
fi
echo 'Listo todo esta instalado y listo para empezar'
}
route
# Ejecutamos la tarea derecho viejo
./bin/server.sh
