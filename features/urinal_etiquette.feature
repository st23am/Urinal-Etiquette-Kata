Feature: Urinal Etiquette @wip
  As a dude or interested party
  In order to not be unconfortable
  I need to be able to be able to figure out which if any urinal to use

Background:
    Given there are 6 urinal spots

Scenario: No one else in the place
    When: there is the following situation:
      |U1|U2|U3|U4|U5|U6|Waiting|
      |  |  |  |  |  |  |       |
    Then: the system should display U6

Scenario: Dude in the last Stall
    When: there is the following situation:
      |U1|U2|U3|U4|U5|U6  |Waiting|
      |  |  |  |  |  |Dude|       |
    Then the system should display U1

Scenario: One dude using the first urnial
    When: there is the following situation:
      |U1  |U2|U3|U4|U5|U6|Waiting|
      |Dude|  |  |  |  |  |       |
    Then: the system should display U6

Scenario: Bases Loaded
    When: there is the following situation:
      |U1  |U2  |U3  |U4  |U5  |U6  |Waiting|
      |Dude|Dude|Dude|Dude|Dude|Dude|       |
    Then: the system should display Wait

Scenario: Bases Loaded One on Deck
    When: there is the following situation:
      |U1  |U2  |U3  |U4  |U5  |U6  |Waiting|
      |Dude|Dude|Dude|Dude|Dude|Dude|Dude   |
    Then the system should display Walk

