# Enunciado

[[Proyecto 1-2025.pdf]]

Para el proyecto final del curso también pueden utilizar datos del satélite GOES, específicamente los del instrumento llamado Extreme Ultraviolet and X-ray Irradiance Sensors (EXIS) y dentro de EXIS los que corresponden a los datos de sfxr.

Los datos del satélite GOES los pueden encontrar desde el siguiente enlace [https://nube.citic.ucr.ac.cr/index.php/s/3CcdjpMxsiYtagr](https://nube.citic.ucr.ac.cr/index.php/s/3CcdjpMxsiYtagr)

Una vez adentro la ruta es GOES/Repositorio0X/EXIS/SFXR

Las columnas con las que deben trabajar son: product_time, time, solar_array_current_channel_index_label, irradiance_xrsa1, irradiance_xrsa2, irradiance_xrsb1, irradiance_xrsb2, primary_xrsb, dispersion_angle, integration_time.

Para leer el archivo pueden utilizar el ejemploLeerArchivoNC.py

O también pueden utilizar como fuente directamente el satélite GOES utilizando la librería [sunpy](https://sunpy.org/)

Recuerden que extra el análisis de datos, se debe calcular el tiempo y cuanto crece el almacenamiento al guardar los datos de 1 día, 1 semana y 1 mes.

Pueden realizar pruebas o mediciones que les parezcan interesantes.

Además, independientemente de los datos que utilicen, se deben seguir todos los pasos como documentación de los metadatos, etc.

[[opensourcedatapipeline-main.zip]]

# Solución
[Real-Time-Data-Pipeline-with-Modern-Big-Data-Stack](https://github.com/BrandonTrigueros/Real-Time-Data-Pipeline-with-Modern-Big-Data-Stack)