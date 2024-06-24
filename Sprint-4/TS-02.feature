Feature: TS02 - API Review

    Como usuario developer que configura la plataforma
    Quiero implementar una API que permita a los usuarios dejar reseñas a otros usuarios
    Para mejorar la interacción entre usuarios y la plataforma.

    Scenario: Diseño de la API Review
        Given que el usuario developer está configurando la plataforma
        When diseña la API para permitir a los usuarios dejar reseñas en nuestra aplicación
        Then se definen los endpoints y rutas necesarias para que los usuarios puedan crear, leer, actualizar y eliminar reseñas
        And se establecen los requisitos de autenticación y seguridad para proteger la privacidad.

    Scenario: Selección de la tecnología para la API
        Given que el usuario developer está diseñando la API de reseñas en nuestra aplicación
        When elige la tecnología para implementar la API REST
        Then se consideran los requisitos de la aplicación, incluyendo la escalabilidad, el rendimiento y la facilidad de mantenimiento.

    Scenario: Obtener información de la reseña
        Given que el endpoint "/reseñas" está disponible
        When se envía una solicitud GET con el identificador de la reseña
        Then se recibe una respuesta con estado 200
        And se obtienen los datos de la reseña solicitada.

    Scenario: Obtener reseña no disponible
        Given que el endpoint "/reseñas" está disponible
        When se envía una solicitud GET con un identificador de reseña que no existe
        Then se recibe una respuesta con estado 404
        And se muestra un mensaje que indica "No existe una reseña con este identificador".

    Scenario: Agregar una nueva reseña
        Given que el endpoint "/reseñas" está disponible
        When se envía una solicitud POST con los valores de la reseña
        Then se recibe una respuesta con estado 201
        And se incluye una reseña con un nuevo ID y los valores registrados.

    Scenario: Agregar una reseña ya existente
        Given que el endpoint "/reseñas" está disponible
        When se envía una solicitud POST con los datos de la reseña
        And ya existe una reseña registrada con esos datos
        Then se recibe una respuesta con estado 400
        And se muestra un mensaje que dice "Una reseña con estos datos ya existe".
