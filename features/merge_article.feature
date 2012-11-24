Feature: Merge Articles
  As a blog administrator
  I want to be able to merge articles of my blog

  Background:
    Given the blog is set up

  Scenario: When articles are merged, the merged article should contain the text of both previous articles
    And I am logged into the admin panel
    Given I am on the edit article page for "Hello everyone"
    Then I should see "Merge Articles"
    When I fill in "merge_with" with "4"
    And I press "Merge"
    Then I should be on the edit article page for "Hello everyone"
    And show me the page
    And I should see "Welcome everyone. This is my first article on this blog.I just wanted to say hi. :)"

    

  Scenario: A non-admin cannot merge two articles
    And I am logged into the admin panel as blog publisher
    Given I am on the new article page
    Then I should not see "Merge Articles"

