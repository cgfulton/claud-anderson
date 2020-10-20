# language: no
Feature: Create ontext

  Background: Access cluster endpoint
      Given username <user> and token <token> access cluster <cluster> at endpoint <endpoint>:
        | user            |      token |      cluster |                   endpoint |
        | some_admin_user | some_token | some_cluster | http://some.api.host:8080/api/ |
  
  Scenario Outline:  Given namespace <namespace>
    Then set context <context> cluster <cluster> for user <user>
    
  Examples:
    | namespace            | cluster      | user      | context |
    | some_namespace_alpha | some_cluster | some_user | alpha   |
    | some_namespace_beta  | some_cluster | some_user | beta    |
  
