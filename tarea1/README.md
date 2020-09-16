# Tarea 1 Microelectronica

## Compilar

El firmware se compila dentro de la carpeta src

Para compilar y correr el codigo se utilizan distintos comandos dependiendo de las pruebas que se deseen mostrar en la pantalla, estos son los siguientes

### Pruebas del modo 00

```c
make 00
```
### Pruebas del modo 01

```c
make 01
```
### Pruebas del modo 10

```c
make 10
```

### Pruebas del modo 11

```c
make 11
```

### Pruebas negativas

```c
make invalid
```

### Pruebas de las senales de reset y enable

```c
make reset
```

## Descripcion del programa

El firmware compara los resultados de las senales de control y salida de tres contadores respecto al contador localizado en el scoreboard, el cual simula el comportamiento de un contador con las especificaciones solicitadas.


