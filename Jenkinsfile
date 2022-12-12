pipeline{
  agent any
  stages{
    stage('1-system update'){
      steps{
        sh 'system apt update -y'
      }
    }
    stage('2-disk free space'){
      steps{
        sh 'df -ef'
      }
    }
    stage('3-real time Linux processes'){
      steps{
        sh 'top'
      }
    }
    stage('4-disk analysis'){
      steps{
        sh 'lsblk'
      }
    }
    stage('5-cpu analysis'){
      steps{
        sh 'lscpu'
      }
    }
  }
}