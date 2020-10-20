# language: no
Feature: Namespaces

  Background: Access cluster endpoint
      Given username <user> and token <token> access cluster <cluster> at endpoint <endpoint>:
        | user            |      token |      cluster |                   endpoint |
        | some_admin_user | some_token | some_cluster | http://localhost:8080/api/ |
  
  Scenario Outline: Create namespaces
    Given the <namespace>
    Then create namespace <namespace>
    And apply label name <label> 
    
  # Map<String,List<String>>  
  Examples:
    | namespace            | environment | level        |
    | some_namespace_alpha | development | confidential |
    | some_namespace_beta  | production  | secret       |
  
