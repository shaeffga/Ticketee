Feature: Creating projects
  In order to have projects to assign tickets to
  As a user
  I want to create them easily

Scenario: Creating a Pledge Duty
  Given I am on the homepage
  When I follow "link"
  Then I am on the projects page
  When I follow "New Project>>"
  And I fill in "Name" with "Bitch"
  And I fill in "Description" with "Bitch"
  And I press "button"
  Then I should see "Pledge Project has been created. GRAB A BEER!"