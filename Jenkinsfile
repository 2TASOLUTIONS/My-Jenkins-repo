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