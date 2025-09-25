<img width="2280" height="1314" alt="milvus_architecture_2_6" src="https://github.com/user-attachments/assets/ba441f65-3fd0-47bb-990a-8b756fd34cd5" />


## Milvus | Kubernetes ☸️
Milvus is a high-performance vector database built for scale. It powers AI applications by efficiently organizing and searching vast amounts of unstructured data, such as text, images, and multi-modal information.

Milvus is designed to handle vector search at scale. It stores vectors, which are learned representations of unstructured data, together with other scalar data types such as integers, strings, and JSON objects. Users can conduct efficient vector search with metadata filtering or hybrid search. Here are why developers choose Milvus as the vector database for AI applications:


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





