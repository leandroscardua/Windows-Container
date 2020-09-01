# Docker Swarm on Windows

![alt text]

# Installing docker swarm on node 1
curl.exe -LO https://raw.githubusercontent.com/leandroscardua/Kubernetes-Windows/master/windows-node.ps1
.\windows-node1.ps1 -servername win19-n1 | Out-Null

# Installing docker swarm on node 2
curl.exe -LO https://raw.githubusercontent.com/leandroscardua/Kubernetes-Windows/master/windows-node.ps1
.\windows-node2.ps1 -servername win19-n2 | Out-Null
