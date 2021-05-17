# Sample - CI/CD pipelines for microservices and monorepos on Arm architectures

<!-- Update badges after building on CircleCI -->
[![CircleCI](https://circleci.com/gh/CircleCI-Public/sample-AWS-HowdyPartner-monorepo.svg?style=svg)](https://circleci.com/gh/CircleCI-Public/sample-AWS-HowdyPartner-monorepo) [![Software License](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/CircleCI-Public/sample-python-cfd/main/LICENSE)

- [Description](#description)
- [Getting Started](#getting-started)
- [About This App](#about-this-app)
  * [Continuous Food Delivery](#continuous-food-delivery)
- [Local Development](#local-development)
- [Additional Resources](#additional-resources)
- [License](#license)

---

## Description

This repository demonstrates how to manage CI pipelines for mono repositories on CircleCI. This project is composed of two Git submodules from some of our existing sample project components for "Continuous Food Delivery", our fictional food delivery service application for demo purposes. You will find both a Python/Flask backend service and a Vue/Node frontend application that will make up our application.

| Name                                                                              | Language   | Description                      |
| --------------------------------------------------------------------------------- | ---------- | -------------------------------- |
| [sample-python-cfd](https://github.com/CircleCI-Public/sample-python-cfd)         | Python     | Flask connexion based app        |
| [sample-javascript-cfd](https://github.com/CircleCI-Public/sample-javascript-cfd) | Javascript | Vue.js ionic framework based app |

In this demo, we will be running one of two possible CircleCI workflows on every commit to this repo. Which workflow executes will depend on where files have been updated, we will ensure in this case that if we only make a change to our JavaScript frontend, we will only run our frontend CI tasks.

## Getting Started

If you would like to copy the [config.yml]() and adapt it to your project, be sure to read the comments in the config file to ensure it works for your project. For more details, see the [CircleCI configuration reference](https://circleci.com/docs/2.0/configuration-reference/).

This sample config makes use of the [Path Filtering orb](https://circleci.com/developer/orbs/orb/circleci/path-filtering) on CircleCI with [Setup Workflows](). This allows us to run an initial task in a "pre" workflow, before kicking off the main CI workflow. We will use the "setup workflow" with the path filtering orb to determine what files in the repo have been modified, and only trigger the specific workflows we need, based on those changes.

## About This App

This application is composed of two services and a database to create "Continuous Food Delivery", a fictional food delivery service app. The [Vue.JS front end application]() and [Python Flask backend API service]() are two example repositories on their own. In this repo, we will be loading both of these external projects as Git submodules to simulate a monolithic repository where all services exist in the same codebase.

### Continuous Food Delivery

![Frontend Preview](https://github.com/CircleCI-Public/sample-javascript-cfd/blob/master/.github/img/preview.gif?raw=true)


## Local Development

Specific documentation for each of the two services can be found in their respective repositories.

## Additional Resources

- [Path Filtering orb](https://circleci.com/developer/orbs/orb/circleci/path-filtering)
- [Setup Workflow documentation]()

## License

This repository is licensed under the MIT license.
The license can be found [here](./LICENSE).