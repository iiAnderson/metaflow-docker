## Running Metaflow Flows inside a Docker container.

This is a simple example for running any metaflow job inside a docker container, which could then be run in an ephemeral environment.

Requirements:
 - Have a src/ folder in the same directory as this Dockerfile, which must contain
    - The python metaflow file
    - a requirements.txt file (even if its empty!)
 - You can then run docker build . in the same directory as the Dockerfile!

 This is ideal for running jobs within ECS or other serverless container environments.