Feature: Creating projects
  In order to have projects to assign tickets to
  As a user
  I want to create them easily

Scenario: Creating a Pledge Duty
  Given I am on the homepage
  When I follow "link"
  Then I am on the projects page
  When I follow "Create New Ticket>>"
  And I fill in "Name" with "Bitch"
  And I fill in "Description" with "Bitch Status"
  And I press "button"
  Then I should see "Project has been created."