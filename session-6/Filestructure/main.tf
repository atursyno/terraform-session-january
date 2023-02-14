resource "aws_sqs_queue""main"{
    count = 2
    name = "${element(var.env, count.index)}"
    tags = {
        Environment = "${element(var.env, count.index)}"
        Name = "${element(var.env, count.index)}"

    }
}