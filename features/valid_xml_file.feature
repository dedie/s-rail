Feature: Verify valid XML file format
Background: XML file has been received from server
Scenario: Received XML file is of valid format
When an XML file is available
And the file is parsed
Then the file will be of a valid format