# Proyecto Microelectronica
### Por
Marco Chacon Soto - B61868
## Compilar

El firmware se compila dentro de la carpeta src/part_*

Para compilar y correr el codigo se utilizan distintos comandos dependiendo de las pruebas que se deseen mostrar en la pantalla para las partes A, B y C. Para la parte E se incluye la libreria utilizada en Electric.
Los siguientes comandos corren dentro de las carpetas part_A, part_B, part_C, part_D y part_D32
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



