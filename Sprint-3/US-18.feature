Feature: US-18 - Ponerse en contacto para pactar el intercambio

    Como usuario,
    Quiero tener la posibilidad de contactar directamente con el creador de una publicación de intercambio
    Para poder tener una comunicación más directa.

    Scenario: Contactar con el vendedor por un chat de WhatsApp o Telegram
        Dado que el usuario se encuentra en la publicación de su interés
        When le da click al botón de WhatsApp o Telegram que aparecerá en la parte lateral de la publicación
        Then se le redireccionará a una pestaña de WhatsApp y/o Telegram con un mensaje predeterminado para enviar
        And podrá ponerse en contacto de manera directa con el intercambiador.

    Scenario: Verificar la información del vendedor en caso de no contar con un número de contacto registrado
        Dado que el usuario se encuentra en la publicación de su interés
        And no logra encontrar algún botón para ser redireccionado a un chat privado con el intercambiador
        Then podrá verificar su información personal en los detalles de la publicación
        And así poder saber su correo electrónico y/o redes sociales.

    Scenario: Escribir un comentario en la publicación para obtener información adicional pertinente
        Dado que el usuario se encuentra en la publicación de su interés
        And no logra contactar por ningún medio al autor de la publicación
        Then podrá dirigirse a la sección de comentarios para escribir directamente en la página al usuario sobre ciertos detalles o métodos de contacto.
