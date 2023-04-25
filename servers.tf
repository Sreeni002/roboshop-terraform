data "aws_ami" "centos" {
  owners = [973714476881]
  most_recent = true
  name_regex = "Centos-8-DevOps-Practice"
}

output "ami" {
  value = data.aws_ami.centos.image_id
}

resource "aws_instance" "Tfrontend" {
  ami           = "ami-0b5a2b5b8f2be4ec2"
  instance_type = "t2.micro"

    tags = {
    Name = "Tfrontend"
    }

}

output "frontend" {
  value = aws_instance.Tfrontend.public_ip
}

resource "aws_instance" "Tmongodb" {
  ami           = "ami-0b5a2b5b8f2be4ec2"
  instance_type = "t2.micro"

    tags = {
    Name = "mongodb"
    }

}

resource "aws_instance" "Tcatalogue" {
  ami           = "ami-0b5a2b5b8f2be4ec2"
  instance_type = "t2.micro"

    tags = {
    Name = "Tcatalogue"
    }

}

resource "aws_instance" "Tredis" {
  ami           = "ami-0b5a2b5b8f2be4ec2"
  instance_type = "t2.micro"

    tags = {
    Name = "Tredis"
    }

}
resource "aws_instance" "Tuser" {
  ami           = "ami-0b5a2b5b8f2be4ec2"
  instance_type = "t2.micro"

    tags = {
    Name = "Tuser"
    }

}
resource "aws_instance" "Tcart" {
  ami           = "ami-0b5a2b5b8f2be4ec2"
  instance_type = "t2.micro"

    tags = {
    Name = "Tcart"
    }

}
resource "aws_instance" "Tmyql" {
  ami           = "ami-0b5a2b5b8f2be4ec2"
  instance_type = "t2.micro"

    tags = {
    Name = "Tmysql"
    }

}
resource "aws_instance" "Tshipping" {
  ami           = "ami-0b5a2b5b8f2be4ec2"
  instance_type = "t2.micro"

    tags = {
    Name = "Tshipping"
    }

}
resource "aws_instance" "Trabbitmq" {
  ami           = "ami-0b5a2b5b8f2be4ec2"
  instance_type = "t2.micro"

    tags = {
    Name = "Trabbitmq"
    }

}

resource "aws_instance" "Tpayment" {
  ami           = "ami-0b5a2b5b8f2be4ec2"
  instance_type = "t2.micro"

    tags = {
    Name = "Tpayment"
    }

}