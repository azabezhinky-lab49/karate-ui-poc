
Feature: Drag and drop test

  Background:
    * configure driver = { type: 'chrome' }

  Scenario: Drag and drop
    Given driver herokuAppTestPagesUrl + '/drag-drop-javascript.html'
    When delay(1000)
    And mouse().move('#draggable1').down().move('#droppable1').up()
    Then delay(1000)
    And match optional('{}Dropped!').present == true
