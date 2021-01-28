resource "aws_subnet" "course_work_subnet" {
    cidr_block = cidrsubnet(aws_vpc.course_work_vpc.cidr_block, 3, 1)
    vpc_id = aws_vpc.course_work_vpc.id
    availability_zone = "us-east-2a"
}

resource "aws_internet_gateway" "course_work_gateway" {
    vpc_id = aws_vpc.course_work_vpc.id
}

resource "aws_route_table" "course_work_route_table" {
    vpc_id = aws_vpc.course_work_vpc.id
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.course_work_gateway.id
    }
}

resource "aws_route_table_association" "course_work_route_table_subassociation" {
    subnet_id      = aws_subnet.course_work_subnet.id
    route_table_id = aws_route_table.course_work_route_table.id
}