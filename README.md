A simple flask "hello world" application deployed on AWS EC2 by CodeDeploy orchestrated 
by travisCI while using Docker as the container engine.
 
#Setup: 

    - Docker, 
    - AWS EC2, 
    - AWS codedeploy, 
    - Travis CI, 
    - Flask, 
    - Python 2.7

#Prerequisites:

	- Create AWS IAM roles and AWS instance (EC2)
	- Install & start codedeploy agent on EC2
	- Install docker on EC2
	- Write up the Application specification file to be used by codedeploy for deployment
	- Setup AWS codedeploy by creating application and deployment groups
	- Configure and Automate deployment with Github integration
	- Create IAM policy and IAM user

#Deployment:

 This is fully Automated, on push the commits trigger TravisCI to build the application 
 and deploy on an AWS EC2 instance via AWS code deploy. This is separated into staging and 
 production environments with 2 different end points.
 
    - .travis.yml contains all the deployment orchestration
    - appspec.yml contains the code deployment requirements
    - scripts operate the docker images and container on the AWS instance during deployment
 
 However you can use this to test locally.
 

->  Standalone:

    - cd flask-app

    - python hello.py

-> As a Docker container:

   	- cd flask-app 
	        
	- docker build -t flask-app . 
        	
	- docker run -d -p 80:5000 flask-app

-> Access the application:


    - production : http://production.flask-app.ga
    
    - staging :  http://staging.flask-app.ga

