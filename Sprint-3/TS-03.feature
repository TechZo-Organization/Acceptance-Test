Feature: TS-03: Post User

    Como usuario developer de la aplicación de Cambiazo
    Quiero registrar usuario en un API
    Para puedan navegar en mi aplicación web y usar sus funcionalidades

    Scenario: Registro de un nuevo usuario
        Given que el endpoint “/usuarios” está disponible,
        When  se envía una solicitud POST con los detalles del usuario,
        Then se recibe una respuesta con estado 201,
        And se incluye un usuario con un nuevo ID y los detalles registrados.

    Scenario: Registro de un usuario ya existente
        Given que el usuario developer está diseñando la API para gestionar usuarios en nuestra aplicación web,
        When se envía una solicitud GET con un identificador de usuario que no existe,
        And ya existe un usuario registrado con esos datos,
        Then se recibe una respuesta con estado 400,
        And se muestra un mensaje que indica “Un usuario con estos datos ya existe”.