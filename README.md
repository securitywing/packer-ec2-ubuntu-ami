# packer-ec2-ubuntu-ami
Create a custom Ubuntu AMI image  using Packer, and launch the instance 
in AWS.

# SSH keypair creation
This keypair will be used to SSH to the Ubuntu instace.
create a SSH key pair called  packer_key using ssh-keygen.If you are
Windows then you can install gitbash and then run the command below.

ssh-keygen -f packer_key

# Once you have completed creating the keypair, run the build-and-launch.sh 
from Linux or Gitbash, if you are using Windows.
This script will automatically create a Ubuntu AMI image and then create
a EC2 instance using terraform. Make sure you have both Packer and
Terraform install on your local machine.

