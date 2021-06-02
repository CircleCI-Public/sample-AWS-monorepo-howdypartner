variable "availability_zones" {
  type        = list(string)
  description = "AWS Availability Zones"
  default = [
    "us-east-1a",
    "us-east-1b",
    "us-east-1c",
    "us-east-1e",
  ]
}

variable "key_pair" {
  description = "AWS EC2 Key Pair Pem"
  default     = "devrel-angel-rivera"
}

variable "ami" {
  description = "Amazon Linux 2 AMI"
  default     = "ami-0c3dda3deab25a563"
  # x86 AMI= ami-0d5eff06f840b45e9
  # Arm AMI= ami-0c3dda3deab25a563
}

variable "instance_type" {
  description = "AWS Instance type"
  default     = "t4g.medium"
  # x386 = t3.medium
  # Amr = t4g.medium
  
}

variable "iam_profile" {
  description = "Name of AWS IAM Profile"
  default     = "ec2ECSRole"
}

variable "asg_min" {
  description = "Min Instances"
  default     = 2
}

variable "asg_max" {
  description = "Max Instances"
  default     = 2
}

variable "asg_desired" {
  description = "AWS Desired capacity for ASG"
  default     = 2
}

variable "docker_img_name" {
  type        = string
  description = "Name of the docker image being deployed"  
  default     = "ariv3ra/aws-frontend-arm64"
}

variable "docker_img_tag" {
  type        = string
  description = "The docker image TAG being deployed"  
  default     = "latest"
}

