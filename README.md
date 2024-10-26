# GoLoadBalancer

A simple round-robin load balancer implemented in Go. This application distributes incoming HTTP requests to multiple backend servers.

## Features

- Round-robin load balancing
- Health check for backend servers
- Configurable backend servers through command-line arguments
- Lightweight Docker image for easy deployment

![image](https://github.com/user-attachments/assets/1423462a-1dc3-490e-994b-1be44790a7b2)



## Prerequisites

- Go 1.22.3 or higher
- Docker (optional, for running in a container)

## Getting Started

### Clone the Repository

```bash
git clone https://github.com/Yashh56/GoLoadBalancer.git
cd GoLoadBalancer
```
### Build the Application

```bash
go build -o load_balancer
```

### OR

```bash
docker build -t load_balancer .
```


### Run the Application

```bash
./load_balancer -backends=http://backend1:8081,http://backend2:8082,http://backend3:8083
```
### OR
```bash
docker run -p 3030:3030 load_balancer
```


#### This load balancer is inspired by the article <a href="https://kasvith.me/posts/lets-create-a-simple-lb-go/" target="_blank">Let's Create a Simple Load Balancer in Go </a> .

