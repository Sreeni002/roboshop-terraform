data "aws_ami" "centos" {
  owners = [973714476881]
  most_recent = true
  name_regex = "Centos-8-DevOps-Practice"
}

output "ami" {
  value = data.aws_ami.centos.image_id
}

resource "aws_instance" "Tfrontend" {
  ami           = data.aws_ami.centos.image_id
  instance_type = "t2.micro"

    tags = {
    Name = "Tfrontend"
    }

}

output "frontend" {
  value = aws_instance.Tfrontend.public_ip
}

resource "aws_route53_record" "Tfrontend" {
  zone_id = Z0794332HJ4QD7G3ANWY
  name    = "tfrontend-dev.sreenivasulareddydevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance_Tfrontend.private_ip]
}

resource "aws_instance" "Tmongodb" {
  ami           = "ami-0b5a2b5b8f2be4ec2"
  instance_type = "t2.micro"

    tags = {
    Name = "mongodb"
    }

}
resource "aws_route53_record" "Tmongodb" {
  zone_id = Z0794332HJ4QD7G3ANWY
  name    = "Tmongodb-dev.sreenivasulareddydevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance_Tmongodb.private_ip]
}

resource "aws_instance" "Tcatalogue" {
  ami           = data.aws_ami.centos.image_id
  instance_type = "t2.micro"

    tags = {
    Name = "Tcatalogue"
    }

}

resource "aws_route53_record" "Tcatalogue" {
  zone_id = Z0794332HJ4QD7G3ANWY
  name    = "Tcatalogue-dev.sreenivasulareddydevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance_Tcatalogue.private_ip]
}

resource "aws_instance" "Tredis" {
  ami           = data.aws_ami.centos.image_id
  instance_type = "t2.micro"

    tags = {
    Name = "Tredis"
    }

}
resource "aws_route53_record" "Tredis" {
  zone_id = Z0794332HJ4QD7G3ANWY
  name    = "Tredis-dev.sreenivasulareddydevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance_Tredis.private_ip]
}
resource "aws_instance" "Tuser" {
  ami           = data.aws_ami.centos.image_id
  instance_type = "t2.micro"

    tags = {
    Name = "Tuser"
    }

}
resource "aws_route53_record" "Tuser" {
  zone_id = Z0794332HJ4QD7G3ANWY
  name    = "Tuser-dev.sreenivasulareddydevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance_Tuser.private_ip]
}
resource "aws_instance" "Tcart" {
  ami           = data.aws_ami.centos.image_id
  instance_type = "t2.micro"

    tags = {
    Name = "Tcart"
    }

}
resource "aws_route53_record" "Tcart" {
  zone_id = Z0794332HJ4QD7G3ANWY
  name    = "Tcart-dev.sreenivasulareddydevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance_Tcart.private_ip]
}

resource "aws_instance" "Tmysql" {
  ami           = data.aws_ami.centos.image_id
  instance_type = "t2.micro"

    tags = {
    Name = "Tmysql"
    }

}
resource "aws_route53_record" "Tmysql" {
  zone_id = Z0794332HJ4QD7G3ANWY
  name    = "Tmysql-dev.sreenivasulareddydevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance_Tmysql.private_ip]
}

resource "aws_instance" "Tshipping" {
  ami           = data.aws_ami.centos.image_id
  instance_type = "t2.micro"

    tags = {
    Name = "Tshipping"
    }

}
resource "aws_route53_record" "Tshipping" {
  zone_id = Z0794332HJ4QD7G3ANWY
  name    = "Tshipping-dev.sreenivasulareddydevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance_Tshipping.private_ip]
}
resource "aws_instance" "Trabbitmq" {
  ami           = data.aws_ami.centos.image_id
  instance_type = "t2.micro"

    tags = {
    Name = "Trabbitmq"
    }

}
resource "aws_route53_record" "Trabbitmq" {
  zone_id = Z0794332HJ4QD7G3ANWY
  name    = "Trabbitmq-dev.sreenivasulareddydevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance_Trabbitmq.private_ip]
}

resource "aws_instance" "Tpayment" {
  ami           = data.aws_ami.centos.image_id
  instance_type = "t2.micro"

    tags = {
    Name = "Tpayment"
    }

}
resource "aws_route53_record" "Tpayment" {
  zone_id = Z0794332HJ4QD7G3ANWY
  name    = "Tpayment-dev.sreenivasulareddydevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance_Tpayment.private_ip]
}