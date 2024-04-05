
resource "aws_instance" "demo1" {
   ami = "ami-051f8a213df8bc089"
  instance_type = "t2.micro"
  key_name = "week12key" #put the key from below here
}
#--------------------------------------------------------
  resource "null_resource" "n1" {
  connection {
    type  = "ssh"
    user = "ec2-user"
    private_key = file(local_file.ssh_key.filename)
    host = aws_instance.demo1.public_ip
  } 
  provisioner "local-exec" {
    command = "echo hello" 
  }
  provisioner "remote-exec" {
    inline = [
        "sudo useradd Gilbert1",
        "mkdir terraform1",
    ]
  }
  provisioner "file" {
    source = "week12key.pem" # path to a file from the computer
    destination = "/tmp/key.pem"
  }
 depends_on = [ aws_instance.demo1, local_file.ssh_key ]
}


