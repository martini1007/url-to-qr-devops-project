variable "aws_region" {
  description = "Region AWS"
  default     = "eu-north-1"
}

variable "aws_profile" {
  description = "Nazwa profilu z AWS CLI"
  default     = "default" 
}

variable "cluster_name" {
  description = "Nazwa klastra EKS"
  default     = "qr-code-cluster"
}


