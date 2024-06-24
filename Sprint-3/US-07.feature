Feature: US-07 - Filtrado de ONGs

    Como usuario Donante
    Quiero la capacidad de filtrar las ONGs disponibles de donación
    Para encontrar la opción que mejor se adapte a los objetos que tengo para donar

    Scenario: Aplicación de Filtros
        Given que el usuario donante está en la sección de ONGs disponibles para donación
        When el usuario selecciona filtros específicos, como categoría o rubro de la organización y localización de la misma
        And presiona el botón de "Filtrar"
        Then la lista de ONGs se ajustará automáticamente según los criterios seleccionados.

    Scenario: Visualización de Resultados Filtrados
        Given que el usuario donante ha aplicado filtros por categoría y ubicación a la lista de ONGs disponibles
        When la aplicación muestra únicamente las ONGs que aceptan objetos de la categoría y se encuentran en la ubicación seleccionada
        Then el usuario puede ver y explorar los resultados filtrados según sus preferencias.
