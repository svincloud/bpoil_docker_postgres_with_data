# BP Take Home Exercise

BP take home test is designed to evaluate day-to-day activities that are involved with this role.
Team builds highly available distributed systems in a microservices environment.  
The approach is to test the ability to deliver microservice with full test coverage in a containerized environment. 

## Instructions
The goal of this exercise is to write a rest api  to access our postgres db, which is provided as a Docker
container in the file `docker-compose.yaml` of this repository. Please refer to the
Readme.md for information on how to interact with the API. Please note that the postgresdb credentials are in `docker-compose.yaml` file.


If you encounter any problems running the docker-compose we would encourage you to do some debugging first,
before reaching out for help.



## Submission Guidance

### Shoulds

The finished solution **should:**
- Be written in Java.
- Use the `docker-compose.yaml` of this repository.
- Be a rest api suitable for use in another software project.
- Implement the `Create`, `Fetch`, and `Delete` operations on the `deals` resource.
- Get deal to return ticker name, trader name, book name, currency and status name in response
- Be well tested to the level you would expect in a commercial environment. 
- Be simple and concise.
- Integrate the rest api with `docker-compose.yaml `
- Have tests that run from `docker-compose up` - our reviewers will run `docker-compose up` to assess if your tests pass.

### Should Nots

The finished solution **should not:**
- Use a code generator to write the rest api.
- Use (copy or otherwise) code from any third party without attribution to complete the exercise, as this will result in the test being rejected.
- Be a command line client or other type of program - the requirement is to write a rest api.

### Good to have

- Use of Spring boot or vertx
- Reactive libraries to access database - r2dbc, io.vertx.pgclient
- Reactive implementation of api - spring reactor, rxjava

## How to submit your exercise

- Include your name in the README. If you are new to Reactive, please also mention this in the README so that we can consider this when reviewing your exercise
- Create a private [GitHub](https://help.github.com/en/articles/create-a-repo) repository, by copying all files you deem necessary for your submission
- [Invite](https://help.github.com/en/articles/inviting-collaborators-to-a-personal-repository) @bp-interviewer-1 to your private repo
- Let us know you've completed the exercise using the link provided at the bottom of the email from our recruitment team


