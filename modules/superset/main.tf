
resource "helm_release" "milvus" {
  name             = "milvus"
  namespace        = "milvus"
  create_namespace = true
  repository       = "https://zilliztech.github.io/milvus-helm"
  chart            = "milvus"
  #version          = "17.5.1"  # latest available chart version
  timeout          = 600

  values = [<<EOF
cluster:
  enabled: true

service:
  type: LoadBalancer
  port: 19530

minio:
  enabled: false

externalS3:
  enabled: true
  host: "http://minio.default.svc.cluster.local"
  port: "9000"
  useSSL: true
  bucketName: "milvus"
  useIAM: false
  cloudProvider: "aws"
  iamEndpoint: ""
  accessKey: "root"
  secretKey: "q1w2e3r4100@"
  region: "us-west-rack2"

# HA Configurations
rootCoordinator:
  replicas: 2
  activeStandby:
    enabled: true
  resources: 
    limits:
      cpu: 1
      memory: 2Gi

indexCoordinator:
  replicas: 2
  activeStandby:
    enabled: true
  resources: 
    limits:
      cpu: "0.5"
      memory: 0.5Gi

queryCoordinator:
  replicas: 2
  activeStandby:
    enabled: true
  resources: 
    limits:
      cpu: "0.5"
      memory: 0.5Gi

dataCoordinator:
  replicas: 2
  activeStandby:
    enabled: true
  resources: 
    limits:
      cpu: "0.5"
      memory: 0.5Gi

proxy:
  replicas: 2
  resources: 
    limits:
      cpu: 1
      memory: 2Gi  
EOF
  ]
}
