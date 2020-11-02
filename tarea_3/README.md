# Tarea 3 Microelectronica
### Por
Marco Chacon Soto - B61868
## Compilar

El firmware se compila dentro de la carpeta src

Para compilar y correr el codigo se utilizan distintos comandos dependiendo de las pruebas que se deseen mostrar en la pantalla. 

### Pruebas 1 (default delay & original design)

```c
>> cd src
>> make pruebas_1
```


### Pruebas 2 (delay = 1 & original design)

```c
>> cd src
>> make pruebas_2
```

### Pruebas 3 (default delay & modified design)

```c
>> cd src
>> make pruebas_3
```

## Descripcion del programa

El firmware compara los resultados de la potencia (PwrC) de 3 sumadores para diferentes semillas y distintos disenos de contador de Rizado.
