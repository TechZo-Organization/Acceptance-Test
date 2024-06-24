Feature: TS01 - Gestión de usuarios en la aplicación

    Como usuario developer configurando la plataforma
    Quiero tener una API que facilite la gestión de usuarios en nuestra aplicación
    Para administrar eficazmente la información de los usuarios.

    Scenario: Diseño de la API User
        Given que el usuario developer configura la plataforma
        When diseñe la API para gestionar usuarios en nuestra aplicación web
        Then definirá los endpoints y rutas necesarias para manejar operaciones como registro de usuarios, inicio de sesión, actualización de datos de usuario, y recuperación de contraseñas
        And establecerá los requisitos de autenticación y seguridad necesarios para proteger la información de los usuarios.

    Scenario: Selección de la tecnología para la API
        Given que el usuario developer está diseñando la API para gestionar usuarios en nuestra aplicación web
        When elija la tecnología para implementar la API REST
        Then considerará los requisitos de la aplicación y las preferencias del equipo de desarrollo para tomar una decisión informada.

    Scenario: Obtener información del usuario
        Given que el endpoint "/usuarios" está disponible
        When se envía una solicitud GET con el identificador del usuario
        Then se recibe una respuesta con estado 200
        And se obtienen los datos del usuario solicitado.

    Scenario: Obtener usuario no disponible
        Given que el endpoint "/usuarios" está disponible
        When se envía una solicitud GET con un identificador de usuario que no existe
        Then se recibe una respuesta con estado 404
        And se muestra un mensaje que indica "No existe un usuario con este identificador".

    Scenario: Registro de un nuevo usuario
        Given que el endpoint "/usuarios" está disponible
        When se envía una solicitud POST con los detalles del usuario
        Then se recibe una respuesta con estado 201
        And se incluye un usuario con un nuevo ID y los detalles registrados.

    Scenario: Registro de un usuario ya existente
        Given que el endpoint "/usuarios" está disponible
        When se envía una solicitud POST con los datos del usuario
        And ya existe un usuario registrado con esos datos
        Then se recibe una respuesta con estado 400
        And se muestra un mensaje que indica "Un usuario con estos datos ya existe".

    Scenario: Actualizar un usuario existente
        Given que el endpoint "/usuarios" está disponible
        When se envía una solicitud PUT con el id de un usuario
        And ya existe un usuario registrado con ese id
        Then se recibe una respuesta con estado 202
        And se muestra un mensaje que indica "Los datos del usuario han sido actualizados satisfactoriamente".

    Scenario: Actualizar un usuario no existente
        Given que el endpoint "/usuarios" está disponible
        When se envía una solicitud PUT con el id de un usuario
        And no existe un usuario registrado con ese id
        Then se recibe una respuesta con estado 400
        And se muestra un mensaje que indica "No existe ese usuario".

    Scenario: Eliminar un usuario existente
        Given que el endpoint "/usuarios" está disponible
        When se envía una solicitud DELETE con el id de un usuario
        And ya existe un usuario registrado con ese id
        Then se recibe una respuesta con estado 202
        And se muestra un mensaje que indica "Se borró al usuario satisfactoriamente".

    Scenario: Eliminar un usuario no existente
        Given que el endpoint "/usuarios" está disponible
        When se envía una solicitud DELETE con el id de un usuario
        And no existe un usuario registrado con ese id
        Then se recibe una respuesta con estado 400
        And se muestra un mensaje que indica "No existe ese usuario".
