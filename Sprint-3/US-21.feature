Feature: US-21: Gestionar mi suscripción

    Como usuario,
    Quiero gestionar mi suscripción
    Para poder cancelar el servicio cuando ya no lo necesite.

    Scenario: Verificación de los detalles de la suscripción
        Given que el usuario desea revisar los detalles de su suscripción,
        When acceda a la configuración de su perfil mediante el botón “Editar perfil”,
        Then podrá visualizar la fecha de renovación de su suscripción, el tipo de plan y su precio mensual.

    Scenario: Cambio de suscripción
        Given que el usuario desea cambiar su suscripción y se encuentra en la configuración de su perfil,
        When seleccione el botón “Cambiar suscripción”,
        Then será redirigido a la sección “Membresías” para realizar el cambio.
    
    Scenario: Anulación de suscripción
        Given que el usuario desea anular su suscripción y se encuentra en la configuración de su perfil,
        When seleccione el botón “Anular suscripción”,
        Then la aplicación le mostrará una ventana de confirmación con el mensaje “¿Estás seguro de que deseas anular tu suscripción?”
    
    Scenario: Confirmación de anulación
        Given que el usuario ha decidido no continuar con la suscripción de CambiaZo,
        When esté en la ventana de confirmación de anulación y haga clic en el botón amarillo que dice “Confirmar”,
        Then se procederá a cancelar la suscripción, la cual no se renovará en la próxima fecha de renovación.

    Scenario: Cancelación de la anulación
        Given que el usuario ha iniciado el proceso para anular su suscripción,
        When esté en la ventana de confirmación y haga clic en el botón “Cancelar”,
        Then se cerrará la ventana de confirmación y la suscripción del usuario seguirá activa.