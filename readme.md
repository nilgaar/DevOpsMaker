| IaC                                                                                                                                                                                                             |
| --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [![Validate Azure Terraform templates](https://github.com/nilgaar/DevOpsMaker/actions/workflows/deploy_azure_vpc.yml/badge.svg)](https://github.com/nilgaar/DevOpsMaker/actions/workflows/deploy_azure_vpc.yml) |
| [![Validate AWS Terraform templates](https://github.com/nilgaar/DevOpsMaker/actions/workflows/deploy_aws_vpc.yml/badge.svg)](https://github.com/nilgaar/DevOpsMaker/actions/workflows/deploy_aws_vpc.yml)       |

| Testing                                                                                                                                                                                                                               |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [![Run Cypress](https://github.com/nilgaar/DevOpsMaker/actions/workflows/cypress.yml/badge.svg)](https://github.com/nilgaar/DevOpsMaker/actions/workflows/cypress.yml)                                                                |
| [![Run 🎭 Nodejs](https://github.com/nilgaar/DevOpsMaker/actions/workflows/%F0%9F%8E%AD_nodejs.yml/badge.svg)](https://github.com/nilgaar/DevOpsMaker/actions/workflows/%F0%9F%8E%AD_nodejs.yml)                                      |
| [![Run 🎭 Nodejs 📦](https://github.com/nilgaar/DevOpsMaker/actions/workflows/%F0%9F%8E%AD_nodejs_%F0%9F%93%A6.yml/badge.svg)](https://github.com/nilgaar/DevOpsMaker/actions/workflows/%F0%9F%8E%AD_nodejs_%F0%9F%93%A6.yml)         |
| [![Run 🎭 ☕️](https://github.com/nilgaar/DevOpsMaker/actions/workflows/%F0%9F%8E%AD_%E2%98%95%EF%B8%8F.yml/badge.svg)](https://github.com/nilgaar/DevOpsMaker/actions/workflows/%F0%9F%8E%AD_%E2%98%95%EF%B8%8F.yml)                 |
| [![Run 🎭 🐍](https://github.com/nilgaar/DevOpsMaker/actions/workflows/%F0%9F%8E%AD_%F0%9F%90%8D.yml/badge.svg)](https://github.com/nilgaar/DevOpsMaker/actions/workflows/%F0%9F%8E%AD_%F0%9F%90%8D.yml)                              |
| [![Run 🎭 🐍 📦](https://github.com/nilgaar/DevOpsMaker/actions/workflows/%F0%9F%8E%AD_%F0%9F%90%8D_%F0%9F%93%A6.yml/badge.svg)](https://github.com/nilgaar/DevOpsMaker/actions/workflows/%F0%9F%8E%AD_%F0%9F%90%8D_%F0%9F%93%A6.yml) |

> [!WARNING]
> This repos is WIP

# About DevOpsMaker

DevOpsMaker aims to be a boilerplate repo to set up any web-testing framework and integrate it with your CI/CD platform

## Featured Test Frameworks

| Framework  | Language   | Cucumber | Container | Last Report                                                                                         |
| ---------- | ---------- | -------- | --------- | --------------------------------------------------------------------------------------------------- |
| Cypress    | TypeScript | Yes      | No        | Is uploaded to [S3](https://s3.eu-north-1.amazonaws.com/cypress.reports/KSNFRk8zp/mochawesome.html) |
| Playwright | Java       | No       | No        |                                                                                                     |
| Playwright | TypeScript | No       | Yes       | Is uploaded to [Azure Blob](https://makerreportuploads.blob.core.windows.net/reports/index.html)    |
| Playwright | Python     | No       | Yes       |                                                                                                     |

### References

I got some inspiration for the infraestucture ideas from the book System Design Interview by Alex Xu
