@HU-BAN-005
Feature: Borrar un personaje con un ID inválido
  Background:
    * configure ssl = true
    * def baseUrl = 'http://bp-se-test-cabcd9b246a5.herokuapp.com/testuser/api/characters'

  Scenario: Verificar que la API no elimina un personaje con un ID inválido
    * url baseUrl
    * def characterId = 9999
    * url baseUrl + '/' + characterId
    When method delete
    Then status 404
    * print 'Response:', response
