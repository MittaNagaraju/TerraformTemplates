resource "aws_instance" "web-1" {
    ami = "ami-0a0ad6b70e61be944"
    availability_zone = "us-east-2a"
    instance_type = "t2.micro"
    key_name = "nagaterraform"
    subnet_id = "${aws_subnet.subnet1-public.id}"
    vpc_security_group_ids = ["${aws_security_group.allow_all.id}"]
    associate_public_ip_address = true	
    tags = {
        Name = "Server-1"
        Env = "dev"
        Owner = "nagaraju"
    }
}

resource "aws_instance" "NagaInstance" {
    ami = "ami-0a0ad6b70e61be944"
    instance_type = "t2.micro"
    availability_zone = "us-east-2a"
    key_name = "nagaterraform"
    subnet_id = "${aws_subnet.subnet1-public.id}"
    security_groups = ["${aws_security_group.allow_all.id}"]
    associate_public_ip_address = false
    tags = {
        Name = "Naga-Name-Node"
    }
}