Feature: US-20: Adquirir la suscripción premium

    Como usuario,
    Quiero poder adquirir una suscripción premium
    Para poder obtener beneficios adicionales que mejoren mi experiencia.

    Scenario: Localizar la sección para adquirir una suscripción.
        Given que el usuario desea adquirir una suscripción para CambiaZo
        When le de click a la sección de configuración
        Then le aparecerán varias opciones, entre las que figura “Ser premium”

    Scenario: Visualizar los beneficios de la suscripción.
        Given que el usuario se encuentra en la ventana correspondiente sobre las suscripciones,
        When le de click a una en específico
        Then podrá ver el precio por mes de cada una de ellas
        And los beneficios que incluyen cada una de estas.
    
    Scenario: Compra de la suscripción.
        Given que el usuario ha decidido una suscripción de su interés,
        When le de click a “Suscribirse”
        Then le redireccionará a una pasarela de pago para que pueda introducir su método de pago
        And procesar el pago respectivo y adquirir los nuevos beneficios.
