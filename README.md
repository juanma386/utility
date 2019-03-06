# utility
Utilidades para programar, se aceptan pull request

**Deploy**
Para iniciar el desplegador debes realizar una carga en la siguiente linea de comando desde linux
Sugerido para Debian 9 pero puede adaptarse a otras distros
Requisitos:
Tener instalado dos2unix para evitar errores criticos
Tener instalado php5.6 para Linux Debian
$ curl -o deploy.sh https://pastebin.com/raw/8aLb2Ui6 && dos2unix ./deploy.sh && ./deploy.sh
