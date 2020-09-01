remove network interface

get-netad** - Check if virtual network exist, if yes, run the followiing command.


stop-service hns
stop-service docker
del 'C:\ProgramData\Microsoft\Windows\hns\hns.data'
start-service hns
start-service docker
