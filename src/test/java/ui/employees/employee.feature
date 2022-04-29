Feature: Authentication test

  Background:
    * call read('classpath:sign-in.feature') { username: 'user', password: 'password' }

  Scenario: List of employees
    Given driver appUrlBase
    Then click('{}Add Employee')
    And print html('{}Save')
    And assert exists('{}Save')
