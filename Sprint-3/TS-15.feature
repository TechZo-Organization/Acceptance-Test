Feature: TS-15: Post Product

    Como usuario developer de la aplicación Cambiazo,
    Quiero implementar una API que permita a los usuarios publicar sus productos,
    Para que puedan subir sus objetos que ya no utilizan y desean intercambiar.

    Scenario: Creación de un nuevo producto
        Given que el endpoint “/products” está disponible,
        When  se envía una solicitud POST con los detalles de los productos y el usuario asociado,
        Then se recibe una respuesta con estado 201,
        And se registra el producto con un nuevo ID y los detalles registrados.

    Scenario: Producto ya existente
        Given que el endpoint “/products” está disponible,
        When se intenta crear un nuevo producto para un usuario que ya registró este producto,
        Then se recibe una respuesta con estado 400,
        And se muestra un mensaje que indica “El usuario ya registró este producto”.