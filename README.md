![maxresdefault](https://github.com/user-attachments/assets/ffd3df8a-98d7-4358-a040-ccf3fc265aaa)



## SuperSet | Kubernetes ☸️
Superset is a modern data exploration and data visualization platform. Superset can replace or augment proprietary business intelligence tools for many teams. Superset integrates well with a variety of data sources.


#### 🎯 Key Features:

- **⚡ High Performance at Scale and High Availability**
- **🔌 Support for Various Vector Index Types and Hardware Acceleration**
- **🔍 Flexible Multi-tenancy and Hot/Cold Storage**
- **🤖 Sparse Vector for Full Text Search and Hybrid Search**
- **📈 Data Security and Fine-grain Access Control**


☁️ Features
```
✅ Multi-Cloud Ingress Support: Generic (NGINX), AWS ALB, GKE ingress controllers and Gateway API
✅ TLS/SSL Configuration: Per-service TLS configuration with custom certificates
✅ Google Cloud Integration: GKE managed certificates, Cloud Armor, and BackendConfig support
✅ AWS Integration: ALB ingress with shared load balancer support
✅ Authentication: Dex OIDC integration with GitHub, Google, and other providers

```

Verify the installation
```
Download the example code.
wget https://raw.githubusercontent.com/milvus-io/pymilvus/master/examples/hello_milvus.py
python3 hello_milvus.py
```

```python
...
connections.connect("default", host="milvus-06b515b1ce9ad10.elb.us-east-2.amazonaws.com", port="19530")
...
```


🚀 
```
terraform init
terraform validate
terraform plan -var-file="template.tfvars"
terraform apply -var-file="template.tfvars" -auto-approve
```





