---
title: Devops manifest
layout: page
status: draft
owner: Toni Nurmi
updated: 2020-06-17
read_time: true
---

[Devops]({% link _vocabularies/devops.md %}) is not universally agreed definition. Everyone can have different views on what is and isn't included in Devops. This document outlines what FD Devops team considers good practises, scopes and methology of Devops inside Fairdata.

## What Devops is in a nutshell

### Process development

Developer Operations is fancy term for [process]({% link _vocabularies/process.md %}) development. This is true for all operations, such as:

* Continuos Integration
* Continuos Deployment
* Documentation
* Testing
* Provisioning
* Monitoring

When you develop automation around [releases]({% link _vocabularies/release.md %}) or [policies]({% link _vocabularies/policy.md %}) on provisioning, those are processes your evaluating. There is a process in software development even when its not documented anywhere, or its not recognized. The output of evaluating and improving automation, workflow or monitoring is a new process or enhanced process.

**Process is a set of inputs, steps and outputs to archieve agreed goal.** You can develop most awesome tool, but without a process, there is no adoption and no business value.

### Customer service of product development teams

Product development is intense, feature focused work with ever looming deadlines. Client or Product Owner will prioritize most of the work in product development. [Developers]({% link _vocabularies/application-developer.md %}) usually have many pains they live with because they don't have time to remedy them. Sources of frustration can be:

* cumbersome release process
* lacking documentation
* local development environment is too heavy or does not work
* peer evaluation is minimal or does not enforce learning
* tests have blind spots
* there is no clear way of archieving something

Devops Operator on the otherhand does not have such limitations what comes to deadlines and priorization. Operator can ideally observe product development, identify pains and cumbersome workflows, improve documentation and testing and help with complex topics outside of feature development.

Operator should have good understanging of products and their source code, business goals and internal [procedures]({% link _vocabularies/procedure.md %}) to archieve these goals. They can do simple fixes, tests, setup monitoring and combine different components better. Because of this knowledge, operator can easily be pulled inside product development team full time, and doing so applies all the limitations of product developer to themself. Operator on such case loses most of their observational abilities and time to develop new tools and processes.

## Enhancing components vs Enabling components

Product development goals are to develop and test business critical [service components]({% link _vocabularies/service-component.md %}). **Business critical components are enabling components.** Without them there is no product, no users and no client. Enhancing components bring added value to customers, users and developers, but usually in a way that users or client can't see directly. That is why they are usually prioritized on the bottom of the stack or not at all, because clients and users don't see the improvement and they of course set the priorization of the product in the end.

Operator is best utilized taking responsibility of enhancing components, process upkeeping and testing different workflows, new policies and processes. 

## Integrating new or improved process, policy or workflow to developer(s) and development teams

When you have developed a new process, found a new tool for improved workflow or refined clearly scoped policy, next you will have to promote the [improvement]({% link _vocabularies/improvement.md %}) to developer or team. Promotion can take many forms, most obvious being telling at group meeting about your new improvement. Other types of promotions are for example: 

* Showing your improvement to dev or team, demonstrating the benefits to the target
* Talking about your improvement and how it has improved your workflow
* Including your improvement as a suggestion in a meeting to relevant problem on the meeting agenda
* Arranging a training session about your improvement and how to use it

Some improvements are easy to promote, if they will solve pain without developers interaction. The ones that change developers workflow, introduce new complexity or require active learning should be promoted many times in such way it does not feel forceful or upselling. Promotion has only one [key performance indicator]({% link _vocabularies/kpi.md %}): being able to go around change resistance. 

Promotion only works if your improvement is accessable and easy to adopt for the target. For this reason special attention should be given to good documentation of your improvement. 

## Bus factor

When operator becomes non-replacable developer asset to developer-team, the short term effect is increased dev-team productivity. Hovewer in the long run this will most probably burn the operator out, as its almost impossible to be [effective]({% link _vocabularies/effectiveness.md %}) in both roles at the same time without significant increase in working hours. In such situation operator will most probably prioritize feature development over devops processes. Poorly maintained devops process will eventually lead to one of the following outcomes: 

* Major [incident]({% link _vocabularies/incident.md %}) caused by misconfiguration, sensitive data leak, failing developer environment resources, major blind spots in integration tests because no one has time to evaluate them or lack of communication.
* Developers feeling stressed out because of additional CI/CD, testing & manual work not automated by operator.
* Undocumented legacy software of doom, where no-one knows the entire system and 20 places it has been ad-hoc configured.
* Unreproducable or misaligned production or development environment, where the environments are either too far from each other to do meaningful testing or are unavailable because no one knows how to set the environment up to target state.

