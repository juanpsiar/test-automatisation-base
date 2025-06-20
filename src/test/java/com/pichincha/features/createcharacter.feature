@HU-BAN-001
Feature: Crear un personaje nuevo

  Background:
    * configure ssl = true
    * def baseUrl = 'http://bp-se-test-cabcd9b246a5.herokuapp.com/testuser/api/characters'
    * headers { 'Content-Type': 'application/json' }


  Scenario: Verificar que la API crea un personaje nuevo
    * def newCharacter =
      """
      {"name": "Accelerator",
        "alterego": "Kamiyou Touma",
        "description": "King of Babylon, and friend of Enkidou",
        "powers": ["Full Attack", "Unlimited Blades", "Final Hit"]
      }
      """
    Given url baseUrl
    And request newCharacter
    When method post
    Then status 201
    And match response.name == 'Accelerator'


