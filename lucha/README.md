Lucha
===========================


## Preparación del ambiente

sudo apt-get update
sudo apt-get install build-essential
sudo apt-get install -y git
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -sSL https://get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm
rvm install 2.7.5
gem install bundler

## Uso del proyecto

Una vez realizada la instalación:

1. Instalar las dependencias del proyecto ejecutando _bundle install_
2. Ejecutar las pruebas ejecutando _bundle exec rake_

## Consigna del ejercicio

La idea es hacer una aplicación de enfrentamientos entre dos personajes.
La dinámica de lucha está basada en el puntaje acumulado por cada luchador, gana el que más puntos suma.
Asimismo el puntaje está dado por: puntaje del personaje con arma + puntaje del persona en escenario.
A continuación se listan los posibles tipos de personaje con sus respectivos puntajes "a secas".

Personales:
* humano: 1
* vampiro: 2
* lobo: 3

Cada personaje lucha siempre con un arma, la cual aumenta el puntaje. A continuación se listan las posibles armas con sus respectivas reglas de puntaje.

Armas:
* mano: +0
* cuchillo: +2
* espada: *2

Al mismo todas las luchas ocurren en un escenario. El escenario también afecta el puntaje pero de forma distinta para cada tipo de personaje.
A continuación se listan los posibles escenarios con sus respectivas reglas de puntaje.

Escenario:
* estadio => no tiene ningun efecto para nadie
* noche => duplica el poder del vampiro
* lluvia => resta 1 al poder del vampiro
* bosque => triplica el poder del lobo
* ciudad => duplica el poder del humano

Finalmente los resultados del enfrentamiento pueden ser:

* gana 1
* gana 2
* empate

Ejemplo:
--------
Si un luchador 1 de tipo HUMANO con ESPADA enfrenta a un luchador 2 de tipo LOBO con CUCHILLO en un BOSQUE tenemos:

* Puntaje luchador 1 : HUMANO-CON-ESPADA (2) + HUMANO-EN-BOSQUE (1) = 3
* Puntaje luchador 2 : LOBO-CON-CUCHILLO (5) + LOBO-EN-BOSQUE (9) = 14
* Resultado: gana 2
