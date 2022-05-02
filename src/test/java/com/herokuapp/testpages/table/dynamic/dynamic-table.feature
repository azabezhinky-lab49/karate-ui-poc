
  Feature: Table dynamic modification

  Background:
    * configure driver = { type: 'chrome' }

  Scenario: Table with dynamic modification
    Given driver herokuAppTestPagesUrl + '/tag/dynamic-table.html'
    And delay(1000)
    And click('{}Table Data')
    And def data = script(value('#jsondata'))
    And data.push({"name" : "John", "age" : 25})
    And value('#jsondata', JSON.stringify(data))
    And click('{button}Refresh Table')
    And delay(1000)
    And assert exists("//table[@id='dynamictable']/tr/td[normalize-space(text()) = 'John']")
