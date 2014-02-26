Feature: Run ngmin on JavaScript code

  Scenario: ngmin filter gets applied to Angular code
    Given the Server is running at "test-app"
    When I go to "/javascripts/application.js"
    Then I should see "'$scope'"
