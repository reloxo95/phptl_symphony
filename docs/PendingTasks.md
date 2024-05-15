# PendingTasks #

## Contexto ##
Por un problema con un tercero, tengo que dejar a un lado el desarrollo de este proyecto y tengo que pedirte ayuda para continuar con el. Te explicaré de forma resumida el estado actual de proyecto y las tareas pendientes que tenemos.

No te preocupes si durante la primera semana te atascas!, familiarízate primero con el proyecto, mira los componentes y funcionalides que están funcionando y poco a poco ya te irás metiendo en el proyecto y avanzando en las tareas! :D

Si ves que hay puntos que no entiendes o que necesitas que lo veamos para continuar, envíame un correo que buscamos una hora para velo!!


### Estado actual ###

En general, la idea del proyecto es poder mostrar a los usuarios nuestros productos top de una forma directa y sencilla. Actualmente está desarrollado:
- <b>Importador de productos JSON - DDBB</b>: como la parte de ventas nos envía los productos necesarios a mostrar, hemos acordado que nos los envíen en un único fichero JSON para poder importarlo de una forma eficiente a la DDBB de la aplicación web. Ahora mismo existe un importador que procesa los campos genéricos del producto
- <b>Ruta /products</b>: el listado de todos los productos está creada (/products), donde simplemente se cargan todos los productos de la DDBB y se envían al front para ser mostrados en modo grid
- <b>Vista de producto</b>: tenemos vistas creadas: el listado de productos y el componente de producto en modo grid. Con esto, la visualización del producto única (product-token) la puedes usar en cualquier otra parte del proyecto


### Tareas pendientes ###

Como estamos aún en las primeras fases, nos tenemos que centrar en la gestión de errores y comportamientos de la visualización de los productos para que el usuario pueda tener una estrucutra común en todos los productos y nosotros (como gestores) podamos saber qué errores han ocurrido para solventarlos. Como tareas concretas:
- <b>Gestión de campos vacíos</b>: controla lo que ocurre si falta algún campo del producto, es decir: si un producto no tiene imagen necesitamos gestionarlo y especificar una por defecto. Soy consciente de que no tienes una directriz de qué hacer con cada campo. En general, si el campo no existe asigna un valor por defecto. En futuras fases revisaremos esto
- <b>Mejora de importador</b>: el actual no importa todos los campos ni tampoco realiza comprobaciones de valores. Revisa la estructura del JSON y amplía el importador para extenderlo a todos los campos y registra cualqueir incidencia que pueda ocurrir
- <b>Mejora en la visualización</b>: el front usará Bootstrap5 como tema base. No te pido que desarrolles la entidad visual (colores, fondos, fuentes, etc...) ya que para eso tenemos que esperar a que nos envíen los diseños. Lo que me gustaría es añadieras los componentes que me han faltado: cabecera con metas básicas, un menú sencillo, un footer y todos los campos de los productos