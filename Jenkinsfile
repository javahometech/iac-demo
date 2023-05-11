pipeline {
  agent any

  environment {
    AWS_ACCESS_KEY_ID = credentials('aws-access-key-id')
    AWS_SECRET_ACCESS_KEY = credentials('aws-secret-access-key')
  }

  stages {
    stage('terraform init') {
      steps {
        sh 'terraform init -backend-config=backend.tf'
      }
    }

    stage('terraform plan') {
      steps {
        sh 'terraform plan -var-file=terraform.tfvars -out=tfplan'
      }
    }

    stage('terraform apply') {
      steps {
        sh 'terraform apply -auto-approve tfplan'
      }
    }
  }
}
