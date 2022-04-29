
  Feature: Alert tests

  Background:
    * configure driver = { type: 'chrome' }

  Scenario: JavaScript alert
    Given driver herokuAppTestPagesUrl + '/alerts/alert-test.html'
    And delay(1000)
    When click('#alertexamples')
    And delay(1000)
    Then match driver.dialogText == 'I am an alert box!'
    And dialog(false)
    And delay(1000)

  Scenario: JavaScript prompt box
    Given driver herokuAppTestPagesUrl + '/alerts/alert-test.html'
    And delay(1000)
    When click("input[value = 'Show prompt box']")
    And delay(1000)
    Then match driver.dialogText == 'I prompt you'
    And dialog(true, 'some new text')
    And delay(1000)

  Scenario: Div modal
    Given driver herokuAppTestPagesUrl + '/alerts/fake-alert-test.html'
    And delay(1000)
    When click('#modaldialog')
    And delay(1000)
    Then click('{button}OK')
    And delay(1000)
