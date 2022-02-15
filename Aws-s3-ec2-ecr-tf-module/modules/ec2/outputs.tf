output "instance_state"{
    description = "The state of the instance :- stopped, pending, running, etc"
    value       = aws_instance.elite.instance_state
}

