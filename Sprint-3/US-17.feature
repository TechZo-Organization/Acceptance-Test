Feature: US-17: Visualizar el perfil del usuario que publique un intercambio

    Como usuario,
    Quiero tener la capacidad de visualizar el perfil de la persona que haya publicado un intercambio
    Para poder obtener información detallada de su confiabilidad.

    Scenario: Acceso al perfil del creador de la publicación.
        Given que el usuario se encuentra en la publicación de su interés
        When le de click al recuadro que muestran el perfil del autor de la publicación
        Then el usuario podrá visualizar su nombre completo, tiempo que lleva en la aplicación, la cantidad de intercambios exitosos realizado
        And valoraciones de otros usuarios

    Scenario: Visualizar reseñas de otros usuarios hacia un perfil en específico.
        Given que el usuario se encuentra en el perfil del autor del intercambio
        When Se dirija a la sección llamada “Reseñas”
        Then el usuario podrá visualizar todas las reseñas que dicho autor ha recibido por todas sus publicaciones exitosas
        And datos relevantes sobre el creador de la publicación.
    
    Scenario: Visualizar el tipo de productos que suele intercambiar el usuario.
        Given que el usuario está en el perfil del intercambiador
        When se dirija a la sección “Preferencias”
        Then podrá visualizar la variedad de productos que suele intercambiar el usuario, así cómo también si hace match con las preferencias del usuario interesado.