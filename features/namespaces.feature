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
  
  Senario Outline: Define context for each namespace
    Given namespace <namespace>
    Then set context <context> cluster <cluster> for user <user>
    
  Examples:
    | namespace            | cluster      | user      | context |
    | some_namespace_alpha | some_cluster | some_user | alpha   |
    | some_namespace_beta  | some_cluster | some_user | beta    |
  
