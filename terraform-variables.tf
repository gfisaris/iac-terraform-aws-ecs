##  Project's Information  ##

  variable "project_name" {
    description = "Name of the Project for which the Infrastructure is about | (Example: GEMv2.GLM.app || HTTP || PROD)"
  }

  variable "prj_eco" {
    description = "Name of the Ecosystem, the Web Application is part of | [Valid Values: gemv1 / gemv2]"
  }

  variable "prj_app" {
    description = "Name of the Web Application | (Example: glm-app) | Alphanumeric characters, hyphens (-), and underscores (_) are allowed."
  }

  variable "prj_iface" {
    description = "Which interface will the Web Application be used through | [Valid Values: http / cli]"
  }

  variable "prj_env" {
    description = "On which Environment will the Web Application be launched | [Valid Values: prod | beta | stg]"
  }

  
##  AWS Account Information  ##

  variable "aws_access_key" {
    decscription = "AWS Access Key"
  }
  
  variable "aws_secret_key" {
    description = "AWS Secret Key"
  }
  
  variable "aws_region" {
    description = "Which AWS Region will be used ?"
    default = "eu-central-1"
  }
