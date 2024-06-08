Feature: US-16: Sección de productos encontrados favoritos

    Como usuario de la aplicación,
    Quiero poder tener una sección de productos encontrados favoritos
    Para poder acceder rápidamente a ellos o eliminarlos de esa sección.

    Scenario: Adición de un producto a favoritos
        Given que el usuario ha encontrado un producto que le interesa,
        When el usuario selecciona la opción de agregar a favoritos desde la interfaz de la aplicación,
        Then el sistema añadirá el producto a la sección de favoritos del usuario.

    Scenario: Eliminación de un producto de favoritos
        Given que el usuario tiene productos en su sección de favoritos,
        When el usuario selecciona la opción de eliminar un producto de favoritos,
        Then el sistema quitará el producto seleccionado de la sección de favoritos del usuario.
    
    Scenario: Visualización de productos favoritos
        Given que el usuario ha agregado productos a su sección de favoritos,
        When el usuario accede a su perfil y navega a la sección de Favoritos,
        Then el sistema mostrará una lista de todos los productos que el usuario ha marcado como favoritos.