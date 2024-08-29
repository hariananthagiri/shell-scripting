# CLI 
* command line interface
* Useally the script provide you with the flexibulity  to manage multipule AWS resource infrastructures effectively

### commands used in CLI

* to connect with aws cloud
    * **aws configure**
* to see the version
    * **aws --version**
* launch new ec2 instance
    * **aws ec2 run-instances --image-id ami-0b4f379183e5706b9 --instance-type t2.micro --key-name harikey** 
* to start an existing ec2 instance
    * **aws ec2 start-instances --instance-ids i-1348636**
* to stop an existing ec2 instance
    * **aws ec2 stop-instances --instance-ids i-1348636**
* to terminate an existing ec2 instance
    * **aws ec2 terminate-instances --instance-ids i-1348636**

### use it in terraform commands by using provisioner

```terraform
resource "aws_instance" "web" {     # terraform reference name
  provisioner "local-exec" {
    command = "aws ec2 terminate-instances --instance-ids ${aws_instance.web.id}"
  }
}
```
