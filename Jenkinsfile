pipeline {
   agent any
   environment {
       PATH = "C:\\Program Files\\MATLAB\\R2023b\\bin;${PATH}"   // Windows agent 
   }
    stages {
         stage('First_Step') {
            steps {
               runMATLABCommand(command: "openProject('Software_factory.prj')")
            }       
        }
   }
}
