Feature: Author manages blogs
  Scenario: Author creates a blog
    Given I go to the create blog page
    And I should fill in "title" with "Test blog"
    And I should fill in "body" with "This is to test the feature with cucumber"
    When I click the link "Create"
    Then I should be on the blogs listing page
    And I should see "Test blog" 
  Scenario: Author updates a blog
    Given I go to the "Test Blog" page
    And I should fill in "title" with "New Title"
    And I should fill in "body" with "updated content"
    When I click the link "update"
    Then I should be on the blog page
    And I should see the updated blog "New Title"