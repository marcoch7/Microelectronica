# Tarea 2 Microelectronica
### Por
Marco Chacon Soto - B61868
## Compilar

El firmware se compila dentro de la carpeta src

Para compilar y correr el codigo se utilizan distintos comandos dependiendo de las pruebas que se deseen mostrar en la pantalla. Para compilar las pruebas con la descripcion conductual y estructural sin tiempos de propagacion se ejecutan los siguientes comandos:

### Pruebas del modo 00, 01, 10, 11, pruebas negativas, pruebas de las senales de enable y reset y pruebas random

```c
>> cd src
>> make 00
```

```c
>> make 01
```

```c
>> make 10
```

```c
>> make 11
```

```c
>> make invalid
```

```c
>> make enable
```

```c
>> make reset
```

```c
>> make random
```

De manera similar, para ejecutar las mismas pruebas con tiempos de propagacion basta con agregar "g" al final del nombre de cada prueba como en el siguiente codigo


```c
>> make randomg
```
## Descripcion del programa

El firmware compara los resultados de las senales de control y salida de la descripcion conductual y estructural con las del contador localizado en el scoreboard, el cual simula el comportamiento de un contador con las especificaciones solicitadas.


