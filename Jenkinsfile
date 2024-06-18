pipeline {
   agent any
   environment {
       PATH = "C:\\Program Files\\MATLAB\\R2023b\\bin;${PATH}"   // Windows agent 
   }
    stages {
         stage('MATLAB Process Advisor') {
            runMATLABCommand(command: "openProject('Software_factory.prj'); [buildResult, exitCode] = runprocess(RerunFailedTasks=true, ExitInBatchMode=false);finishprocess")
          }
      }
   }
}
