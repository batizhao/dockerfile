## Jenkins Dockerfile

这个镜像替换了本地 Maven 仓库。


### Installation

* you can build an image from Dockerfile

```
docker build -t 172.31.21.226/ideal/maven:3.5.2-jdk-8 .
```

### Push to harbor

```
docker push 172.31.21.226/ideal/maven:3.5.2-jdk-8
```

### Deploy on k8s

```
kubectl apply -f ./
```

### Jenkins pipeline
```
podTemplate(label: 'maven', containers: [
  containerTemplate(name: 'maven', image: '172.31.21.226/ideal/maven:3.5.2-jdk-8', alwaysPullImage: true, ttyEnabled: true, command: 'cat')
  ], volumes: [
  persistentVolumeClaim(mountPath: '/root/.m2/repository', claimName: 'maven-pvc', readOnly: false)
  ])
{
  node('maven') {
    stage('Build a Maven project') {
      git branch: 'master', credentialsId: 'e242d1e1-58b5-4645-a84e-64f957e32016', url: 'https://gitee.com/idealsoftone/poseidon.git'
      container('maven') {
          sh 'mvn -B clean package'
      }
    }
  }
}
```
