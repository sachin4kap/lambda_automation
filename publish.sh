# cd "$dir/infra"
terraform init
terraform plan
terraform apply



# tf-init() {
#     cd "$dir/infra"
#     terraform init
# }

# tf-validate() {
#     cd "$dir/infra"
#     terraform fmt -recursive
# 	terraform validate
# }

# tf-apply() {
#     cd "$dir/infra"
#     terraform plan -out=terraform.plan
#     terraform apply -auto-approve terraform.plan
# }

# tf-destroy() {
#     cd "$dir/infra"
#     terraform destroy \
#         -auto-approve
# }