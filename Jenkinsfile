pipeline{
    agent any
    tools {
        terraform 'terraform-11'
    }
    stages{
        stage('Git Checkout'){
            steps{
                git credentialsId: '9701da43-e9d7-4164-9051-22fe12833a07', url: 'https://github.com/praveenchary17/iac-demo'
            }
        }
        stage('Terraform Init'){
            steps{
                sh label: '', script: 'terraform init'
            }
        }
        stage('Terraform Plan'){
            steps{
                sh label: '', script: 'terraform plan'
            }
        }
        stage('Terraform Apply'){
	     when {
                branch 'master'
            }
            steps{
                sh label: '', script: 'terraform apply --auto-approve'
            }
        }
    }
}
