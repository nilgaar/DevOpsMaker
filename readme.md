| IaC                                                                                                                                                                                                            |
| -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [![Validate Azure Opentofu templates](https://github.com/nilgaar/DevOpsMaker/actions/workflows/deploy_azure_vpc.yml/badge.svg)](https://github.com/nilgaar/DevOpsMaker/actions/workflows/deploy_azure_vpc.yml) |
| [![Validate AWS Opentofu templates](https://github.com/nilgaar/DevOpsMaker/actions/workflows/deploy_aws_vpc.yml/badge.svg)](https://github.com/nilgaar/DevOpsMaker/actions/workflows/deploy_aws_vpc.yml)       |

| Testing                                                                                                                                                                                                                               |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [![Run Cypress](https://github.com/nilgaar/DevOpsMaker/actions/workflows/cypress.yml/badge.svg)](https://github.com/nilgaar/DevOpsMaker/actions/workflows/cypress.yml)                                                                |
| [![Run 🎭 Nodejs](https://github.com/nilgaar/DevOpsMaker/actions/workflows/%F0%9F%8E%AD_nodejs.yml/badge.svg)](https://github.com/nilgaar/DevOpsMaker/actions/workflows/%F0%9F%8E%AD_nodejs.yml)                                      |
| [![Run 🎭 Nodejs 📦](https://github.com/nilgaar/DevOpsMaker/actions/workflows/%F0%9F%8E%AD_nodejs_%F0%9F%93%A6.yml/badge.svg)](https://github.com/nilgaar/DevOpsMaker/actions/workflows/%F0%9F%8E%AD_nodejs_%F0%9F%93%A6.yml)         |
| [![Run 🎭 ☕️](https://github.com/nilgaar/DevOpsMaker/actions/workflows/%F0%9F%8E%AD_%E2%98%95%EF%B8%8F.yml/badge.svg)](https://github.com/nilgaar/DevOpsMaker/actions/workflows/%F0%9F%8E%AD_%E2%98%95%EF%B8%8F.yml)                 |
| [![Run 🎭 🐍](https://github.com/nilgaar/DevOpsMaker/actions/workflows/%F0%9F%8E%AD_%F0%9F%90%8D.yml/badge.svg)](https://github.com/nilgaar/DevOpsMaker/actions/workflows/%F0%9F%8E%AD_%F0%9F%90%8D.yml)                              |
| [![Run 🎭 🐍 📦](https://github.com/nilgaar/DevOpsMaker/actions/workflows/%F0%9F%8E%AD_%F0%9F%90%8D_%F0%9F%93%A6.yml/badge.svg)](https://github.com/nilgaar/DevOpsMaker/actions/workflows/%F0%9F%8E%AD_%F0%9F%90%8D_%F0%9F%93%A6.yml) |

| Security                                                                                                                                                        |
| --------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [![CodeQL](https://github.com/nilgaar/DevOpsMaker/actions/workflows/codeql.yml/badge.svg)](https://github.com/nilgaar/DevOpsMaker/actions/workflows/codeql.yml) |

# About DevOpsMaker

I am improving my Opentofu skills by creating this DevOpsMaker project. This project is a collection of different DevOps tools and practices. The project is divided into **three main topics**:

## Infrastructure as Code (IaC)

I want to get better at Opentofu. For this, I am following the O'Reilly book [**Terraform Up & Running**](https://www.oreilly.com/library/view/terraform-up-and/9781098116736/) by Yevgeniy Brikman.
The book is mainly focused on AWS. I will implement alike infrastructures in Azure and K8s in the future.

## Test Frameworks

I've worked as a QA Automation Engineer for a while now. I've used different test frameworks like Cypress, Playwright, and Selenium. So I took the chance and also added some test frameworks to this project.

| Framework  | Language   | Cucumber | Container | Last Report                                                                                         |
| ---------- | ---------- | -------- | --------- | --------------------------------------------------------------------------------------------------- |
| Cypress    | TypeScript | Yes      | No        | Is uploaded to [S3](https://s3.eu-north-1.amazonaws.com/cypress.reports/KSNFRk8zp/mochawesome.html) |
| Playwright | Java       | No       | No        |                                                                                                     |
| Playwright | TypeScript | No       | Yes       | Is uploaded to [Azure Blob](https://makerreportuploads.blob.core.windows.net/reports/index.html)    |
| Playwright | Python     | No       | Yes       |                                                                                                     |

### References

I got some inspiration for the infraestucture ideas from the book System Design Interview by Alex Xu
