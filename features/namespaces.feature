# language: no
Feature: Namespaces

  Rule: Create namespace
  
  Scenario: Create namespace
    Given the <namespace>:
    Then create <namespace>
    Add apply label name <label> 
    
  Examples:
    | namespace |    label |
    |       cow |  herbavor |
    |       pig |   onmivor |
 
