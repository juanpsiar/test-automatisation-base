Feature: Test de API súper simple

  Background:
    * configure ssl = true
    * def baseUrl = 'http://bp-se-test-cabcd9b246a5.herokuapp.com/testuser/api/characters'

  Scenario: Verificar que un endpoint público responde 200
    * url baseUrl
    When method get
    Then status 200


