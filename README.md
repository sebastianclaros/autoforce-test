#  Objetivo

Este repositorio tiene como objetivo hacer una prueba de uso de la automatizacion de autoforce. 

Es un proyecto simple sobre salesforce, la idea para probar es hacer un Fork del mismo asi cada uno puede hacer de ese su propio playground de la herramienta, y asi facilmente llevarlo a un repo y una implementacion real.

## Precondiciones

1. Tener instalado el VSCode 
2. Tener instalado sf
3. Disponer de un devHub para crear scratch orgs

### 2. Instalar Salesforce CLI

Saleforce CLI es la herramienta de linea de comando que nos permite subir codigo a nuestra scracth, y bajar de la misma distinto metadatos que son creados dentro de la UI de SF.

[Bajar el CLI](https://developer.salesforce.com/tools/salesforcecli?_ga=2.11139901.867475159.1706793275-450459138.1704306154)

Cualquier cosa consultar la [guia de instalacion](https://developer.salesforce.com/docs/atlas.en-us.sfdx_setup.meta/sfdx_setup/sfdx_setup_install_cli.htm)


### 3.1 Crear una DevHub

Primero de todo les pedimos que cada uno tenga su DevHub, si aun no tienen uno pueden:

1. Crear una cuenta developer que no expira nunca. [Formulario](https://developer.salesforce.com/signup)
   Si necesitan una [guia paso a paso](https://www.apexhours.com/how-to-create-a-free-salesforce-developer-account/#:~:text=Go%20to%20the%20Salesforce%20Developer,Then%20Choose%20a%20unique%20username.)

Una vez que tengan hagan un login en el browser y configuren:

1. Setear que la password no expire.
2. Poner la Org como DevHub


### 3.2 Conenctarse al DevHub

Ahora que tienen el cli y el devhub, tenemos que autenticarnos a fin de el cli puedan conectarse al devhun y crear scratch orgs. 

Con el siguiente comando nos autenticamos y a su vez lo seteamos a este devhub como default (-d). Si no lo ponemos default, ya sea porque tenemos otros DevHubs, al crear una scratch tendriamos que decirle desde que devhub la tiene que crear.

``` bash
sf org login web -d -a myhuborg
```

## Fork y Configuracion Inicial

### 1. Primer paso es hacer un fork del repo autoforce-test.

En este mismo repo ir a Fork y asi crearse su propio repositorio de test


### 2. Segundo paso es crear el Proyecto 

Dentro de su repo que seria algo asi como: https://github.com/<<owner>>/autoforce-test.gitm donde owner es la org o usuario donde se hizo el fork.

Ir a la pestaña "Projects" y hacer clic en "New Project"

Seleccione la opcion "Board" y ponga un nombre como por ejemplo: "Force"



### 3. Configurar el Repo localmente 


``` bash
git clone https://github.com/<<owner>>/autoforce-test.git
```

``` bash
cd autoforce-test
```

Despues instalamos autoforce con yarn o npm

``` bash
yarn add -D autoforce
```
Antes de configurar recomendamos editar el package.json para editar la propiedad "repository", a fin de que apunte al nuevo.

``` json
  "repository": {
    "type": "git",
    "url": "git+https://github.com/<<owner>>/autoforce-test.git"
  },
```


Ahora vamos a configurar autoforce

``` bash
npx autoforce config
```

Respondemos con la siguiente informacion

``` bash
✔ Elija un servicio de Git › Github
✔ Elija un modelo de automatizacion › modelA
✔ Gestion de proyecto › Github Projects
✔ Nombre de la columna donde se crean nuevos issues … Todo
Por omision ser utilizan proyectos dentro de caacupear y autoforce-test 
✔ Id del proyecto … 1
```


Ahora el configurador va a validar que existan las variables de entorno


## Tours en el uso de la herramienta

Vamos ir explorando los distintos caminos del desarrollo, empezamos por el primer paso.


### 1. Crear una Requerimiento y dejarlo en el Backlog

Para crear un requerimiento usamos el comando "new". 

``` bash
npx autoforce new 
```

De la lista de posibilidades elejimos "issue", o bien se puede pasar issue como ultimo argumento.

A continuacion respondemos las preguntas por ejemplo:

Respondemos con la siguiente informacion

``` bash
✔ Por favor ingrese title? … Actualizar el Readme
✔ Por favor ingrese label? › Documentation
``` 

Al finalizar si hay errores deberiamos tener en el project un issue nuevo con el Label "Documentacion".

Posibles errores pueden ser que no este bien configurado el token para acceder a la API de Gestion de Proyecto o bien que no este bien configurado el "✔Id del proyecto … 1".

Ahora vamos a chequear que el requerimiento este creado en el Backlog

``` bash
npx autoforce list
```



### 2. Tomar un requerimiento del Backlog
Ahora estariamos parados como Devs, y podriamos ver que tenemos para tomar o bien si ya sabemos que requerimiento podemos directamente:

``` bash
npx autoforce start <<nro-de-requerimiento>> 
```




## Errores comunes


``` bash
npx autoforce status
```


