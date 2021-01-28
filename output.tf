resource "local_file" "ansibleHost" {
    content = templatefile("hosts",
        {
            public_ip = aws_instance.course_work_instance.public_ip,
        }
    )
    filename = "hosts"
}