# GCP-FINAL-TASK

about project

This project contains:

![image](https://user-images.githubusercontent.com/111515472/198904801-d1d852d1-93ec-47d8-9d60-a6d0ed06fb60.png)



Tools Used

terraform / gcp / kubernetes / docker


 Infrastructure

    1- setup your GCP account, create new project.

    2- build the infrastructure

        VPC named "vpc-network"

        2 Subnets "management-sub", "restricted-sub"

        3 Service Accounts
            "gke-sa" used by Kubernetes cluster
            "gke-management-sa" used by Management VM

        NAT in "management-sub"

        Private Virtual Machine in "management-sub" subnet to manage the cluster.

        Private Kubernetes cluster in "restricted-sub" with 3 worker nodes.


Build & Push Docker Image to GCR

    Build the Docker Image by run

    docker build -t gcr.io/<PROJECT-ID>/<image-name>:<tag> /Dockerfile

    Push to GCR by docker push gcr.io/<PROJECT-ID>/<image-name>:<tag>



Deploy

    After the infrastructure got built, now you can login to the "management-instance" VM using SSH then:

        Install kubectl tool
        
        sudo apt-get install kubectl
        
        gcloud container clusters get-credentials app-cluster --zone europe-west1-b --project <PROJECT-ID>
        
        mkdir k8s/

        Upload the "kubernetes yaml files to directory k8s/ on the VM and run

        kubectl apply -f <filename>
