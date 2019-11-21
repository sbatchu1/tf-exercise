

variable "sai_msg"{
    default = "default msg"
}

module "mukesh-ref" {
    source = "github.com/mukesh4338/mukesh-tfrepo"
}



output "sai_msg"{
    value = "${format("%s!, -this is sai's message", module.mukesh-ref.result_mukesh)}"
}