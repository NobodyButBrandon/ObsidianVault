# Enunciado
Realice el siguiente tutorial y documente todo lo realizado

[https://developer.ibm.com/tutorials/ba-multi-data-center-cassandra-cluster-kubernetes-platform/](https://developer.ibm.com/tutorials/ba-multi-data-center-cassandra-cluster-kubernetes-platform/)

Los que no entregaron el laboratorio el día de hoy, por favor agregar lo relacionado a kind o k3d o la herramienta que haya utilizado. Empiecen dando una pequeña descripción de la mima y una explicación de cada uno de los comandos.

Por ejemplo en el caso de utilizar k3d, pueden ejecutar y describir que realizan los siguientes comandos:

1. k3d version
2. sudo kubectl cluster-info
3. sudo k3d cluster create multi-node-cluster   --agents 6   --k3s-arg "--node-name=nodea1@agent:0"   --k3s-arg "--node-name=nodea2@agent:1"   --k3s-arg "--node-name=nodea3@agent:2"   --k3s-arg "--node-name=nodeb1@agent:3"   --k3s-arg "--node-name=nodeb2@agent:4"   --k3s-arg "--node-name=nodeb3@agent:5"
4. sudo kubectl get nodes
5. sudo kubectl label nodes nodea1 dc=DC1
    sudo kubectl label nodes nodea2 dc=DC1
    sudo kubectl label nodes nodea3 dc=DC1
    sudo kubectl label nodes nodeb1 dc=DC2
    sudo kubectl label nodes nodeb2 dc=DC2
    sudo kubectl label nodes nodeb3 dc=DC2
6. sudo kubectl get nodes --show-labels
7. sudo kubectl create namespace c7a
8. Descargar y describir el contenido del archivo [https://github.com/ideagw/multi-dc-c7a-k8s/blob/master/service.yaml](https://github.com/ideagw/multi-dc-c7a-k8s/blob/master/service.yaml
9. sudo kubectl create -f service.yaml -n c7a
10. Descargar y describir el contenido del archivo  [https://github.com/ideagw/multi-dc-c7a-k8s/blob/master/local_pvs.yaml](https://github.com/ideagw/multi-dc-c7a-k8s/blob/master/local_pvs.yaml)
11. sudo kubectl -n c7a create -f local_pvs.yaml
12. Descargar y describir el contenido del archivo  [https://github.com/ideagw/multi-dc-c7a-k8s/blob/master/statefulset-a.yaml](https://github.com/ideagw/multi-dc-c7a-k8s/blob/master/statefulset-a.yaml)
13. Descargar y describir el contenido del archivo [https://github.com/ideagw/multi-dc-c7a-k8s/blob/master/statefulset-b.yaml](https://github.com/ideagw/multi-dc-c7a-k8s/blob/master/statefulset-b.yaml)

Recuerde documentar si realiza cambios en configuraciones o archivos.
# Solución
[[lab cassandra.pdf]]