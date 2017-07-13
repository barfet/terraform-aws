## Structure

Each top level folder is it's own set of Terraform commands, run separately. This project is making use of Terraform environments to deploy and track the state of the infrastructure in each environment. 

## Deploying

Open a shell to the Terraform container.

```
$ docker-compose run --rm terraform /bin/sh
```

Next, `cd` to the sub-project you want to work with and select environment that you want to use:

```
$ cd <sub-project dir>
$ terraform env select <desired-env>
```

Terraform commands:

```
$ terraform plan
$ terraform apply
```
