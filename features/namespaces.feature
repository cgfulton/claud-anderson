# language: no
Feature: Namespaces

  Rule: Access cluster endpoint
    Background:
      Given username <username> and token <token> access cluster <cluster> at endpoint <endpoint>:
        | username            |            token |           cluster |                   endpoint |
        | some_admin_username | some_admin_token | some_cluster_name | http://localhost:8080/api/ |
  
  Scenario Outline: Create namespaces
    Given the <namespace>
    Then create namespace <namespace>
    And apply label name <label> 
    
  # Map<String,List<String>>  
  Examples:
    | namespace |      label |       label |
    | product0  | production | development |
    | product1  | production |       stage |
  
  
  Rule: Delete namespace
