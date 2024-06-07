Feature: US-10: Actualización de Correo Electrónico

    Como usuario,
    Quiero actualizar mi dirección de correo electrónico en mi perfil
    Para asegurarme de que recibo notificaciones e información relevante

    Scenario: Acceso a la Configuración de Perfil
        Given que el usuario está autenticado en la aplicación,
        When desea actualizar su dirección de correo electrónico,
        Then accede a la sección de configuración de perfil.

    Scenario: Edición de la Dirección de Correo Electrónico
        Given que el usuario está en la sección de configuración de perfil,
        When selecciona la opción para editar su dirección de correo electrónico,
        Then la aplicación le permite ingresar la nueva dirección de correo electrónico.
    
    Scenario: Verificación del Nuevo Correo Electrónico
        Given que el usuario ha ingresado la nueva dirección de correo electrónico,
        When confirma la actualización de su dirección de correo electrónico,
        Then la aplicación envía un correo electrónico de verificación a la nueva dirección proporcionada.
    
    Scenario: Confirmación de Verificación
        Given que el usuario ha recibido el correo electrónico de verificación,
        When hace clic en el enlace de verificación dentro del correo electrónico,
        Then la aplicación verifica la nueva dirección de correo electrónico
        And confirma la actualización en el perfil del usuario.
