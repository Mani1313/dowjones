node {
    def app
    stage('Clone repository') {
        git branch: "master", url: "git@github.com:example-dev/go-queue-consumer.git"
    }
    stage('Build image') {
        sh "docker build -t 672721203026.dkr.ecr.ap-south-1.amazonaws.com/myapp:1 ."
    }
    stage('Push image') {
        docker.withRegistry('https://672721203026.dkr.ecr.ap-south-1.amazonaws.com', 'ecr:ap-south-1:ecr_id') {
            sh "docker push 672721203026.dkr.ecr.ap-south-1.amazonaws.com/myapp:1"
        }
    }
}
