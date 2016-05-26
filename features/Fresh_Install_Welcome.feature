Feature: NewsApp Welcome
In order for users to be able to read the News on the BBC NewsApp
As the News App Test Engineer
I want to make sure they can open the App allows Notifications

Scenario: I launched the app first time

Then I wait for the Top Stories to appear
Given I Tap the My News index
Then the My News index is displayed
Given I Tap OK, lets get started
Then the Edit My News index is displayed
Given I add a Topic in the Edit My News Page
Then the added Topic should be in My Topics
Given I scroll the ribbon then Tap the My News index
Then I capture a screenshot
Given I Tap the LIVE index
And I Tap Play video in the LIVE channel
