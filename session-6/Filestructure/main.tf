resource "aws_sqs_queue""main"{
    count = 2
    name = "${element(var.env, count.index)}"
    tags = {
        Environment = var.env
        Name = format("%s-sqs", var.env)

    }
}