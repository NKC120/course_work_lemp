resource "aws_security_group" "course_work_security" {
    name = "course_work_security"
    vpc_id = aws_vpc.course_work_vpc.id

    //input rule - allow ports 22, 80
    ingress {
        cidr_blocks = [
        "0.0.0.0/0"
        ]

        from_port = 22
        to_port = 22
        protocol = "tcp"
    }
    ingress {
        cidr_blocks = [
        "0.0.0.0/0"
        ]
        from_port = 80
        to_port = 80
        protocol = "tcp"
    }

    //output rule - allow all
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}