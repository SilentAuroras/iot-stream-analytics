# IoT Stream Analytics

Learning project to stream sensor data such as temperature from Arduino or STM32 devices, stream the data to Azure IoT, and analyze the data.

## Prerequisites

1. Install the Azure CLI

OSX

```bash
brew update && brew install azure-cli
```

Windows

```bash
winget install --exact --id Microsoft.AzureCLI
```

1. Login to Azure CLI

```bash
az login --use-device-code
```

1. Create terraform.tfvars file in terraform-azure/

```
location = ""
subscription_id = ""
```

## Deployment steps

1. Terraform init

```bash
terraform init && terraform plan
```

1. Deploy infrastructure

```bash
terraform deploy
```
