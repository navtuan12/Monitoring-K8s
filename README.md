1. AWS Authenticate:
```sh
aws configure
```
put in your key ID and access key.

2. Build k8s infras on AWS:
```sh
cd terraform
terraform init
terraform apply
```

3. Deploy application:

```sh
cd ../k8s
```
Deploy nginx-ingress before deploy application
