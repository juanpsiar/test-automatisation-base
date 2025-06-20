@HU-BAN-004
Feature: Borrar un personaje con el ID
  Background:
    * configure ssl = true
    * def baseUrl = 'http://bp-se-test-cabcd9b246a5.herokuapp.com/testuser/api/characters'

  Scenario: Verificar que la API elimina un personaje específico con un ID válido 263, 211, 274,2761
    * url baseUrl
    * def characterId = 2817
    * url baseUrl + '/' + characterId
    When method delete
    Then status 204
