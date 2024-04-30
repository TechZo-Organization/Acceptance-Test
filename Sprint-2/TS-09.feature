Feature: TS-09: Get ONGs

    Como usuario developer de la aplicación de Cambiazo
    Quiero mostrar en la aplicación las ONGs de la API ONGs
    Para mostrarlas en la aplicación con su detalles.

    Scenario: Obtener información de la reseña
        Given que el endpoint “/reseñas” está disponible,
        When se envía una solicitud GET con el identificador de la reseña,
        Then se recibe una respuesta con estado 200,
        And se obtienen los datos de la reseña solicitada.

    Scenario: Obtener reseña no disponible
        Given que el endpoint “/reseñas” está disponible,
        When se envía una solicitud GET con un identificador de reseña que no existe,
        Then se recibe una respuesta con estado 404,
        And se muestra un mensaje que indica “No existe una reseña con este identificador”.
