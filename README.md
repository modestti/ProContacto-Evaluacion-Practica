# ProContacto - Evaluación Práctica

Mi nombre es Tomás Agustín Modestti y presento a continuación la resolución de la evaluación práctica solicitada para el proceso de postulación laboral en ProContacto.

## Ejercicio 1 - Instalación del Ambiente de Desarrollo

En este ejercicio se realizó la preparación del entorno de trabajo necesario para el desarrollo de la evaluación práctica, asegurando contar con las herramientas utilizadas habitualmente en proyectos dentro de ProContacto.
 
 **Herramientas instaladas**

- **Visual Studio Code** (VS Code): IDE utilizado para el desarrollo de aplicaciones web, móviles y Salesforce. Permite trabajar con múltiples lenguajes como Apex, JavaScript, HTML, CSS y frameworks modernos.

- **Git y Git Bash**: Herramientas utilizadas para el control de versiones del código fuente. Git permite llevar un historial de cambios, facilitar el trabajo colaborativo y mantener el código almacenado de forma remota.

**Evidencia de instalación**

- Visual Studio Code
![IDE Visual Studio Code](Images/VSCode.png)

- Git y Git Bash
  
![Git Status](Images/Git.png)

## Ejercicio 2 – Comprensión del Protocolo HTTP

**1. ¿Qué es un servidor HTTP?**

   Un servidor HTTP es una pieza de software capaz de comprender URLs (direcciones web y HTTP (el protocolo que el navegador usa para obtener paginas web). Un servidor HTTP puede ser accedido a través de los nombres de dominio de los sitios web que aloja, y entrega el contenido de esos sitios alojados al dispositivo del usuario final.

**2. ¿Qué son los verbos HTTP? Mencionar los más conocidos**

   Los verbos HTTP indican la acción que el cliente desea realizar sobre un recurso en el servidor. Los más conocidos son:
- **GET**: obtiene datos del servidor.
- **HEAD**: solicita únicamente los encabezados de la respuesta HTTP, sin devolver el cuerpo del recurso.
- **POST**: envía datos al servidor, generalmente para crear un nuevo recurso.
- **PUT**: actualiza o reemplaza un recurso existente.
- **PATCH**: modifica ciertos atributos de un recurso existente.
- **DELETE**: elimina un recurso.


**3.¿Qué es un request y un response en una comunicación HTTP?¿Qué son los headers?**

   Un request y un response son mensajes HTTP utilizados para intercambiar información entre el cliente y el servidor. El request es enviado por el cliente al servidor para solicitar un recurso o realizar una acción, mientras que el response es la respuesta del servidor, que contiene el resultado de esa solicitud. Los headers son campos que permiten tanto al cliente como al servidor enviar información adicional junto con una petición o una respuesta. 

**4. ¿Qué es un queryString? (En el contexto de una url)**

   Un queryString es la parte de una URL que permite enviar información adicional al servidor en forma de pares clave=valor. Se encuentra después del signo **?** en la URL y los distintos parámetros se separan con **&**.

**5. ¿Qué es el responseCode? ¿Qué significado tiene los posibles valores devueltos?**

   El responseCode es un valor numérico que el servidor devuelve al cliente dentro de la respuesta HTTP para indicar el resultado de la solicitud realizada. Estos códigos informan si la petición fue exitosa, si ocurrió un error o si se requiere alguna acción adicional.

**6. ¿Cómo se envía la data en un Get y cómo en un POST?**

   En una petición GET, la información se envía a través de la URL, generalmente mediante el queryString, quedando visible para el usuario.
   En una petición POST, la información se envía en el cuerpo (body) de la solicitud HTTP, no siendo visible en la URL y permitiendo enviar mayor cantidad de datos.

**7. ¿Qué verbo http utiliza el navegador cuando accedemos a una página?**

   El navegador, cuando accedemos a una página web, utiliza el verbo HTTP GET para solicitar y obtener el contenido de la misma.

**8. Explicar brevemente qué son las estructuras de datos JSON y XML dando ejemplo de estructuras posibles.**

   JSON es un formato de intercambio de datos liviano y legible por humanos, que representa información mediante pares clave–valor y arreglos. Es muy utilizado en APIs y servicios web. Ejemplo:

```json
{
	"nombre" : "Tomas",
	"dirección": "Peribebuy 4246",
	"estadoCivil": "Soltero",
	"carrera": "Ing. Informática",
	"materiasAprobadas": 36,
	"cursos": 
	[
		{
			"nombre": "React Js",
			"institución: “Talento Tech"
		},
		{
			"nombre”: “Front End",
			"institución: “Talento Tech"
		}
	]
}
```

   XML es un lenguaje de marcado extensible que está diseñado para almacenar datos. Se utiliza popularmente para transferir datos. Es sensible a mayúsculas y minúsculas. Ejemplo: 

```XML
<empresa>
    <departamento>
        <empleado>
            <nombre>Lucia</nombre>
            <cargo>Gerente</cargo>
        </empleado>
    </departamento>
</empresa>
```

**9. Explicar brevemente el estándar SOAP**

   SOAP (Simple Object Access Protocol) es un protocolo estándar utilizado en servicios web que define un conjunto estricto de reglas para estructurar mensajes y permitir la comunicación entre aplicaciones. Los mensajes SOAP están basados en XML y generalmente se transmiten sobre el protocolo HTTP, aunque pueden utilizar otros transportes. Se caracteriza por ser altamente estructurado y formal.

**10.Explicar brevemente el estándar REST Full**

   REST (Representational State Transfer) es un estilo de arquitectura para el diseño de servicios web que se basa en el uso del protocolo HTTP.
   Un servicio RESTful utiliza los verbos HTTP (GET, POST, PUT, DELETE, etc.) para operar sobre recursos identificados por URLs y se caracteriza por ser sin estado (stateless), simple y escalable. Generalmente intercambia datos en formatos como JSON o XML.

**11. ¿Qué son los headers en un request? ¿Para qué se utiliza el key Content-type en un header?**

   Los headers en un request HTTP son campos que permiten enviar información adicional desde el cliente al servidor junto con la solicitud. Se utilizan para indicar datos como el tipo de contenido, autenticación, idioma, codificación o información del cliente.
   El header Content-Type indica el formato del cuerpo (body) del request, permitiendo al servidor interpretar correctamente los datos enviados, por ejemplo:
- “application/json”
- “application/xml”
- “application/x-www-form-urlencoded”

## Ejercicio 3 - Sintaxis JSON

1. Realizar un request GET a la [URL](https://procontacto-reclutamiento-default-rtdb.firebaseio.com/contacts.json)

![Ejercicio 1](Images/ej3-punto1.png)

2. Realizar un request POST a la URL anterior, y con body:
```json
{
    "name":"Tu nombre", 
    "email": tunombre.tuapellido@procontacto.com.mx 
} 
```
![Ejercicio 2](Images/ej3-punto2.png)

3. Realizar nuevamente un request GET a la [URL](https://procontacto-reclutamiento-default-rtdb.firebaseio.com/contacts.json)

![Ejercicio 3](Images/ej3-punto3.png)


**¿Qué diferencias se observan entre las llamadas el punto 1 y 3?**

La diferencia observada entre las llamadas GET del punto 1 y del punto 3 es que, en la segunda llamada (punto 3), aparece el contacto creado mediante el request POST realizado en el punto 2. Esto se debe a que el request POST agrega un nuevo registro en el servidor, el cual queda almacenado en la base de datos. Al volver a realizar el request GET, el servidor devuelve la información actualizada, incluyendo el nuevo contacto, mientras que en el punto 1 dicho registro aún no existía.
