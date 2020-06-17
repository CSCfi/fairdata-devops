---
title: Devops manifest
layout: page
status: draft
owner: Toni Nurmi
updated: 2020-06-17
read_time: true
---

Devops is not universally agreed definition. Everyone can have different views on what is and isn't included in Devops. This document outlines what FD Devops team considers good practises, scopes and methology of Devops inside Fairdata. Its our very own manifest of devops and the ultimate guide on all matters related to our daily work.

## What Devops is in a nutshell

### Process development

Developer Operations is fancy term for process development. This is true for all operations, such as CI, CD, documentation, testing, provisioning and monitoring. When you develop automation around releases or policies on provisioning, those are processes your evaluating. Process is a process even if its not called that, or no-one admits it. The output of such development is a new process, even if personnel involved don't recognize it as such.
Process is a set of inputs, steps and outputs to archieve agreed goal. You can develop most awesome tool, but without a process, there is no adoption and no business value.

### Customer service of product development teams

Product development is intense, feature focused work with ever looming deadlines. Client or Product Owner will prioritize most of the work in product development. Developers usually have many pains they live with because they don't have time to remedy them. Sources of frustration can be cumbersome release process, lacking documentation, local development environment is too heavy or does not work, peer evaluation is minimal or does not enforce learning, tests have blind spots and there is no clear way of archieving something to name a few. 

Devops operator on the otherhand does not have such limitations what comes to deadlines and priorization. Operator can ideally observe product development, identify pains and cumbersome workflows, improve documentation and testing and help with complex topics outside of feature development. 

Operator should have good understanging of products and their source code, business goals and internal procedures to archieve these goals. They can do simple fixes, tests, setup monitoring and combine different components better. Because of this knowledge, operator can easily be pulled inside product development team full time, and doing so applies all the limitations of product developer to themself. Operator on such case looses most of their observational abilities and time to develop new tools and processes.

### Enchanting components vs Enabling components

Product development goals are to develop and maintain business critical components. Business critical components are enabling components. Without them there is no product, no users and no client. Enchanting components bring added value to customers, users and developers, but usually in a way that users or client can't see directly. That is why they are usually prioritized on the bottom of the stack or not at all, because clients and users don't see the improvement and they of course set the priorization of the product in the end.

Operator is best utilized taking responsibility of enchanting components, developing enabling components is the same as product development. 

### Influencing and enforcing of policies, workflows and processes

Operator has no power over Developers or Project Leads, and this is how it should be. No process or workflow will get adoption if you try to force it on a team. Change resistance is very important factor on successful process development. This is why Operator should adopt their ideal processes, tools and workflows themselfs before introducing them to developers. Self adoption and continuos research is required, if one wants to make a difference. 

Operator should be invisible on some aspects of influencing others. They are not trying to raise themselfs on pedestals or taking all the credit of discoveries. Best improvements to processes and workflows are the ones developers don't even notice, even better if they feel like they contributed to discovery or process. Credit is of course given to Operator as well when appropriate. You will want the developers to remember the process, workflow or tool, not the Operator that introduced it. 
