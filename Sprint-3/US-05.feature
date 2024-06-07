Feature: US-05: Cerrar Sesión

    Como usuario registrado,
    Quiero cerrar sesión en la aplicación
    Para asegurarme de que mi cuenta no quede almacenada en mi dispositivo móvil.

    Scenario: Acceso del usuario a la configuración de la cuenta
        Given que el usuario ha iniciado sesión en la aplicación
        When acceda a la sección de configuración de la cuenta
        Then la aplicación mostrará la opción para cerrar sesión.

    Scenario: Cierre de sesión exitoso por parte del usuario
        Given que el usuario se encuentra en la página de cierre de sesión
        When seleccione el botón “Cerrar Sesión”
        Then la aplicación concluirá la sesión del usuario y lo redirigirá a la página de inicio de sesión.