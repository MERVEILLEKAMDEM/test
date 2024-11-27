variable "AWS_ACCESS_KEY" {
    type = string
    default = "
}
variable "AWS_SECRET_KEY" {
    type = string
    default "
}
variable "AWS_REGION"{
    default = "us-west-1"
}
variable "sg"{
    type = map
    default = {
        us-east-1 = "sg-0e4f621884c63634f"
        us-east-2 = "sg-0d711cc6dc09a3567"
        us-west-1 = "sg-0add806cc172f7c36"
        us-west-2 = "sg-094e30b9bf85feba9"

    }
}