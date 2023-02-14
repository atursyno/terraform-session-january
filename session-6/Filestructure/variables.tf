variable "env"{
    type = list(string)
    description = " This is an environemant name"
    default = ["dev", "qa", "prod"]

}