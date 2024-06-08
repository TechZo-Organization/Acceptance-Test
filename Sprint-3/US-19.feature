Feature: US-19: Acceso a la información detallada de ONG’s en específico

    Como usuario,
    Quiero acceder a información detallada sobre una ONG
    Para poder conocerla y hacer donaciones.

    Scenario: Ver información detallada de la ONG
        Given que el usuario quiere información sobre la ONG
        When se encuentre en el perfil de la ONG correspondiente.
        Then la aplicación web le mostrará información “Acerca de nosotros” , “Misión y Visión”, “Formas de apoyo” , “Categoría”, “Dirección”,  el logo y nombre de la ONG.

    Scenario: Ver información propia de la ONG
        Given que el usuario quiere conocer sobre la ONG en sus cuentas y páginas oficiales
        When se encuentre en el perfil correspondiente de la ONG y seleccione los botones de sus redes sociales como “Facebook” , “Twitter” o “Visitar sitio web”.
        Then la aplicación redireccionará al usuario a la red social o sitios web correspondiente de la ONG.
    
    Scenario: Ver información de contacto
        Given que el usuario quiere contactarse físicamente con una ONG.
        When se encuentre en el perfil correspondiente de la ONG,
        Then el usuario podrá ver el “Numero de contacto”, “Correo electrónico” y “Horario de atención”.

    Scenario: Realizar donacionaciones
        Given que el quiere realizar una donación a una ONG
        When se encuentre en el perfil correspondiente de la ONG y ve la información en “Número de Cuenta Bancaria”
        Then el usuario podrá realizar donaciones a la cuenta de su preferencia.