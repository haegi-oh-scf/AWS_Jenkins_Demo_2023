pipeline {
    agent any
    options {
        // Keep the 10 most recent build
        buildDiscarder(logRotator(numToKeepStr:'10'))
    }

    stages {
        stage ('Install') {
            steps {
                // install required gems
                sh 'bundle install'
            }
        }
        stage ('Build') {
            steps {
                // Build
                sh 'bundle exec rake build'

                // Archive the built artifacts
                archive includes: 'pkg/*.gem'
            }  
        }
        stage ('Test') {
        steps {
            // run tests with coverage
            sh 'bundle exec rake spec'

            // publish html
            publishHTML target: [
                allowMissing: false,
                alwaysLinkToLastBuild: false,
                keepAll: true,
                reportDir: 'coverage',
                reportFiles: 'index.html',
                reportName: 'RCov Report'
              ]
             }
           }
        }
        
        // stage('Checkout') {
        //     steps {
        //     checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/haegi-oh-scf/AWS_Jenkins_Demo_2023.git']]])            

        //   }
        // }
        
        /*
        stage ("terraform init") {
            steps {
                sh ('terraform init -reconfigure')
            }
        }
        
        stage ("terraform Action") {
            steps {
                echo "Terraform action is --> ${action}"
                sh ('terraform ${action} --auto-approve') 
           }
        }
        */
    }
}