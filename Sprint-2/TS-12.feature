Feature: TS-12: Get Subscription

    Como usuario developer de la aplicación Cambiazo,
    Quiero poder obtener información sobre las suscripciones existentes en la plataforma a través del API,
    Para mostrar esta información a los usuarios y permitirles gestionar sus suscripciones.

    Scenario: Obtener información de suscripción
        Given que el endpoint “/suscripciones” está disponible,
        When se envía una solicitud GET con el identificador de la suscripción,
        Then se recibe una respuesta con estado 200,
        And se obtienen los detalles de la suscripción solicitada.

    Scenario: Suscripción no encontrada
        Given que el endpoint “/suscripciones” está disponible,
        When se envía una solicitud GET con un identificador de suscripción que no existe,
        Then se recibe una respuesta con estado 404,
        And se muestra un mensaje que indica “No se encontró la suscripción”.
