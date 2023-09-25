variable "bucket"{
    type = map(any)
}

variable "tags" {
    type = map(any)
    description = "tags"    
}

variable "ec2_instances" {
    type = map(any)
     
}
