Feature: US-28: Acceder a la página principal de CambiaZo

    Como usuario visitante,
    quiero encontrar botones o enlaces claramente visibles que me dirijan a la página web principal de Cambiazo,
    para poder realizar acciones como registrarme, intercambiar o donar artículos una vez que haya obtenido la información necesaria en la landing page.

    Scenario: Identificación de botones o enlaces
        Given que el usuario está en la landing page de Cambiazo,
        When busque acceder a la página principal de la plataforma,
        Then encontrará botones o enlaces fácilmente identificables que lo dirijan a la página principal.

    Scenario: Redirección rápida y sin problemas
        Given que el usuario se dirige a un botón o enlace de acceso a la página principal,
        When el usuario le de clic al botón,
        Then el usuario será redirigido de manera rápida
        And sin problemas a la página principal de Cambiazo.