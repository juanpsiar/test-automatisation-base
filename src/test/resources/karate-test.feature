Feature: Test de API súper simple

  Background:
    * configure ssl = true
    * def baseUrl = 'http://bp-se-test-cabcd9b246a5.herokuapp.com/testuser/api/characters'

  Scenario: Verificar que un endpoint público responde 200
    * url baseUrl
    When method get
    Then status 200

  Scenario: Verificar que la API obtiene todos los personajes
    * url baseUrl
    When method get
    * print 'Response:', response.length
    Then status 200
    Then response.length > 0


  Scenario: Verificar que la API obtiene un personaje específico con un ID válido
    * url baseUrl
    * def characterId = 4
    * url baseUrl + '/' + characterId
    When method get
    * print 'Response:', response.length
    Then status 200
    And match response.id == 4
