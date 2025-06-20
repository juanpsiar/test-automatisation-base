@HU-BAN-006
Feature: Obtener todos los personajes
  Background:
    * configure ssl = true
    * def baseUrl = 'http://bp-se-test-cabcd9b246a5.herokuapp.com/testuser/api/characters'

Scenario: Verificar que la API obtiene todos los personajes
  * url baseUrl
    * url baseUrl
  When method get
  * print 'Response:', response.length
  Then status 200