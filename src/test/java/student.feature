Feature: Student DEMO Test
  #NOT PUBLIC
  Scenario: Get/schedule
    Given url 'http://127.0.0.1:8000/api/v1/public/schedule'
    When method GET
    #função para retornar userid
    Then status 200
    And print response

  #NOT PUBLIC
  Scenario: Get/schedule/{scheduleID}
    Given url 'http://127.0.0.1:8000/api/v1/'
    When method GET
    #função para retornar
    Then status 200
    And print response

  #NOT PUBLIC
  Scenario: Get/requirement
    Given url 'http://127.0.0.1:8000/api/v1/'
    When method GET
    #função para retornar subjectId
    #função para retornar subjectDependenceID
    #função para retornar requirementType
    Then status 200
    And print response
  #NOT PUBLIC
  Scenario: Get/requirement/{requirementId}
    Given url 'http://127.0.0.1:8000/api/v1/'
    When method GET
    #função para retornar requirementid
    Then status 200
    And print response

  Scenario: Get/subject
    Given url 'http://127.0.0.1:8000/api/v1/public/subject'
    When method GET
    #função para retornar subject
    Then status 200
    And print response

  Scenario: Get/subject/id
    Given url 'http://127.0.0.1:8000/api/v1/public/subject/'
    Given param subjectId = '358fb581-0fc2-47b1-9054-a3dc484ff46b'
    When method GET
    #função para retornar subjectid
    Then status 404 #200
    And print response

  Scenario: /student/{studentId}/subscription
    Given url 'http://127.0.0.1:8000/api/v1/'
    And request { "classId": "0"}
    When method post
    Then status 201
