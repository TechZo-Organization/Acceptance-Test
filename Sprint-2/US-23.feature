Feature: US-23: Acceder al centro de soporte para resolver cualquier problema técnico que se presente

    Como usuario de CambiaZo,
    quiero tener la opción de acceder a un centro de soporte
    para reportar y resolver mis problemas técnicos.

    Scenario: Acceso a configuración
        Given que me encuentro en la pestaña principal
        When me desplace hacia el footer de la página
        Then se mostrará el apartado de configuración con sus opciones disponibles.

    Scenario: Ingresar al “Centro de ayuda”
        Given que me encuentro en el footer de la página
        When de click a la opción “Ayuda”
        Then seré redirigido al centro de ayuda.

    Scenario: Problemas técnicos
        Given que me encuentro en la sección de “Ayuda”
        When le de click en “Problemas técnicos”
        Then se mostrará una lista con los problemas técnicos más frecuentes y sus soluciones.

    Scenario: Chatear con soporte
        Given que me encuentro en la sección de “Ayuda”
        When le de click en “Chatear con soporte”
        Then se mostrará un formulario en el cual podemos enviar nuestro problema para chatear con soporte.
