Feature: US-08: Ver mis intercambios completados y brindar reseñas

    Como usuario intercambiador,
    Quiero ver mis intercambios completados y dejar una reseña sobre mi experiencia con el intercambiador,
    Para que otros usuarios puedan leer y considerar mi opinión antes de intercambiar.

    Scenario: Ver mis Intercambios Completados
        Given que el usuario ha completado varios intercambios,
        When visita la sección de “Intercambios Completados” en su perfil,
        Then el usuario ve una lista de todos sus intercambios completados, incluyendo detalles del artículo intercambiado, el usuario con quien intercambió, y la fecha del intercambio.

    Scenario: Dejar una Reseña
        Given que el usuario ha completado un intercambio con otro usuario,
        When visita la sección de “Intercambios Completados” en su perfil y selecciona un intercambio específico,
        Then el usuario encuentra una opción para dejar una reseña sobre su experiencia con el intercambiador, incluyendo la puntuación y un comentario.
    
    Scenario: Ver las Reseñas Realizadas sobre mi Persona
        Given que otros usuarios han dejado reseñas sobre el usuario,
        When el usuario visita la sección de “Reseñas” en su perfil,
        Then el usuario puede ver una lista de todas las reseñas realizadas sobre él, incluyendo la puntuación, el comentario y la fecha de la reseña.
