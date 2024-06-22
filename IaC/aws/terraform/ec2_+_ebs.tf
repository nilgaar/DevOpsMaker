resource "aws_ebs_volume" "ebs_example" {
    availability_zone = "eu-west-1a"
    size = 1
}

resource "aws_instance" "ec2example" {
    ami = "ami-0705384c0b33c194c"
    instance_type = "t2.micro"
    availability_zone = "eu-west-1a"
    ebs_block_device {
        device_name = "/dev/sdh"
        volume_id = "${aws_ebs_volume.ebs_example.id}"
    }
}

