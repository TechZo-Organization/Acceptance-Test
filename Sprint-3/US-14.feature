Feature: US-14: Eliminar publicación de intercambio

    Como usuario,
    Quiero tener la opción de eliminar una publicación de intercambio
    Para poder eliminar la publicación en caso de haberlo publicado por error.

    Scenario: Acceso a la eliminación de una publicación de intercambio
        Given que el usuario ha iniciado sesión en la aplicación
        And tiene una publicación de intercambio existente,
        When accede a la opción de eliminar la publicación desde la interfaz de la aplicación,
        Then el sistema le muestra una confirmación para confirmar si realmente desea eliminar la publicación.

    Scenario: Confirmación de eliminación
        Given que el usuario ha seleccionado eliminar una publicación de intercambio,
        When confirma la acción de eliminación,
        Then el sistema elimina la publicación de manera permanente de la plataforma y se muestra un mensaje de confirmación al usuario.
    
    Scenario: Cancelación de la eliminación
        Given que el usuario ha seleccionado eliminar una publicación de intercambio,
        When decide cancelar la eliminación,
        Then la publicación no se elimina
        And el sistema redirige al usuario al inicio de la aplicación.