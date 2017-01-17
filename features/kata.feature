Feature: Kata API

  Scenario: Getting a list of katas
    Given there is a kata in the database
    When sending the request GET "/api/v1/katas"
    Then I get the response
    """
    [{
      "id": 123,
      "github_user_name": "fluency-in",
      "github_repo_name": "ruby-beer-song"
    }]
    """

