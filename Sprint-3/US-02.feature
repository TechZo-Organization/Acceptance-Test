Feature: US-02: Editar perfil del usuario

    Como usuario ya registrado
    Quiero realizar modificaciones en mi perfil
    Para asegurarme de que mi información esté siempre actualizada.

    Scenario: Acceso del usuario a “Mi perfil”
        Given que el usuario está registrado en la aplicación,
        When acceda a su perfil,
        Then el sistema presentará la página “Mi perfil”.

    Scenario: El usuario elige editar su perfil
        Given que el usuario se encuentra en la página “Mi perfil” con los datos personales visibles,
        When seleccione el botón “Editar perfil”,
        Then el sistema mostrará la página de edición de perfil.

    Scenario: Actualización exitosa de los datos del perfil del usuario
        Given que el usuario se encuentra en la página de edición de perfil con los datos personales visibles,
        When introduzca sus nuevos datos
        And seleccione el botón “Guardar cambios”,
        Then el sistema actualizará la información del perfil del usuario con los nuevos datos ingresados.

    Scenario: Actualización de los datos del perfil del usuario con información inválida o incompleta
        Given que el usuario se encuentra en la página de edición de perfil con los datos personales visibles,
        When ingrese datos incompletos o inválidos
        And seleccione el botón “Guardar cambios”,
        Then la aplicación mostrará un mensaje de “Error”
        And borrará los datos ingresados.