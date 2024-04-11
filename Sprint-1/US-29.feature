Feature: US-29: Ver los planes y precios

    Como usuario visitante,
    quiero tener acceso a una sección que detalle los planes ofrecidos por la plataforma,
    para poder evaluar las opciones disponibles antes de acceder a la página web principal.

    Scenario: Acceso a la sección de planes y servicios
        Given que el usuario visita la landing page de Cambiazo,
        When busque información sobre los planes y servicios ofrecidos por la plataforma,
        Then encontrará una sección dedicada que detalle estos aspectos.

    Scenario: Comparación de planes
        Given que el usuario revisa la información sobre los planes ofrecidos,
        When busque tomar una decisión informada,
        Then encontrará que puede comparar fácilmente los diferentes planes para evaluar cuál se ajusta mejor a sus necesidades.