Feature: US-26: Visualizar las características clave de la aplicación

    Como usuario visitante,
    quiero poder conocer sus características clave
    para saber qué es lo que incluye.

    Scenario: Conocer las secciones principales
        Given que el visitante se encuentra en la landing page
        When se dirige a la sección “Puedes elegir entre…”
        Then la landing page le muestra lo que puede realizar dentro de CambiaZo.

    Scenario: Conocer lo que puede intercambiar
        Given que el visitante se encuentra en la landing page
        When se dirige a la sección “Si decides intercambiar, podrás encontrar una gran variedad de objetos”
        Then la landing page muestra los diferentes tipos de artículos que puede intercambiar con CambiaZo.

    Scenario: Conocer las características principales
        Given que el visitante se encuentra en la landing page
        When se dirige a la sección “En CambiaZo te ofrecemos…”
        Then la landing page le muestra las características principales de CambiaZo.