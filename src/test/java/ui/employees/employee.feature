Feature: Authentication

  Background:
    * configure driver = { type: 'chrome', showDriverLog: false }

  Scenario: Authenticate
    And url appUrlBase
    And path 'login'
    And form field username = 'user'
    And form field password = 'password'
    When method post
    Then status 200

  Scenario: List of employees
    And url appUrlBase
    And path 'login'
    And form field username = 'user'
    And form field password = 'password'
    When method post
    Then status 200
    And def sessionId = responseCookies['JSESSIONID']
    And print sessionId

    Given driver 'about:blank'
    And cookie({ name: 'JSESSIONID', value: sessionId.value, domain: 'localhost' })

    And driver appUrlBase
    When click('{}Add Employee')
    And print html('{}Save')
    And assert exists('{}Save')
