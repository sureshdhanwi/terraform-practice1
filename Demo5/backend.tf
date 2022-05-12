terraform {
    backend "s3" {
        bucket = "terraform-state-gg88g"
        key = "terraform/Demo5"
    }
}