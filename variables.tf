#============================================================
#             General variables
#============================================================

variable "project" {
  description = "Project name."
  type        = string
}

variable "environment" {
  description = "Environment name (for instance: PRD for Production)."
  type        = string
}

variable "tags" {
  description = "List of tags (key and value) for the resources in the Cloud Provider."
  type        = map(string)
}

variable "aws_region" {
  description = "AWS region name where the resources will be created."
  type        = string
}

locals {
  description  = "EKS Cluster name."
  cluster_name = "eks-${var.environment}-${var.project}"
}

#============================================================
#             Bucket variables
#============================================================

variable "bucket_names" {
  description = "List of buckets that will be created."
  type        = list(string)
}

#============================================================
#             VPC variables
#============================================================

variable "private_subnets_vpc" {
  description = "List of private subnets that already exists in the VPC."
  type        = list(string)
}

#============================================================
#             EKS variables
#============================================================

variable "cluster_version" {
  description = "EKS Cluster version."
  type        = string
}

variable "instance_type" {
  description = "EKS Cluster instance type."
  type        = string
}