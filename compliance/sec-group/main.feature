Scenario Outline: Ensure our SG an Ingress policy
  Given I have AWS Security Group defined
  Then it must contain <policy_name>

Examples:
  | policy_name |
  | ingress     |