# Terraform Local module whtich consists of Child and Root modules

module "ec2" {
    source = "../../modules/ec2"   #Local or Remote, when it is a Local module, you provide a path of the Child module
    # You can declare your variables as a configuration
    ami = "ami-09208e69ff3feb1db"
    instance_type = "t2.micro"
    env = "qa"
    project = "app-1"
}

#Local and Remote means the way you are calling the modules

#Root module is where you run the Terraform init, plan and apply commands directly

#Child is module is where you declare your resources