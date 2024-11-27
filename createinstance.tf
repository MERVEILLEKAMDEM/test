resources "aws_instance" "myfirstawsinstance"{
    sg = lookup(var.sg, var.AWS_REGION
    instance_type = "
    tags = {
        name = "
    }
    )
}