To prevent scenarious described above, the [bus factor]({% link _vocabularies/bus-factor.md %}) value of the operator should always be close to 0, meaning they are not counted as a resource in service components development. This goes both ways, as the operator should document and/or successfully promote all improvements they have established in such way that they are not needed to maintain/operate/monitor the improvement/resource/policy everytime it is used or changed.

## Glueing teams and departments

One of most important tasks of an operator is to advance cross -team and -department communication. As the operator has unique position to participate in processes and meetings without the application development glasses and role restrictions (we don't need that service-component dev as this is not about the that service component), they have an opportunity to assess multitude of developments, trends, iniatives, teams and cross-service pushes in a more holistic way. This can help in following cases: 

* Identifying complex undocumented processes
* Establishing "never done before" improvements by associating it to right tools or teams
* Identifying redundancies or teams that do the same thing without coordination
* Coordinating iniatives that cover many teams or departments

operator should actively arrange opportunities between teams to communicate with eachother. This also will keep the operator up to date with current developments. Transferring knowledge from one team to another is also effective way to syncronize teams, e.g. mentioning most important talking points of other teams meeting in appropriate situation. 

## Ownership of resources

Devops team should own all of their improvement related resources, to stay in control of the process. This includes CI/CD pipes, auxillary improvement related servers (e.g. static code analysis instance), broadcasting bots and [configuration items]({% link _vocabularies/ci.md %}). Ideally developers should not have admin-level rights to any of devops team owned resources, as having them would make ownership of the process ambiguos. 

## Example differences in resposibilities between different team roles

| Task | PO / Project Lead | Lead dev | Developer | Devops |
|------|-------------------|----------|-----------|--------|
| Planning new service component | Prioritizes resources and overall plan for the component development | Evaluates and decides tech-choices, architecture and high-level requirements for service component | Can be consulted in the Reqspec sessions | Can be consulted with CI/CD stack evaluation  |
| Developing new feature for service component | Secures necessary resources for feature development, schedules release-window for the new feature, communicates the new feature to users and stakeholders | Requlates tech-choices used, updates high-level requirements and plans if necessary | Develops the new feature, writes tests for the new feature, documents code changes to version control, does manual tests to verify new feature works as intended. Pushes new feature to origin | Monitors CI/CD processes, investigates any failed CI/CD pipelines, observers the overall new feature development process effectivess and [efficiency]({% link _vocabularies/efficiency.md %}) |
| Keeping production environment separate from development environment | Secures necessary resources and priorization for multiple isolated environments | Requlates and decides tech-choices, keeps production environment secured and separate from other environments on high level | Documents the tech-stack configuration required to run the service component in development and production | Does necessary provisioning of different environments, does CI/CD resources provisioning and configuration, builds CI/CD pipelines for the environments, maintains and troubleshoots the pipelines and devops-resources, defines & documents & promotes the process (acceptance testing methods, manual safeguards, previous version recovery) to update production environment. |

## Examples of Enhancing Components suitable for devops team development and upkeep

* CI/CD Pipeline servers
    - Jenkins
    - Travis
    - GitLab runners
    - GitHub actions
* Provisioning repositories
    - Terraform
    - Heatstack
    - Saltstack
* Configuration repositories
    - Ansible
    - Pyinfra
    - TestInfra
* Centrilized logging servers
* Webhook management
* Static Code Analysis servers
    - SonarQube
* Build artifact servers
* Integration testing pipeline design
* Pouta testing environments

## Q & A

### So what does the Operator actually do?

There are different kinds of operators, as there are Developers. Here are some more technical, examples what operator could be doing during normal workday:

* Building/Planning/Troubleshooting CI/CD pipelines
* Building/Planing/Writing improvements on integration tests
* Provisioning new test environment for service-component
* Updating linter to prevent issues appearing in static code analysis reports
* Documenting the process of getting new physical servers 
* Running audit tools against development servers
* Developing missing tools that support devops process
* Testing new technology and techniques in demo projects
* Arranging recurring meetings between teams
* Identifying pains of developers, hidden opportunities for automation and new ways to improve development work
* Preparing a promotion of new improvement
* Researching right terminology for certain consept

