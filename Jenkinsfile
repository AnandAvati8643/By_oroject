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
                runMATLABCommand(command: 'openProject('Software_factory.prj')')
            }
        }
    }
}
