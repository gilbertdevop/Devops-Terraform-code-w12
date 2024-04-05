/*
#create a group
resource "aws_iam_group" "gp1" {
  name = "manager"
  lifecycle {
    prevent_destroy = false
  }
}

#create a user
resource "aws_iam_user" "user1" {
  name = "gilberta"
  depends_on = [ aws_iam_group.gp1 ]
}
*/
resource "aws_instance" "server1" {
  ami= "ami-051f8a213df8bc089"
  instance_type = "t3.small"
  key_name = "gilbert-ec2-key-pair"
  lifecycle {
    create_before_destroy = true
  }
}