pipeline{
  agent any
  stages{
    stage('1-memory space'){
      steps{
        sh 'free -g'
      }
    }
    stage('2-disk free space'){
      steps{
        sh 'df -h'
      }
    }
    stage('3-print'){
      steps{
        sh 'echo "hello"'
      }
    }
    stage('4-disk bloc'){
      steps{
        sh 'lsblk'
      }
    }
    stage('5-greatings'){
      steps{
        sh 'echo "welcome to appbank"'
      }
    }
  }
}