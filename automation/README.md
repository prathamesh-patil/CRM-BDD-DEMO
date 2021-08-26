# Behaviour driven development (Editage Core)

Behavior Driven Development (BDD) is an agile software development practice that encourages collaboration between everyone involved in developing software: developers, testers, and business representatives such as product owners or business analysts.

We use Gherkin as the syntax for describing examples with Given/When/Then in plain text files, called feature files.

Underlying framework uses webdriver.io with cucumber framework.

## ReadMe Contents:

- [Installation](#installation)
- [Configure Application](#configure-application)
- [Running tests](#running-tests)
- [Browserstack Environments](#browserstack-environments)
- [Reports](#reports)

## Installation

### Docker

Hit following commands in the same sequence for docker installation:

- `sudo apt-get remove docker docker-engine docker.io containerd runc`
- `sudo apt-get update`
- ```
    sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
  ```
- ```
    sudo add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) \
    stable"
  ```
- `sudo groupadd docker`
- `sudo usermod -aG docker $USER`
- `sudo chown -R $USER:$USER /var/run/docker.sock`

> Log out and log back in so that your group membership is re-evaluated.

- `sudo apt-get install docker-compose`

## Configure application

- Docker the phoenix repository
- Go inside `/var/www/phoenix/automation`
- Hit `docker-compose up -d` Initially this command will take several minutes
- `docker-compose exec automation bash`
- `npm i`

## Running tests

### Initialize and run tests

Now to run the BDD tests from your local machine, you need to follow the steps mentioned below:

- Navigate to the folder `phoenix/automation`
- Run the command `docker-compose up -d` to start your docker instance
- Next, run the command `docker-compose exec automation bash` to open your automation docker.
- Now simply run `npm start` to start running your BDD tests!! This command will enable you to run your BDD tests (feature files) for **all** suites across **all** available partners. **Use it wisely!**

> NOTE: For different options/parameters to be used along with the `npm start` command refer to the [next section](#command-parameters)

### Command Parameters

You can use the following parameters to customise your BDD runs to suit your needs:

#### **partner**

- Use this parameter to provide the name of the partner you want to run the tests for. You can also provide multiple partners in a comma separated format
- EG: `partner=eng,chn npm start` (This command will run tests (all suites) for partners ENG and CHN)
- Default: all (All available partners will be run)

#### **config**

- Use this parameter to provide the configuration to be used to run the tests.
- EG: `config=browserstack npm start` (This command will run tests with browserstack configurations)
- Default: docker.js

#### **prefix**

- Use this parameter to provide the name of the server you wish to run the tests on.
- EG: `prefix=development npm start` (This will run the tests for development server)
- Default: prod

#### **legacy**

- Use this parameter to provide prefix for legacy applications like IDP, CRM, EOS etc. E.g. test4, test5, test50. If it is not passed then system will run the tests on production legacy application.
- - EG: `legacy=test4 prefix=development npm start` (This will run the tests for development server with legacy prefix as test4)
- Default: prod

#### **suite**

- Use this parameter to provide suite tags you wish to run. You can opt to pass single or multiple suit tags to run in a single instance
- You can pass specific suit; EG: `suite="@smoke" partner=eng npm start`. This command will run the `@smoke` suite for partner **ENG**.
- You can also choose to run multiple suits in combination; EG: `suite="@smoke and @sanity" partner=eng npm start`. This command will run only for those scenarios where both `@smoke` and `@sanity`suite are present for partner **ENG**.
- Operator can be replaced with "or" instead of "and" with it's obvious behaviour.
- Default: Will run all suites for the particular partner.

#### **spec**

- Use this parameter if you want to run specific feature file. It accepts path of ".feature" file.
- E.g.: `spec=landing.feature npm start`; This command will only run the landing.feature spec file for all partners.

#### **group**

- Use this parameter if you want to run BDD for specific group of features.
- E.g.: `group=website npm start`; This command will all the spec files under website folder.
- Available groups:
  - website
  - webshop
  - forms
  - healthcheck
- You can create the new group by adding the relevant configuration in "suites" parameter under config/default.js

### Browserstack environments

We've set environment variables that can be captured from [browserstack capabilities](https://www.browserstack.com/automate/capabilities)

To run your tests from browserstack, simply run `config=browserstack npm start`. This will run your tests with the default configurations.

In case, you wish to change the default settings you can use the following parameters:

- **os** - Browserstack OS environment. Defaults to Windows
- **os_version** - OS version. Defaults to 10
- **browser** - Name of browser. Defaults to Chrome
- **browser_version** - Version of browser. Defaults to 71.
- **BROWSERSTACK_USERNAME** - Username of browserstack
- **BROWSERSTACK_ACCESS_KEY** - Access key of browserstack

> EG: <br/> > `BROWSERSTACK_USERNAME={user_name} BROWSERSTACK_ACCESS_KEY={key} os="OS X" OS_VERSION=Catalina BROWSER=Safari BROWSER_VERSION=13.1 config=browserstack npm start`

## Reports

Now you can find reports for different partners under `/phoenix/automation/coverage/reports` directory.

> Reports for different partners are now available under their respective folders!!
