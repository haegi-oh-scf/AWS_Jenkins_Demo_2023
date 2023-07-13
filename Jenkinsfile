pipeline {
    agent any
    options {
        // Keep the 10 most recent build
        buildDiscarder(logRotator(numToKeepStr:'10'))
    }

    pipeline {
    agent any
            stages {
                stage('Example') {
                    steps {
                        echo 'Hello World'

                    script {
                            def browsers = ['chrome', 'firefox']
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
    }
}