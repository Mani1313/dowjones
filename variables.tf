variable "aws_region" {
  description = "The AWS region things are created in"
  default     = "ap-south-1"
}

variable "BUCKET_NAME" {
  default = "djbucket352020"
}

variable "SUBNET_PUB1" {
  description = "Existing Subnet ID"
  default = "subnet-0665ad970b2dcd9e8"
}
variable "SUBNET_PUB2" {
   description = "Existing Subnet ID"
   default = "subnet-0e3e1c44"
}
variable "VPC_ID" {
  description = "Existing VPC ID"
  default = "vpc-adb810c4"
}

variable "ecs_task_execution_role_name" {
  description = "ECS task execution role name"
  default = "myEcsTaskExecutionRole"
}

variable "ecs_auto_scale_role_name" {
  description = "ECS auto scale role Name"
  default = "myEcsAutoScaleRole"
}

variable "az_count" {
  description = "Number of AZs to cover in a given region"
  default     = "2"
}

variable "app_image" {
  description = "Docker image to run in the ECS cluster"
  default     = "672721203026.dkr.ecr.ap-south-1.amazonaws.com/myapp:nginx1"
}

variable "app_port" {
  description = "Port exposed by the docker image to redirect traffic to"
  default     = 80
}

variable "app_count" {
  description = "Number of docker containers to run"
  default     = 2
}

variable "health_check_path" {
  default = "/"
}

variable "fargate_cpu" {
  description = "Fargate instance CPU units to provision (1 vCPU = 1024 CPU units)"
  default     = "1024"
}

variable "fargate_memory" {
  description = "Fargate instance memory to provision (in MiB)"
  default     = "2048"
}
