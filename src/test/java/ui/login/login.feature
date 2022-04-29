Feature: Login

  Background:
    Given configure driver = { type: 'chrome', showDriverLog: true }

  Scenario: Login and logout
    Given driver appUrlBase + '/login'
    And input('input[name=username]', 'user')
    And input('input[name=password]', 'password')
    When click('{}Log in')
    Then waitUntil("document.readyState == 'complete'")
    And assert exists('{}Log out')

    # Logout
    When click('{}Log out')
    Then waitForUrl("/logout")
