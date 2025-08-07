# Enunciado
## Primera parte
La siguiente lista indica la asignación de máquinas con Ubuntu Linux, para ingresar deben utilizar el usuario "admin" y la contraseña "adm!2025" (ignorar las comillas en ambos casos).

|                |                |                              |
| -------------- | -------------- | ---------------------------- |
| 172.16.202.198 | ci-0141-u-mv22 | TRIGUEROS LARA BRANDON JESUS |
Puede realizar este laboratorio en una de las máquinas virtuales del curso o cualquier otra máquina que tenga a su disposición en la que tenga permisos administrativos. Se le recomienda que utilice la máquina con Ubuntu Linux asignada en el curso. Recuerde que debe entregar como reporte un documento en formato pdf, en donde documente, explique y presente imágenes que permitan al docente y al asistente del curso verificar su comprensión y cumplimiento en cada ítem.

1.     Investigue y escriba una pequeña descripción sobre MongoDB.

2.     Para cada uno de los siguientes comandos describa que realizan y ejecútelos:
a.     sudo apt-get install gnupg curl
b.     curl -fsSL https://www.mongodb.org/static/pgp/server-8.0.asc |    sudo gpg -o /usr/share/keyrings/mongodb-server-8.0.gpg   --dearmor
c.     echo "deb [ arch=amd64,arm64 signed-by=/usr/share/keyrings/mongodb-server-8.0.gpg ] https://repo.mongodb.org/apt/ubuntu noble/mongodb-org/8.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-8.0.list
d.     sudo apt update
e.     sudo apt-get install -y mongodb-org
f.      sudo systemctl start mongod
g.     sudo systemctl status mongod
h.     sudo systemctl enable mongod
i.      wget [https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh](https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh)
j.      bash ~/Miniconda3-latest-Linux-x86_64.sh
k.     conda create --name my-env
l.      conda activate my-env
m.   conda update -n base -c defaults conda
n.    conda install -n my-env -c conda-forge jupyterlab
o.    conda install -n my-env pymongo pandas
f.     sudo chown mongodb /home/admin/data
g.    sudo chown mongodb /home/admin/data/db
h.    sudo chown mongodb /home/admin/data/db/mongodb.log

3.     Termine de configurar Jupyter Lab y ejecute lo solicitado en el archivo pdf de la segunda parte del laboratorio de MongoDB.
## Segunda parte
[[SegundaParteLaboratorioMongoDB.ipynb]]

# Solución
[[lab_mongo.pdf]]
