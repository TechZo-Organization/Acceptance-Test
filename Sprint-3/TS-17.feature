Feature: TS-17: Put Product

    Como usuario developer de la aplicación Cambiazo,
    Quiero implementar una API que permita a los usuarios editar sus productos,
    Para que puedan editar la información de los productos que subieron.

    Scenario: Editar un producto
        Given que el endpoint “/products” está disponible,
        When se envía una solicitud PUT con los detalles del producto y el usuario asociado,
        Then se recibe una respuesta con estado 203,
        And se editarán los detalles previamente registrados del producto.
