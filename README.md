### how to declare a variable  in  ansible 
```yaml
normal  location                     {{value}} 
inside a data to declare a variable " {{value}} "
```
### how to declare a variable in terraform 
```hcl
normal location                       var.value
insibe a data to declare  a variable "${var.value}"
```

```bash 
terraform init -backend-config="env-dev/state.tfvats"
terraform plan -var-file="env-dev/terraform.tfvars"
terraform apply -var-file="env-dev/terraform.tfvars"
```
```
my-terraform-project/ ASCII art style
│
├── environments/
│   ├── dev/
│   │   ├── terraform.tfstate 
│   │   └── terraform.tfvars
│   │
│   ├── prod/
│   │   ├── terraform.tfstate 
│   │   └── terraform.tfvars
│   │   
│   └── ...
│
├── modules/
│   ├── vpc/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   │
│   ├── ec2/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   │
│   └── ...
│
├── global/
│   ├── main.tf
│   ├── variables.tf
│   └── outputs.tf
│
├── providers.tf
├── backend.tf
└── README.md
```