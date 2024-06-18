@Library ('GenericPipelineBase')_
stage('MATLAB Process Advisor') {
  node('RoempertSeiner'){
    sh 'set'
    String matlabRoot = "C:\Program Files\MATLAB\R2023b"
    withEnv (["MATLAB_ROOT=${matlabRoot}",
      "PATH=$(env.PATH); ${matlabRoot}\\bin"]) {
      def scmVars = checkout scm
      env.GIT COMMIT = scmVars.GIT COMMIT
      echo "Git Commit: ${env.GIT_COMMIT}"
      env.GIT_COMMIT_SHORT = scmVars.GIT COMMIT.take (10)
      echo " Git commit short: $}env.GIT_COMMIT_SHORT}"
      echo "${env.ΡΑΤΗ}"
      runMATLABCommand(command: "openProject('Software_factory.prj'); [buildResult, exitCode] = runprocess(RerunFailedTasks=true, ExitInBatchMode=false);finishprocess")
    }
  }
}
