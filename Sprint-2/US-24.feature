Feature: US-24: Acceder dentro de la aplicación a la sección de preguntas frecuentes y comentarios

    Como usuario de Cambiazo,
    quiero ver las preguntas frecuentes que tienen los demás usuarios y su opinión al usar la aplicación
    para poder ver si tienen mis mismas dudas y ver qué opinan de la aplicación.

    Scenario: Acceso a configuración
        Given que me encuentro en la pantalla principal de la aplicación
        When le de click a la sección de configuración
        Then se mostrará el apartado con los botones de configuración.

    Scenario: Ingresar a la sección “Preguntas frecuentes”
        Given que me encuentro en la sección de configuración de la aplicación
        When de click en la sección de “Preguntas frecuentes”
        Then se mostrará un apartado con las preguntas más frecuentes realizadas por los usuarios de la aplicación y sus respectivas respuestas.

    Scenario: Comentarios de CambiaZo
        Given que me encuentro en la sección de configuración de la aplicación
        When de click en la sección de “Comentarios de CambiaZo”
        Then se mostrará un apartado con los comentarios realizados por los usuarios de la aplicación, enseñando los comentarios más recientes.
