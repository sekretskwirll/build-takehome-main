# Interview Questions



## What tenets are the most important to you when considering supply chain security in a CI/CD pipeline?

Shift left as much as possible, and automate the scans. Scan all imported assets before they are incorporated into the code, and again after, when scanning the completed project as a whole. Use ":latest" sparingly, and only in dev. Production should have specific, approved versions for all resources.

Do not use shared passwords for access to pipelines resources. Do use password management tools.

Limit access as much as possible without slowing developer velocity. Strive for balance.


## Describe the common patterns you have seen in adding a ruby application to a CI/CD pipeline. What operations are the most common? Why are these operations present?

I have not experienced adding a ruby application to CI/CD pipelines, but I would love to take on that challenge! I have experience using CI/CD with Java and Node.js applications, AWS Lambda, Oracle, PostgreSQL, pulsar, and others. The most common challenge is getting config files in the right place at the right time as devleopers deploy new versions of the code. The "ansible pull" method is one way, but lately I've been trying to do more and more with docker containers and docker-compose. Everything the code needs to run should build and deploy with the code. I've also run into memory/cpu constraints, which I can sometimes address with changing the timing of which tests run in parallel, and which need to be serial.


## What are the most common ways that software is versioned? What are the benefits and challenges of each approach?

I've most commonly used major.minor.maintenance.build# . This works well for tracking/incrementing with software, but is not human readable. It does not convey any information about what that version contains. I've also seen dated release numbers, which at least tells you what month/year that version came out, but still does not tell what it contains. Apple of course has their famous OS names, eg Snow Leopard, Catalina, Big Sur... which are more memorable (and fun) than a number, but still does not convey much about the contents. 


## Give some examples of configuration management tools. Which tools do you prefer and why?

Terraform is not a configuration management tool, but I do leverage init files within terraform to bootstrap fargate containers and bastion boxes. I'm a huge fan of being able to bring up and tear down my infrastructure with a single command.

I use Ansible to install and configure cloudwatch log monitoring, which feed into alarms I set up with Terraform.

In both cases, I enjoy the fairly human readable syntax and simple, straighforward usage. Plus both can get needlessly complex if needed.

## What does the term "Infra as Code" mean? How does this term differ from "Configuration Management"?

Infra meaning infrastructure, as in everything the code runs on. Configuration Management is setting up the servers such that the code runs correctly, with log monitoring, resource usage alarms, etc.

Storing the infrastructure as code means any changes to the infra can be captured in a PR. It also means any changes made by hand can be detected and reversed automatically, which increases security and stability. The infrastructure becomes immutable, repeatable, and reviewable.

