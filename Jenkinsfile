pipeline{

agent any
stages{
/* stage('initialize'){
    steps{
checkout scm
}
} */

stage('compile'){
    steps{
 sh '''
mvn compile
'''
}
}


/*stage('unittest'){
  steps{  
sh '''
mvn test
'''
}  
  

post{
        always{
             junit testResults:"target/surefire-reports/*.xml"
        }
    }
}*/
stage('build'){
    steps{
sh '''
mvn package -DskipTests
'''
}
}

stage('archive'){
steps{
archiveArtifacts artifacts: '**/*.war'
}
}

stage('Deploy'){
steps{
sh '''

    cd /var/run
    chmod 777 docker.sock
    docker build -t mywebapp .
    docker run -d -p 5555:8080 mywebapp
'''
}
}
}
}
