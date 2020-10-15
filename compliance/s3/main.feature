Feature: Check tags on the S3 resource

Scenario Outline: Ensure that specific tags are defined
Given I have AWS S3 Bucket defined
When it has tags
Then it must contain <tags>
And its value must match the "<value>" regex

Examples:
| tags | value |
| Name | terraform |
| Environment | experiment |