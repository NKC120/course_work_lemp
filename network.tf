resource "aws_vpc" "course_work_vpc" {
    cidr_block = "10.0.0.0/16"
    enable_dns_hostnames = true
    enable_dns_support = true
}

resource "aws_eip" "course_work_eip" {
    instance = aws_instance.course_work_instance.id
    vpc      = true
}

output "public_ip" {
    value = aws_eip.course_work_eip.public_ip
}
