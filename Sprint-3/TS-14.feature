Feature: TS-14: Get Product

    Como usuario developer de la aplicación Cambiazo,
    Quiero poder obtener información sobre los productos existentes en la plataforma a través del API,
    Para mostrar esta información a los usuarios y permitirles ver la información completa de los objetos que hay.

    Scenario: Obtener información de productos
        Given que el endpoint “/products” está disponible,
        When se envía una solicitud GET con el identificador del objeto,
        Then se recibe una respuesta con estado 200,
        And se obtienen los detalles del producto solicitado.

    Scenario: Producto no encontrado
        Given que el endpoint “/products” está disponible,
        When se envía una solicitud GET con un identificador de un objeto que no existe,
        Then se recibe una respuesta con estado 404,
        And se muestra un mensaje que indica “No se encontró el objeto solicitado”.