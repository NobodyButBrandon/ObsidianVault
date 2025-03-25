1. **Investigar que es un ODBC**
_**R/**_  ODBC es como un traductor universal para bases de datos. Permite que 
cualquier aplicación (como Excel o una web) se comunique de manera sencilla con distintos sistemas de bases de datos (MySQL, Oracle, SQL Server, etc.) usando el mismo "idioma", que es SQL. En lugar de tener que escribir código especial para cada tipo de base de datos, ODBC gestiona la conexión a través de tres componentes clave:

- La aplicación: El programa que necesita acceder a los datos.
- El administrador de controladores ODBC: Se encarga de dirigir la solicitud al controlador adecuado.
- El controlador ODBC: Específico para cada sistema de base de datos, traduce las consultas de la aplicación al formato que entiende ese sistema.
  
En resumen, ODBC facilita la interoperabilidad y flexibilidad, permitiendo cambiar de base de datos sin modificar la aplicación y funcionando en distintos sistemas operativos. Es una herramienta fundamental para lograr que nuestras aplicaciones sean más independientes y adaptables.
   
2. **Averiguar cual driver y con qué versión se utilizaba para conectarse a la base de datos del PI de bases - inge. soft.**
_**R/**_ System Data SqlClient (Microsoft) v 4.8.6

3. **Cual fue el connection string que se utilizó.**
_R/_ "BMTContext": "Data Source=ucr-bd.database.windows.net;Initial Catalog=BMT_database;Persist Security Info=True;User ID=usr_bmt;Password=U$R#2024tmb;TrustServerCertificate=True"