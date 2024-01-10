plan_prod:
	gcloud auth login
	gcloud config set project $$PROJECT_ID
	terraform init
	terraform plan --var-file=conf/tfvars/prod.tfvars

apply_prod:
	gcloud auth login
	gcloud config set project $$PROJECT_ID
	terraform init
	terraform apply --var-file=conf/tfvars/prod.tfvars