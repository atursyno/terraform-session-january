resource "aws_sqs_queue""main"{
    count = 3
    name = "${var.env}-sqs"
    tags = {
        Environment = var.env
        Name = format("%s-sqs", var.env)

    }
}

#If you want to isolate infrustructure and reuse your configuration files, you must isolate the backend
# Isolating backend = Isolating environement 