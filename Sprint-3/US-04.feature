Feature: US-04: Cambiar Contraseña

    Como usuario registrado, 
    Quiero realizar cambios en la contraseña de mi cuenta 
    Para reforzar la seguridad de mi cuenta.

    Scenario: Acceso del usuario a la configuración de la cuenta
        Given que el usuario ha iniciado sesión en la aplicación
        When acceda a la sección de configuración de la cuenta
        Then la aplicación mostrará la opción para modificar la contraseña.

    Scenario: Cambio exitoso de la contraseña
        Given que el usuario está en la página de cambio de contraseña
        When ingrese su contraseña actual y la nueva contraseña dos veces
        And haga clic en el botón “Cambiar Contraseña”
        Then la aplicación ejecutará el cambio de contraseña
        And mostrará un mensaje de confirmación.

    Scenario: Intento de cambio de contraseña fallido
        Given que el usuario se encuentre en la página de cambio de contraseña
        When ingrese una contraseña actual incorrecta o incompleta, seguida de la nueva contraseña dos veces
        And haga clic en el botón “Cambiar Contraseña”
        Then la aplicación mostrará un mensaje de error indicando que la contraseña actual es incorrecta.