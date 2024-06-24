Feature: US-11 - Gestionar ofertas de intercambio enviadas y recibidas

    Como usuario de la aplicación,
    Quiero poder ver las ofertas de intercambio que he enviado y recibido
    Para poder aceptarlas o declinarlas.

    Scenario: Visualización de ofertas de intercambio enviadas
        Given que el usuario ha realizado ofertas de intercambio en varios productos
        When el usuario accede a su perfil y navega a la sección de ofertas enviadas
        Then el sistema mostrará una lista de todas las ofertas de intercambio que el usuario ha enviado, incluyendo el estado de cada oferta (pendiente, aceptada, declinada).

    Scenario: Visualización de ofertas de intercambio recibidas
        Given que el usuario ha recibido ofertas de intercambio en sus productos publicados
        When el usuario accede a su perfil y navega a la sección de ofertas recibidas
        Then el sistema mostrará una lista de todas las ofertas de intercambio que el usuario ha recibido, incluyendo los detalles de cada oferta.

    Scenario: Aceptar una oferta de intercambio recibida
        Given que el usuario ha recibido una oferta de intercambio en uno de sus productos
        When el usuario revisa una oferta en la sección de ofertas recibidas
        And decide aceptarla
        Then el sistema notificará al ofertante de la aceptación.

    Scenario: Declinar una oferta de intercambio recibida
        Given que el usuario ha recibido una oferta de intercambio en uno de sus productos
        When el usuario revisa una oferta en la sección de ofertas recibidas
        And decide declinarla
        Then el sistema mostrará una confirmación de declinación y notificará al ofertante de la declinación.
