A sample command-line application with an entrypoint in `bin/`, library code
in `lib/`, and example unit test in `test/`.

En la carpeta bin está el script con la función main. Puedes cambiar el nombre del archivo "paquetes.dart" por "main.dart" (por ejemplo) sin mayores inconvenientes.

El archivo main.dart importa lo que está en el lib sin especificar dicha carpeta. Es decir, lo hace automáticamente. Pondremos todas las funciones en la carpeta lib.