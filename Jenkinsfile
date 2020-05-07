node {
    def app
    stage('Clone repository') {
        git branch: "master", url: "https://github.com/Mani1313/dowjones.git"
    }
    stage('Build image') {
        sh "docker build -t 672721203026.dkr.ecr.ap-south-1.amazonaws.com/myapp:nginx1 ."
    }
    stage('Push image') {
        docker.withRegistry('https://672721203026.dkr.ecr.ap-south-1.amazonaws.com', 'ecr:ap-south-1:ecr_id') {
            sh "docker push 672721203026.dkr.ecr.ap-south-1.amazonaws.com/myapp:nginx1"
        }
    }
}
