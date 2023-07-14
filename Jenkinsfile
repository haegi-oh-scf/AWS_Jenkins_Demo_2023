pipeline {
    agent any
    tools { 
        maven 'Maven 3.3.9' 
        jdk 'jdk8' 
    }
            stages {
                stage('Example') {
                    steps {
                        echo 'Hello World'
                        echo 'Test'

                    script {
                            def browsers = ['chrome']
                            for (int i = 0; i < browsers.size(); ++i) {
                                echo "Testing the ${browsers[i]} browser"
                            }
                        }
                    }
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
    