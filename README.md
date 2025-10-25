# Cow wisdom web server

## Prerequisites

```
sudo apt install fortune-mod cowsay -y
```

## How to use?

1. Run `./wisecow.sh`
2. Point the browser to server port (default 4499)

## What to expect?
<img width="1511" height="948" alt="Screenshot 2025-10-23 200849" src="https://github.com/user-attachments/assets/beb77833-71d1-453b-9bb4-230ded96010a" />


# Problem Statement

Deploy the wisecow application as a k8s app

<img width="1633" height="1014" alt="image" src="https://github.com/user-attachments/assets/c0939de3-eda5-4110-9dfe-760d6e298df5" />

<img width="846" height="1024" alt="image" src="https://github.com/user-attachments/assets/20e0e775-9bdc-4c0a-b298-a56f653b89ec" />





## Requirement
1. Create Dockerfile for the image and corresponding k8s manifest to deploy in k8s env. The wisecow service should be exposed as k8s service.
   <img width="1919" height="1023" alt="image" src="https://github.com/user-attachments/assets/4d46af1a-2fbd-47bb-8eb8-d7eda76115dc" />

   <img width="795" height="1021" alt="image" src="https://github.com/user-attachments/assets/20f844aa-b13c-4402-862f-9098eb2edc99" />


3. Github action for creating new image when changes are made to this repo
   <img width="926" height="900" alt="image" src="https://github.com/user-attachments/assets/95f1589d-3de3-4c17-bbde-1579f75b82de" />

5. [Challenge goal]: Enable secure TLS communication for the wisecow app.
   <img width="1919" height="1018" alt="image" src="https://github.com/user-attachments/assets/a5eed015-9a97-42e3-83ab-87505dd3ec67" />


## Expected Artifacts
1. Github repo containing the app with corresponding dockerfile, k8s manifest, any other artifacts needed.
2. Github repo with corresponding github action.
3. Github repo should be kept private and the access should be enabled for following github IDs: nyrahul
# Accuknox-DevOps-Trainee-Practical-Assessment_2025
# Accuknox-DevOps-Trainee-Practical-Assessment_2025
