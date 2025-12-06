1. Instalación de MySQL Server

Descarga el instalador oficial de MySQL desde el sitio web de MySQL.
Ejecuta MySQL Installer y continúe con la instalación utilizando la configuración predeterminada.
Registra el usuario y la contraseña definidos durante el proceso (habitualmente, el usuario inicial es root).
Finaliza la instalación del servidor.

2. Instalación y configuración inicial de MySQL Workbench

Descarga e instala MySQL Workbench 8.0 desde la página oficial.
Abre MySQL Workbench y crea una nueva conexión al servidor local con los siguientes parámetros:

Host: localhost
Puerto: 3306

Usuario: especificado durante la instalación de MySQL
Contraseña: correspondiente al usuario anterior

Utiliza la opción Test Connection para verificar la conectividad con el servidor.

3. Apertura del modelo .mwb y generación del script SQL

En MySQL Workbench, accede a File → Open Model y seleccione el archivo con formato .mwb.
Una vez cargado el modelo, genera el script SQL mediante:
File → Export → Forward Engineer SQL CREATE Script…

Guarda el archivo resultante.
Este documento contendrá todas las instrucciones necesarias para la creación de las tablas y relaciones de la base de datos.

4. Creación del esquema “Base_naval”

En el panel lateral Schemas, haz clic con el botón derecho y selecciona Create Schema.
Asigna el nombre:

StrangerThings

Confirma la creación y establezca el esquema como activo mediante doble clic.

5. Ejecución del script de creación de la estructura

Abra el script SQL generado previamente mediante:
File → Open SQL Script…
Verifica que el esquema StrangerThings está seleccionado como base activa.
Ejecuta el conjunto de instrucciones mediante el icono correspondiente (rayo).

Es posible que el proceso muestre advertencias relacionadas con sentencias DROP.
Estas notificaciones indican que el script intenta eliminar tablas inexistentes en el sistema y, por tanto, no afectan al resultado final.

6. Finalización del proceso

Tras la ejecución completa del script, la base de datos StrangerThing te quedará implementada con todas sus tablas, claves y relaciones definidas en el modelo.
A partir de este punto, podrá utilizarse para consultas, ejercicios o cualquier otro procedimiento requerido.