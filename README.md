## Running Metaflow Flows inside a Docker container.

This is a simple example for running any metaflow job inside a docker container, which could then be run in an ephemeral environment.

Requirements:
 - Have a src/ folder in the same directory as this Dockerfile, which must contain
    - The python metaflow file (named flow.py)
    - a requirements.txt file (even if its empty!)
 - You can then run docker build . in the same directory as the Dockerfile!
 - If you wish for external AWS/S3 resource use, you need to add a copy of the metaflow config file (named config.json) inside the src folder, which will then be set as the METAFLOW_HOME. If you dont metaflow will just run locally within the container

 This is ideal for running jobs within ECS or other serverless container environments.
