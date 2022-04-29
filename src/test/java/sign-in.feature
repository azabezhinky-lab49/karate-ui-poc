@ignore
Feature: Sign in process

  Background:
    * configure driver = { type: 'chrome', showDriverLog: false }

  Scenario:
    Given url appUrl
    And path 'login'
    And form field username = username
    And form field password = password
    When method post
    Then status 200
    And def sessionId = responseCookies['JSESSIONID']
    And print sessionId

    When driver 'about:blank'
    Then cookie({ name: 'JSESSIONID', value: sessionId.value, domain: 'localhost' })
