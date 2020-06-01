[![CircleCI](https://circleci.com/gh/amran08/machine-learning-microservice.svg?style=svg)](https://circleci.com/gh/amran08/machine-learning-microservice)

## Project Summery
Udacity project submission for Microservices at Scale Using Kubernetes
  
---
## Dependencies
 - Virtualbox
 - Minikube
 - Docker
 - python3
 - pip
 - venv
 
## Instruction

* Create a virtualenv and activate it
    
    ```
  python3 -m venv ~/.devops
  source ~/.devops/bin/activate   
    ```
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`
    - After pod status shows running run `kubectl port-forward pod/<podname> 8000:80`
4. Run prediction : `./make_prediction.sh`

## File Explaination

* `.circleci/config.yml` contains circleci configuration specifying steps to lint and build the project
* `app.py` the main python file that runs the prediction API.
* `Dockerfile` containerizes the python project and exposes the API on port 80
* `make_prediction.sh` tests the API by making a HTTP post request to the `/predict` api
* `make_prediction_kubernetes.sh` tests the API by making a HTTP post request to the `/predict` api for kubernetes cluster
* `makefile` The Makefile includes instructions on environment setup and lint tests
* `requirements` python dependencies
* `run_docker.sh` a script that builds the docker image and runs a container
* `run_kubernates.sh` deploys the project to a Kubernetes cluster
* `upload_docker.sh` uploads the image to dockerhub
* `docker_out.txt` contains output of run_docker and run_kubernetes commands
