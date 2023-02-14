resource "aws_sqs_queue""main"{
    count = 3
    name = "${element(var.env, count.index)}"
    tags = {
        Environment = "${element(var.env, count.index)}"
        Name = "${element(var.env, count.index)}"

    }
}

#If you want to isolate infrustructure and reuse your configuration files, you must isolate the backend
# Isolating backend = Isolating environement 