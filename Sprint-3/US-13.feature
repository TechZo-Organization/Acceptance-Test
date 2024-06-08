Feature: US-13: Editar publicación de intercambio

    Como usuario,
    Quiero la capacidad de editar una publicación de intercambio existente
    Para realizar cambios en los detalles del artículo o actualizar la información relevante.

    Scenario: Acceso a la edición de una publicación de intercambio
        Given que el usuario ha iniciado sesión en la aplicación
        And tiene una publicación de intercambio existente,
        When el usuario hace click a la opción de editar la publicación desde la interfaz de la aplicación,
        Then el sistema redirige a un formulario pre rellenado con los detalles actuales de la publicación para realizar cambios
        And dos botones “Cancelar” y “Publicar”

    Scenario: Edición de la publicación de intercambio confirmada
        Given que el usuario está en el formulario de edición de la publicación de intercambio,
        When el usuario realiza cambios en los detalles del artículo que desea intercambiar, como título, descripción, categoría, condición del artículo u otra información relevante,
        And le da al botón de “Publicar”,
        Then el sistema guardará los cambios realizados en la publicación
        And la hará visible para todos los usuarios.
    
    Scenario: Edición de la publicación de intercambio cancelada
        Given que el usuario está en el formulario de edición de la publicación de intercambio,
        When el usuario realiza cambios en los detalles del artículo que desea intercambiar, como título, descripción, categoría, condición del artículo u otra información relevante,
        And le da al botón de “Cancelar”
        Then el sistema redirige al usuario al inicio de la aplicación.