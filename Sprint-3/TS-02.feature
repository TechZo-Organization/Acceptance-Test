Feature: TS-02: Get User

    Como usuario developer de la aplicación de Cambiazo
    Quiero obtener la información de un usuario dentro de la API usuario
    Para usarlo en la aplicación cuando se necesite

    Scenario: Obtener información del usuario
        Given que el endpoint “/usuarios” está disponible,
        When  se envía una solicitud GET con el identificador del usuario,
        Then se recibe una respuesta con estado 200,
        And se obtienen los datos del usuario solicitado.

    Scenario: Obtener usuario no disponible
        Given que el usuario developer está diseñando la API para gestionar usuarios en nuestra aplicación web,
        When se envía una solicitud GET con un identificador de usuario que no existe,
        Then se recibe una respuesta con estado 404,
        And se muestra un mensaje que indica “No existe un usuario con este identificador”.