# Examen Intro backend

## Normalizacion

### Primera norma formal
![alt text](image-1.png)

Aqui se genero atomicidad de datos eliminando la fila repetida del cliente y seteandolo con un ID propio


## Segunda forma normal

![alt text](image.png)

En la segunda forma normal se generan los id para venta y libro para generar la dependencia a un atributo clave o PK

## Tercera Forma Normal

![alt text](image-2.png)

En la tecera forma normal, se genera un identificador para categoria y editorial ya que estos casos se presenta que una editorial puede publicar varios libros y en una categoria pueden entrar muchos lobros, por ende se elimina la dependencia transitiva


## Conceptual

![alt text](image-3.png)

El modelo conceptual muestra vagamente la relacion entre cada uno de los actores en cuanto al libro

## Modelo UML

![alt text](image-4.png)

En el modelo uml se muestra la relacion especifica de los atributos de cada tabla, en la imagen se pueden ver las primary key seteadas con un icono de una llave al lado del atributo, los datos obligatorios con un NN representando un not null y las llaves foraneas reperesentadas con un icono de cadena para mostrar la relacion.

