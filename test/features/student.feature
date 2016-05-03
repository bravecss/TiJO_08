Feature: Text filter

Scenario: Scenario 1
    When I browse to the "/"
    When I enter "app" into "input.search" field
    Then the css element "td:nth-of-type(1)" should contain the text "Gates"
    Then I should see "Gates" in "firstName" column in row "1" of "student.table" table
    When I enter "15" into "input.search" field
    Then the css element "td:nth-of-type(3)" should contain the text "20"
    Then I should see "mandok.john@gmail.com" in "email" column in row "2" of "student.table" table
    When I enter "conte.antonio" into "input.search" field
    Then the css element "td:nth-of-type(5)" should contain the text "+00 (722) 256-1456"
    Then I should see "Antonio" in "lastName" column in row "1" of "student.table" table

Scenario: Scenario 2
    When I browse to the "/"
    When I enter "S" into "input.first" field
    Then the css element "td:nth-of-type(1)" should contain the text "Steve"
    Then I should see "+00 (722) 236-2587" in "phone" column in row "1" of "student.table" table
    When I enter "Mandok" into "input.first" field
    Then the css element "td:nth-of-type(3)" should contain the text "15"
    Then I should see "John" in "lastName" column in row "1" of "student.table" table

Scenario: Scenario 3
    When I browse to the "/"
    When I enter "5" into "input.phone" field
    Then the css element "td:nth-of-type(2)" should contain the text "Wilson"
    Then I should see "Rose" in "lastName" column in row "4" of "student.table" table