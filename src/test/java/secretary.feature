Feature: Secretary DEMO Test

  #NOT PUBLIC
  Scenario: Get/history/{historyId}
    Given url 'http://127.0.0.1:8000/api/v1/'
    When method GET
    #função para retornar historyid
    Then status 200
    And print response

  #NOT PUBLIC
  Scenario: Get/class/{classId}
    Given url 'http://127.0.0.1:8000/api/v1/'
    When method GET
    #função para retornar classid
    Then status 200
    And print response

  Scenario: Get/course
    Given url 'http://127.0.0.1:8000/api/v1/public/course'
    When method GET
    Then status 200
    And form field courseId = '#number'
    And form field name = '#string'
    And form field period = '#number'
    And form field beggining = '#notnull'
    And form field coordinator = '#string'
    And form field maxStudentsPerPeriod = '#number'
    And form field enrollmentOpen = '#boolean'
    And print response


  Scenario: Get/course/{courseId}
    Given url 'http://127.0.0.1:8000/api/v1/public/course/'
    Given param courseID = 'afded52a-c26c-4e82-8bcd-d906df2e7263'
    When method GET
    And request {courseId: '#number'}
    Then status 404 #200
    And form field courseId = '#number'
    And form field name = '#string'
    And form field period = '#number'
    And form field beggining = '#notnull'
    And form field coordinator = '#string'
    And form field maxStudentsPerPeriod = '#number'
    And form field enrollmentOpen = '#boolean'
    
  #NOT PUBLIC
  Scenario: /class
    Given url 'http://127.0.0.1:8000/api/v1/'
    And request { "classId": "0"}
    When method post
    Then status 201
    

  Scenario: /subject/{subjectId}/requeriment
    Given url 'http://127.0.0.1:8000/api/v1/subject'
    And request { "subjectId": 0, "requirementType": "SubjectDependenceID1", "quantity": 0}
    When method post
    Then status 404 #201


  #NOT PUBLIC
  Scenario: Delete/class/{classID}
    Given url 'http://127.0.0.1:8000/api/v1/'
    When method DELETE
    Then status 204
    And print responseStatus
    And print response