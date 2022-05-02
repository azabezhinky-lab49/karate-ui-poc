
  Feature: Various event tests

  Background:
    * configure driver = { type: 'chrome' }

  Scenario: OnFocus event
    Given driver herokuAppTestPagesUrl + '/events/javascript-events.html'
    When focus('#onfocus')
    Then match text('#onfocusstatus') == 'Event Triggered'

  Scenario: OnBlur event
    Given driver herokuAppTestPagesUrl + '/events/javascript-events.html'
    When focus('#onblur')
    Then focus('#onfocus')
    Then match text('#onblurstatus') == 'Event Triggered'

  Scenario: OnContextMenu event
    Given driver herokuAppTestPagesUrl + '/events/javascript-events.html'
    When waitFor('#oncontextmenu').script("_.dispatchEvent(new Event('contextmenu'))")
    Then match text('#oncontextmenustatus') == 'Event Triggered'

  Scenario: OnClick event
    Given driver herokuAppTestPagesUrl + '/events/javascript-events.html'
    And mouse().move('#onclick').click()
    And delay(1000)
    Then match text('#onclickstatus') == 'Event Triggered'

  Scenario: OnMouseOver event
    Given driver herokuAppTestPagesUrl + '/events/javascript-events.html'
    When scroll('#onmouseover')
    And delay(1000)
    # `mouse().move('#onmouseover').go()` command chain doesn't work but the event triggering works properly
    And waitFor('#onmouseover').script("_.dispatchEvent(new MouseEvent('mouseover'))")
    Then match text('#onmouseoverstatus') == 'Event Triggered'
    And delay(1000)

  Scenario: OnKeyPress event
    Given driver herokuAppTestPagesUrl + '/events/javascript-events.html'
    When scroll('#onkeypress')
    And delay(1000)
    And waitFor('#onkeypress').script("_.dispatchEvent(new Event('keypress'))")
    Then match text('#onkeypressstatus') == 'Event Triggered'
    And delay(1000)
