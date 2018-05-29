provider "aws" {
	access_key = ""
	secret_key = ""
	region	   = ""
}

resource "null_resource" "file_provision" {
	connection {
		type        = "winrm"
		host        = "localhost"
		user        = "Aministrator"
		Password	= "Carrot@123"
		timeout		= "10m"
	}
	
	provisioner "file" {
		source      = "test.txt"
		destination = "C:/test.txt"
	}
	
}