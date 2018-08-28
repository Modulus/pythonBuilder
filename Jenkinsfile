// this guarantees the node will use this template
def label = "mypod-${UUID.randomUUID().toString()}"
podTemplate(label: label, containers : [
    containerTemplate( name: "docker", image: "docker", command: "cat", ttyEnabled: true)
    ],
    volumes: [hostPathVolume(hostPath: '/var/run/docker.sock', mountPath: '/var/run/docker.sock')]) {
    node(label) {
        stage("Build and publish container"){
            container("docker"){
                docker.withRegistry("https://registry.hub.docker.com", "dockerhub"){
                    def builtImage = docker.build("rubblesnask/ubuntu_python3_pip3:18.04.1")
                    builtImage.push()
                }
            }
        }
    }
}
