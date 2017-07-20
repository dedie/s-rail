Feature: Verify distance units are positive
Background: XML file has been received from server
Scenario: Received XML file contains only positive distance units
When a list of station distances are received
And the distances are parsed
Then no negative distances are found