Feature: Manage Categories
  As a blog administrator
  I want to be able to manage categories of my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel
    

  Scenario: Allow administrator to save a new category
    And I am on the categories page
    When I fill in the following:
    | Name        | Computers                                                    |
    | Keywords    | PC, laptop, notebook, netbook, MAC                           |
    | Description | This category groups articles that are related to computers. |
    And I press "Save"
    Then I should be on the categories page
    And I should see "This category groups articles that are related to computers."
    
  Scenario: Allow administrator to edit an existing category
    Given that Computers and Fun Stuff categories are added
    And I am on the categories page
    When I follow "Computers"
    Then the "category_permalink" field should contain "computers"
    When I fill in the following:
      | Description | Articles releated to computers. |
    And I press "Save"
    Then I should be on the categories page
    And I should see "Articles releated to computers."

