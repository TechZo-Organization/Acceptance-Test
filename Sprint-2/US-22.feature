Feature: US-22: Visualizar el perfil de las ONG'S registradas

    Como usuario de la aplicación,
    quiero tener la opción de ver todas las ONG's disponibles
    para realizar donaciones.

    Scenario: Acceso a la pestaña de ONG's
        Given que el usuario se encuentra en la pestaña principal
        When le de click a la etiqueta “ONG's”
        Then se mostrarán todas las ONG's registradas dentro de la aplicación.

    Scenario: Ver perfil de una ONG
        Given que el usuario se encuentra dentro de la pestaña “ONG'S”
        When le de click al recuadro que muestra el perfil de la ONG que desea visualizar
        Then aparecerán los datos y características de la ONG seleccionada.

    Scenario: Donar a una ONG
        Given que el usuario se encuentra en el perfil de la ONG seleccionada
        When le de click a la opción “Donar”
        Then aparecerán las opciones de donación (objetos o dinero)
        And el usuario podrá seleccionar la opción que desea donar
        And realizar la donación.
