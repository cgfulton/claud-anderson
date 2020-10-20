
# language: no
Feature: Deploy Nginx 
  Simple feature that creates a single nginx deployment

  Background: Cluster api endpoint is accessable Given username <user> and token <token> access cluster <cluster> at endpoint <endpoint>: 
    | user            | token      | cluster      | endpoint         | 
    | some_admin_user | some_token | some_cluster | http://some.host |
  
  Scenario Outline: Deploy Nginx Given the <namespace> 
  Then create deployment <deployment_name> 
  And set label name <label_name> and value <label_value> 
  And set the number of replicas to <replicas> 
  And set match label name <match_label_name> and value <match_label_value> 
  And set container image <container_image> and port <container_port> 
  
  Examples: 
  | namespace            | deployment_name  | label_name | label_value | replicas | match_label_name | match_label_value | container_image | container_port |
  | some_namespace_alpha | nginx-deployment | app        | nginx       | 1        | app              | nginx             | nginx:1.14.2    | 80             |
  | some_namespace_beta  | nginx-deployment | app        | nginx       | 3        | app              | nginx             | nginx:1.14.2    | 80             |
