
  Feature: Form populated dynamically

  Background:
    * configure driver = { type: 'chrome' }

  Scenario: Dropdown list (HTML select) with async population
    Given driver herokuAppTestPagesUrl + '/basic-ajax-test.html'
    And delay(1000)
    When select('select[name=id]', '{}Server')
    Then waitFor("//select[@name='language_id']/option[normalize-space(text())='C++']")
    And select('select[name=language_id]', '{}C++')
    And delay(1000)
    Then click("input[value='Code In It']")
    And delay(1000)
    Then match text('h1') contains 'Processed Form Details'
