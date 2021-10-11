variable "identifier" {
  type        = string
  description = "Cluster identifier"
}

variable "db_name" {
  type        = string
  description = "Initial database name"
}

variable "writer_instance_type" {
  type        = string
  description = "Instance type of writers"
  default     = "db.t3.medium"
}

variable "postgresql_version" {
  type        = string
  description = "The postgresql version to use"
  default     = "13.3"
}

variable "zones" {
  type        = list(string)
  description = "Availability zones"
}

variable "master_username" {
  type        = string
  description = "Username for master user"
}

variable "vpc_id" {
  type = string
}

variable "subnet_ids" {
  type        = list(string)
  description = "List of subnet ids where cluster should be located"
}

variable "security_group_names" {
  type        = list(string)
  description = "List of security group names that should have access to the DB cluster"
}

variable "skip_final_snapshot" {
  type        = bool
  default     = false
  description = "Store final snapshot or not when destroying database"
}
