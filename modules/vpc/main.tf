resource "aws_vpc" "this" {
  cidr_block = var.cidr
	tags = {
	   Name = "mynewvpc"
  }	
}

resource "aws_subnet" "public" {
  count                   = length(var.azs)
  vpc_id                  = aws_vpc.this.id
  cidr_block              = var.cidr_block
  availability_zone       = var.azs[count.index]
  map_public_ip_on_launch = true

   tags = {
	Name = "new-public" 
}

}
