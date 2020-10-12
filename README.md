# DevOps Engineer - Technical Test

We think infrastructure is best represented as code, and provisioning of resources should be automated as much as possible.

 Your task is to create a CI build pipeline that deploys this web application to a load-balanced
environment. You are free to complete the test in a local environment (using tools like Vagrant and
Docker) or use any CI service, provisioning tool and cloud environment you feel comfortable with (we
recommend creating a free tier account so you don't incur any costs).

Your CI job should:

- Run when a feature branch is pushed to Github (you should fork this repository to your Github account. If you are working locally feel free to use some other method for triggering your build.
- Deploy to a target environment when the job is successful.
- The target environment should consist of:
- A load-balancer accessible via HTTP on port 80.
- Two application servers (this repository) accessible via HTTP on port 3000.
- The load-balancer should use a round-robin strategy.
- The application server should return the response "Hi there! I'm being served from {hostname}!".

## Solution

The build for this solution uses CircleCI, it is a build process in 3 parts:

1. Basic CI
   This just builds and runs your tests.
2. Packer build
   Creates an AMI for AWS that has the node app installed as a service.
3. Terraform IAC
   This build a autoscaling group for the AMIs. Each time a new AMI is created a new launch configuration is made and scales the no of instances from 2 to 4. This means you now how 2 of the old and 2 of the new instances running.
   The next step is scale down the no of instances to 2, which should leave with 2 of the new AMIs based instances (assumming you end up with >2 after the scale up otherwise you still have 2 running instances).

Whats missing or could be different?
I could have gone with a container solution but I thought creating a cluster would be a bit OTT.

James