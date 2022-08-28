Paso a paso:
1. Creo test simple para calcular el importe teniendo en cuenta el tipo de alquier y por cuanto tiempo.
2. Creo tests simples para calcular el alquiler por hora, dia y kilometros.
3. Voy agregando la logica a la funcion de calcular dependiendo el tipo de alquiler.
4. Agrego test y logica para hacer descuento si el cliente es una empresa.
5. Agrego logica y tests para recargo por devolver luego de la fecha indicada.
6. Agrego test y logica para pedir por consola e imprimir por pantalla.
7. Refactor de alquiler (agrego constantes).
8. Refactor de alquier, creo clase TipoDeAlquiler para poder aplicar polimorfismo.

Supuestos:
- El recargo solo se calcula en los alquileres por dia ya que por hora y por kilometro no se tienen los datos necesarios.
- Si se alquila por 24 horas se calcula por 24 horas y no por 1 dia.
