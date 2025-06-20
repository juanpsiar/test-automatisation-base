@HU-BAN-007
Feature: Obtener un personaje por ID específico
  Background:
    * configure ssl = true
    * def baseUrl = 'http://bp-se-test-cabcd9b246a5.herokuapp.com/testuser/api/characters'

Scenario: Verificar que la API obtiene un personaje específico con un ID válido 263, 211, 274, 287
  * url baseUrl
  * def characterId = 287
  * url baseUrl + '/' + characterId
  When method get
  * print 'Response:', response.length
  Then status 200
  And match response.id == characterId