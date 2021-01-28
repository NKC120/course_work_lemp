resource "aws_instance" "course_work_instance" {
    ami = var.ami_id
    instance_type = "t2.micro"
    key_name = var.ami_key_pair_name
    security_groups = [aws_security_group.course_work_security.id]
    subnet_id = aws_subnet.course_work_subnet.id
}