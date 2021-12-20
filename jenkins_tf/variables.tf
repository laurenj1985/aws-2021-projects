variable "region" {
  type        = string
  description = "aws region"
  default     = "us-east-1"
}

variable "ami" {
  type        = string
  description = "ami information"
  default     = "ami-01cc34ab2709337aa"
}

variable "instance_type" {
  type        = string
  description = "instance_type"
  default     = "t2.micro"
}

variable "key_name" {
  type        = string
  description = "name of keypair"
  default     = "laurenskey"
}

variable "pub_key" {
  type        = string
  description = "public key name"
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDIvehaD9qThgPqGaJoB25oGtr5DPzllEr9lw6TgFj16DPRS4qhTrMV3dAuUOZOpSRJE245ZTF0l0N7zSeb5VdxC/LHLbppceo67p8fs1os42bF944f0/ae9m2C2X+B4mwvO8Ff4onvSckAudA/8P/GRcDMaT0DZ0zknd9VgYVg7Z1cVzi0y1IfxfxKwS0wRm2s4cGA4E19C4NDntQAf/9LDwgd8q2Th27A8MiEiFYZZrmaG34uGgWYbmj8kTwx20eBd7FCqOxi7ebae1ReZheoUtGdP2AIzZpysrmeFRbwWEL3dG9A4/wM8Zao+CXW/vPgvYYE/2IkzWW2oRa+e65cgE1DX5sIgaG8ulv07gFxZk+mfMFGGPH4A2lYsonwgKl+M4/UFQJ4TAyJ+dzmgxNWyYexwsxotp9+zh0Y9ifP1L7uHRzos5a6juaZBuwmkvx8gW5PmQrdW22G2ukIKFekfcDl59a4pecI1mOfNmKrwEcnS523z3DA3aJ2wRuwvhc= admin@DESKTOP-4BIOGAS"
}