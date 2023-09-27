# github-runner-aws
This is a folder containing some scripts and yml files for setting up an ecs cluster with fargate services to run a test environment inside a docker container which has the github self-hosted runner configured

## Instructions: 
##### 
* Configure AWS on your local machine my running sudo apt install awscli and after that run aws configure --profile staging. This will prompt you to enter the access key and secret access key.
* After that run the ./vpc.sh command and then go to aws cloudformation and see the vpc stack get created. Within that copy the subnet and vpc ids and paste them in the respective sections in vpc.yml file
* You can now run the ./simple.sh command and watch the services deploy on the stack
