variable "parameters" {
  default = [
    { name = "dev.rds.username", type = "String", value = "admin1"},

    ### Passwords
    # Passwords should never be kept under code, it always been created mostly manually / saperate automation where code is not involved.
    { name = "dev.rds.password" , type = "SecureString", value = "ExpenseApp1234" },
  ]
}