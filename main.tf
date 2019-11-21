
variable "sai_msg"{
    value = "-this is sai's message"
}
module "mukesh-ref" {
    source = "https://github.com/mukesh4338/mukesh-tfrepo/tf-module-test"

    sai_msg = "${format("%s, this is my message", module.tf-module-test.result_mukesh)}"
}

output "sai-msg"{
    value = "${var.sai_msg}"
}