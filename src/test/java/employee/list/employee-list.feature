Feature: Authentication test

  Background:
    * call read('classpath:sign-in.feature') { username: 'user', password: 'password', appUrl: #(employeeAppUrlBase) }

  Scenario: List of employees
    Given driver employeeAppUrlBase
    Then click('{}Add Employee')
    And print html('{}Save')
    And assert exists('{}Save')
