Feature: US-24 - Ofertar un intercambio por un producto

Como usuario de la aplicación,
Quiero poder ofertar un intercambio por un producto que me interese
Para intentar negociar un trueque.

Scenario: Ofertar un intercambio por un producto
    Dado que el usuario está interesado en un producto específico para intercambiar
    When el usuario selecciona la opción "Ofertar" en la página del producto
    Then se le presentará una lista de sus propios productos disponibles para el intercambio.

Scenario: Confirmar una oferta de intercambio
    Dado que el usuario ha seleccionado un producto para ofertar a cambio
    When el usuario confirma la oferta
    Then el sistema registrará la oferta de intercambio y notificará al propietario del producto ofrecido.
