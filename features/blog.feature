Feature: Author manages blogs
  Scenario: Author creates a blog
    Given I go to the create blog page
    And I should fill in "title" with "Test blog"
    And I should fill in "body" with "This is to test the feature with cucumber"
    When I click "Create"
    Then I should be on the blogs listing page
    And I should see "Test blog" 
  Scenario: Author updates a blog
    Given I should go to blog "1"
    When I click the "Edit"  
    Then I should see the update blog page
    And I should fill in "Title" with "New Title"
    And I should fill in "Body" with "updated content"
    When I click "Update"
    Then I should see the updated blog "New Title" 
