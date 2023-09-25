module "ec2" {
    source = "../EC2"
    count = 2
    amis = var.amis
    inst_type = var.inst_type
    subnet=var.subnet
    tags=var.tags
    
}

module "s3"{
    source = "../S3"
    for_each = var.bucket
    buckets = each.key
    acl = each.value.acl
    tags= each.value.tags
    
}


