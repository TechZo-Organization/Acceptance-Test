Feature: TS-16: Delete Product

    Como usuario developer de la aplicación Cambiazo,
    Quiero implementar una API que permita a los usuarios borrar sus productos,
    Para que puedan eliminar los productos que subieron por error.

    Scenario: Eliminar un producto
        Given que el endpoint “/products” está disponible,
        When  se envía una solicitud DELETE con los detalles del producto y el usuario asociado,
        Then se recibe una respuesta con estado 202,
        And se elimina el producto con su ID y los detalles registrados.
