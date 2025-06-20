@HU-BAN-002
Feature: Crear un personaje con nombre duplicado

  Background:
    * configure ssl = true
    * def baseUrl = 'http://bp-se-test-cabcd9b246a5.herokuapp.com/testuser/api/characters'
    * headers { 'Content-Type': 'application/json' }


  Scenario: Verificar que la API no puede crear un personaje con un nombre duplicado
    * def newCharacter =
      """
      {"name": "Accelerator",
        "alterego": "Emiya Shirou",
        "description": "King of Babylon, and friend of Enkidou",
        "powers": ["Full Attack", "Unlimited Blades", "Final Hit"]
      }
      """
    Given url baseUrl
    And request newCharacter
    When method post
    Then status 400
    And match response.error == 'Character name already exists'


