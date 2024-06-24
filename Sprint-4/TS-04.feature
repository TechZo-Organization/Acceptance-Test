Feature: TS04 - API Memberships

    Como usuario members que configura la plataforma
    Quiero diseñar una API que facilite la gestión de membresías de usuarios
    Para ofrecer beneficios al usuario

    Scenario: Diseño de la API de Membresías
        Given que el usuario developer está configurando la plataforma
        When diseña la API de Membresías para gestionar las membresías de los usuarios
        Then define los endpoints y rutas necesarios para permitir a los usuarios obtener membresías y obtener información sobre sus características.

    Scenario: Implementación de la Operación POST para Membresías
        Given que el usuario developer está desarrollando la API de Membresías en la aplicación
        When elige la tecnología para implementar la API REST
        Then se consideran los requisitos de la aplicación, incluyendo la escalabilidad, el rendimiento y la facilidad de mantenimiento.

    Scenario: Creación de una nueva membresía
        Given que el endpoint "/membresias" está disponible
        When se envía una solicitud POST con los detalles de la membresía
        Then se recibe una respuesta con estado 201
        And se registra la membresía con un nuevo ID y los detalles registrados.

    Scenario: Membresía ya existente
        Given que el endpoint "/membresias" está disponible
        When se intenta crear una nueva membresía que ya existe
        Then se recibe una respuesta con estado 400
        And se muestra un mensaje que indica "La membresía ya está creada".

    Scenario: Obtener información de membresías
        Given que el endpoint "/membresias" está disponible
        When se envía una solicitud GET con el identificador de la membresía
        Then se recibe una respuesta con estado 200
        And se obtienen los detalles de la membresía solicitada.

    Scenario: Membresía no encontrada
        Given que el endpoint "/membresias" está disponible
        When se envía una solicitud GET con un identificador de una membresía que no existe
        Then se recibe una respuesta con estado 404
        And se muestra un mensaje que indica "No se encontró la membresía".
