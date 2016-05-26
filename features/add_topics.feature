Feature: NewsApp Welcome
In order for users to be able to read the News on the BBC NewsApp
As the News App Test Engineer
I want to make sure they can open the App allows Notifications

Scenario: Adding Topics after launching the app for the First time.

Then I wait for the "id" to appear
Given I Tap My News
Then I should be in the My News index
Given I Tap OK, let's get started
Then I should be in the Add Topics Page
Given I add a Topic in the Add Topic Page
Then the added topic should be in My News
