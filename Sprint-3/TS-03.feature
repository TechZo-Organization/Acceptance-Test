Feature: TS03 - API ONGs

    Como usuario developer que configura la plataforma
    Quiero diseñar una API que simplifique la obtención de información sobre las ONGs
    Para integrarla de manera efectiva en la aplicación.

    Scenario: Diseño de la API ONGs
        Given que el usuario developer configura la plataforma
        When diseñe la API para obtener información sobre las ONGs
        Then define los endpoints y rutas necesarias para recibir detalles sobre las ONGs
        And establece los requisitos de autenticación y seguridad necesarios.

    Scenario: Selección de la tecnología para la API
        Given que el usuario developer está diseñando la API para obtener información sobre las ONGs
        When elija la tecnología para implementar la API REST
        Then considerará los requisitos y preferencias de la organización para tomar una decisión informada.

    Scenario: Obtener información de la ONG
        Given que el endpoint "/ongs" está disponible
        When se envía una solicitud GET con el identificador de la ONG
        Then se recibe una respuesta con estado 200
        And se obtienen los datos de la ONG solicitada.

    Scenario: Obtener ONG no disponible
        Given que el endpoint "/ongs" está disponible
        When se envía una solicitud GET con un identificador de ONG que no existe
        Then se recibe una respuesta con estado 404
        And se muestra un mensaje que indica "No existe una ONG con este identificador".

    Scenario: Agregar una nueva ONG
        Given que el endpoint "/ongs" está disponible
        When se envía una solicitud POST con los valores de la ONG
        Then se recibe una respuesta con estado 201
        And se incluye una ONG con un nuevo ID y sus valores registrados.

    Scenario: Agregar una ONG ya existente
        Given que el endpoint "/ongs" está disponible
        When se envía una solicitud POST con los datos de la ONG
        And ya existe una ONG registrada con esos datos
        Then se recibe una respuesta con estado 400
        And se muestra un mensaje que dice "Una ONG con estos datos ya existe".
