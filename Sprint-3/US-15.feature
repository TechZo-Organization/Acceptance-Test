Feature: US-15: Destacar publicación de intercambio

    Como usuario,
    Quiero poder resaltar una publicación de intercambio
    Para aumentar su visibilidad entre otros usuarios.

    Scenario: Acceso a la opción de destacar una publicación de intercambio
        Given que el usuario ha iniciado sesión en la aplicación
        And tiene una publicación de intercambio existente,
        When accede a la opción de destacar la publicación desde la interfaz de la aplicación,
        Then el sistema le presenta la opción de resaltar la publicación mediante una función identificada como “Boost”,
        And indica que esta función está disponible para usuarios premium o mediante la compra de un servicio adicional.

    Scenario: Confirmación de destacar la publicación con membresía premium
        Given que el usuario ha seleccionado destacar una publicación de intercambio
        And tiene una membresía premium activa,
        When confirma la acción de destacar,
        Then el sistema resalta la publicación
        And le da mayor visibilidad dentro de la plataforma.
    
    Scenario: Confirmación de destacar la publicación con compra de boost
        Given que el usuario ha seleccionado destacar una publicación de intercambio
        And no tiene membresía premium,
        When decide comprar un boost para destacar la publicación,
        Then el sistema resalta la publicación temporalmente
        And le da mayor visibilidad dentro de la plataforma durante el período de tiempo especificado por el boost adquirido.