variable "Virtual_Machine_name" {
      default = ["myVM","myVM"] 
    description = "Test Server"
}
variable "dc_ips" {
    type = list(string)
    default = ["10.0.2.5", "10.0.0.6"]
    description = "Test DC Ip Address "
}