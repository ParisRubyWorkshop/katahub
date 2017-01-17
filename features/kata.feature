Feature: Kata API

  Scenario: Getting a list of katas
    Given there is a kata in the database
    When sending the request GET "/api/v1/katas"
    Then I get the response
    """
    {
      "data": [
          {
            "id": "123",
            "attributes": {
                "github-repo-name": "ruby-beer-song",
                "github-user-name": "fluency-in"
            },
            "type": "kata"
          }
      ]
    }
    """

