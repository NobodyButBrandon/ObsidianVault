17-Mar-2025 22:10
Up: [[Data Warehouse Systems - Vaisman & Zimanyi]]
# Ch1 - Introduction

## Reference
[[Data Warehouse Systems.pdf#page=27&offset=0,617,0|Data Warehouse Systems, Chapter 1 Introduction]]
___
# Notes
Una organización produce e interactúa con una gran cantidad de datos y se desea  poder transformar estos datos en información valiosa para tomar decisiones informadas. Existen lo que se llama sistemas de ayuda a la toma de decisiones (decision-support systems), los cuales son sistemas que realizan una serie de tareas con el fin de almacenar la información en un almacén de datos (**data warehouse**). 

Las bases de datos típicas operacionales fueron concebidas con propósitos específicos para el día a día pero presentan problemas para satisfacer los requerimientos del creciente área del análisis de datos:

| Propósitos                                                                   | Problemas                                                                              |
| :--------------------------------------------------------------------------- | :------------------------------------------------------------------------------------- |
| Proporcionar técnicas de recuperación (para asegurar consistencia de datos). | No incluyen datos históricos.                                                          |
| Asegurar accesos concurrentes de varios usuarios.                            | Rendimiento pobre en queries complejos con muchas tablas y grandes volúmenes de datos. |

**Almacén de datos:**
> Recopilación de datos <u>orientados a temas concretos</u>, <u>integrados</u>, <u>no volátiles</u>
 > y <u>variables en el tiempo</u> para apoyar las decisiones de gestión.

<u>Orientados a temas concretos</u>: 
El almacén se enfoca en temas de análisis de acuerdo a los requerimientos de los directivos.

<u>Integrados</u>:
Me dice que el almacén se construye con datos de operación internos y de sistemas externos.

<u>No volátiles</u>:
Los datos se almacenan durante un largo periodo de tiempo. La modificación o extracción de datos no está permitido, solo la purga.

<u>Variables en el tiempo</u>:
El almacén va a crecer junto con los datos y va a almacenar información de cómo ha ido cambiando los datos con el tiempo.

**Modelado multidimensional**
Consiste en organizar las tablas relacionales en estructuras especiales (esquemas de estrella y copo de nieve) que permitan ver los datos como hechos asociados a distintas dimensiones.  Sobre esta vista relacional el OLAP construye un cubo de datos que provee una vista multidimensional de los datos.

___
#### Review questions
1. _Why are traditional databases called operational or transactional? Why are these databases inappropriate for data analysis?_
Because they are designed to support daily business operations, such as frequent updates, inserts, and deletions. They prioritize concurrent access and data consistency through recovery techniques. Are inappropriate for data analysis because 
	1. They lack **historical data**.
	2. **Perform poorly with complex queries** involving multiple tables or large aggregations.
	3. Face challenges in **integrating data from disparate systems** due to differences in data definitions.
 
2. _Discuss four main characteristics of data warehouses._
The four main characteristics of data warehouses are:
- Subject-oriented: Focused on **specific analytical subjects** like sales or inventory.
- Integrated: Data is **combined from multiple operational or external systems** into a unified schema.
- Nonvolatile: **Data is read-only and accumulated over time** without modifications or deletions.
- Time-varying: **Tracks data evolution over time**, such as monthly sales trends.
 
3. _Describe the different components of a multidimensional model, that is, facts, measures, dimensions, and hierarchies._
The components of a multidimensional model include:
- Facts: The **central focus of analysis** (e.g., sales transactions).
- Measures: **Numeric attributes within facts** used for quantitative evaluation (e.g., revenue).
- Dimensions: **Perspectives** for analyzing measures (e.g., time, location).
- Hierarchies: **Layered attributes within dimensions** for granular analysis (e.g., city → state → country in a location dimension).
   
4. _What is the purpose of online analytical processing (OLAP) systems and how are they related to data warehouses?_
 Online analytical processing (OLAP) systems enable **multidimensional analysis** (e.g., slicing, drilling down) of data warehouse data. They **build data cubes** from star or snowflake schemas to support **complex queries**. OLAP tools interact with data warehouses to provide interactive exploration and decision-making capabilities.
   
5. _Specify the different steps used for designing a database. What are the specific concerns addressed in each of these phases?_
The steps for designing a database are:
- **Requirements specification**: Collecting user and organizational needs.
- **Conceptual design**: Creating a high-level model (e.g., ER model for operational databases, MultiDim for warehouses).
- **Logical design**: Translating the conceptual model into an implementation paradigm (e.g., relational model or star schema).
- **Physical design**: Optimizing performance through indexing, partitioning, and storage structures.

6. _Explain the advantages of using a conceptual model when designing a data warehouse._
Using a conceptual model in data warehouse design improves clarity by representing complex structures (facts, dimensions, hierarchies) at a high abstraction level. It **bridges user requirements and technical implementation**, making schemas easier to understand for non-technical stakeholders.
   
7. _What is the difference between the star and the snowflake schemas?_
The star schema uses a single denormalized table per dimension, even for hierarchies, simplifying queries but increasing redundancy. The snowflake schema normalizes dimensions by splitting hierarchies into multiple tables, reducing redundancy but complicating queries with more joins.
   
8. _What is the extraction, transformation, and loading (ETL) process?_
The extraction, transformation, and loading (ETL) process involves:
- Extraction: Pulling data from **heterogeneous sources** (e.g., operational databases).
- Transformation: **Cleaning**, **integrating**, and **formatting** data to fit the warehouse schema.
- Loading: **Populating the warehouse** with transformed data. ETL ensures data quality and usability for analysis.