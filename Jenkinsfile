pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Run Simulink Project') {
            steps {
                matlab {
                    sh '''
                        matlab -nodisplay -r "cd('C:\Users\40674\Downloads\Software_factory'); loadlibrary('Software_factory.prj'); exit;"
                    '''
                }
            }
        }
    }
}
