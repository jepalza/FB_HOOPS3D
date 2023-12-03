# FB_HOOPS3D
FreeBasic envoltura "wrapper" para el motor gráfico geométrico HOOPS3D

Un poco de historia:
Mi trabajo actual es diseñador 3D en sistemas CAD/CAM (sector automoción) y gracias a mis conocimientos de programación, una de las áreas en las que intervengo es en la realización de aplicaciones CAD/CAM para mejoras o ampliaciones.
Hace muchos años, aproximadamente en 1997, tuve la necesidad de crear un visualizador de entidades 3D (superficies de Bezier sobre todo) para mostrar ficheros IGES en los controles CNC de que disponíamos. Por aquél entonces, años 90, internet no era como ahora, y la búsqueda de información se realizaba en bibliotecas. En una de esas bibliotecas, en concreto en una Universidad de Bilbao, encontré un manual sobre un "motor" gráfico geométrico 3D de ayuda al diseño de aplicaciones CAD, llamado HOOPS3D(c) que venía acompañado de un disco con ejemplos. Guardé copia del trabajo hasta hoy día, que 26 años despues, he recuperado y convertido a FreeBasic como ficheros "include" .BI.

La librería HOOPS es sobre todo para trabajos geométricos, mas que de juegos, dado que incluye comandos de superficies, curvas, esferas, etc. Está mas indicado para trabajos CAD que de juegos. 

Es una librería con derechos registrados por su autor original, que según he localizado en internet es:
The HOOPS 3D Graphics System was originally developed in the mid-1980s in the CADIF Lab at Cornell University. Ithaca Software
In 1993, Autodesk, Inc. acquired Ithaca Software.
In 1996, HOOPS was spun out of Autodesk by Tech Soft 3D
HOOPS Graphics System/Copyright 1986-1994, 1995 by Autodesk

hoy dia lo sigue vendiendo "Tech Soft 3D"

La libreria se podía adquirir por módulos, y cada módulo permitía una serie de comandos diferentes.
Por ejemplo, existían módulos A.I.R (Advanced Interactive Rendering) y I.M. (Intermediate Mode).
En la biblioteca, solo estaba el módulo mas básico en modo demo, y es en este en el que me he basado, por ser el único del que dispongo la DLL.

El libro en concreto en el que he basado mi trabajo es:
3D with HOOPS - Build Interactive 3d Graphics into your C++ Applications de su sautores WM Leler y Jim Merry, de 1996

He creado dos ficheros BI con las llamadas mas comunes de la DLL básica, y algunos que he localizado por la red, mas avanzados, pero que no he podido probar, solo escribir. Esta librería tiene mas de 1500 funciones, y es prácticamente imposible probar todas, por que lo que desconozco si funcionará correctamente.
Dejo algún ejemplo de su funcionamiento.

Si se dispone de licencia, esta se puede escribir en una línea como esta:
Var lic="license=(customer=empresa_ejemplo,product=(im,kanji,classic),key=xxx-yyy-zzz)"

y seguido activarla:
HC_Define_System_Options(lic)

No puedo incluir la DLL demo, por que desconozco el alcance de los derechos de distribución. Si alguien los conoce, o sabe de una DLL mejorada y una licencia libre, que lo comunique.

Se puede consultar información y manuales/comandos en la web "archive.org"

![Imagen camaro.jpg](https://github.com/jepalza/FB_HOOPS3D/tree/main/imagenes/camaro.jpg)
![Imagen colores.jpg](https://github.com/jepalza/FB_HOOPS3D/tree/main/imagenes/colores.jpg)
![Imagen entidades.jpg](https://github.com/jepalza/FB_HOOPS3D/tree/main/imagenes/entidades.jpg)
![Imagen simple_modelo.jpg](https://github.com/jepalza/FB_HOOPS3D/tree/main/imagenes/simple_modelo.jpg)
![Imagen simple_raytracer.jpg](https://github.com/jepalza/FB_HOOPS3D/tree/main/imagenes/simple_raytracer.jpg)
![Imagen superficie.jpg](https://github.com/jepalza/FB_HOOPS3D/tree/main/imagenes/superficie.jpg)
