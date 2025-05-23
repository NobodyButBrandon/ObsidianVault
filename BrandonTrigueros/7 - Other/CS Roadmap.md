## 1. Roadmap General

| Orden | Asignatura                            | Por qué iniciar aquí                                                                                                                                                                                                |
| ----- | ------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| 1     | **Programación**                      | Te dota de la mentalidad de codificar y de conceptos esenciales (recursión, abstracción) [Teach Yourself Computer Science](https://teachyourselfcs.com/?utm_source=chatgpt.com)                                     |
| 2     | **Matemáticas para CS**               | Provee rigor lógico y herramientas para análisis algorítmico [Reddit](https://www.reddit.com/r/math/comments/17hhxhs/math_for_computer_science_roadmap_everything_you/?utm_source=chatgpt.com)                      |
| 3     | **Algoritmos y Estructuras de Datos** | Se apoyan en la programación y matemáticas para resolver problemas complejos [Reddit](https://www.reddit.com/r/learnprogramming/comments/gsansp/my_55step_selftaught_cs_curriculum_updated/?utm_source=chatgpt.com) |
| 4     | **Arquitectura de Computadores**      | Consolida cómo el hardware ejecuta tu código [Teach Yourself Computer Science](https://teachyourselfcs.com/?utm_source=chatgpt.com)                                                                                 |
| 5     | **Sistemas Operativos**               | Entiende la gestión de procesos, memoria y concurrencia [Reddit](https://www.reddit.com/r/learnprogramming/comments/gsansp/my_55step_selftaught_cs_curriculum_updated/?utm_source=chatgpt.com)                      |
| 6     | **Redes de Computadoras**             | Abarca protocolos y análisis de tráfico, fundamental para apps distribuidas [roadmap.sh](https://roadmap.sh/computer-science?utm_source=chatgpt.com)                                                                |
| 7     | **Bases de Datos**                    | Manejo eficiente del almacenamiento y las transacciones [GitHub](https://github.com/ossu/computer-science?utm_source=chatgpt.com)                                                                                   |
| 8     | **Lenguajes y Compiladores**          | Mejora tu comprensión de cómo los lenguajes y herramientas traducen tu código [Tamerlan](https://tamerlan.dev/best-resources-to-teach-yourself-computer-science/?utm_source=chatgpt.com)                            |
| 9     | **Sistemas Distribuidos**             | Diseña sistemas escalables y tolerantes a fallos [Teach Yourself Computer Science](https://teachyourselfcs.com/?utm_source=chatgpt.com)                                                                             |

---

## 2. ¿Por dónde empezar?

### 2.1 Programación como punto de partida

- **Recomendación principal**: comienza con un texto y curso que cambien tu forma de pensar, p.ej. _SICP_ y las **61A lectures** de Berkeley [Teach Yourself Computer Science](https://teachyourselfcs.com/?utm_source=chatgpt.com).
    
- **Objetivo**: en 100–150 h, absorbe conceptos de **recursión**, **abstracción de datos** y **entornos de ejecución**. [University of the People](https://www.uopeople.edu/blog/how-to-teach-yourself-computer-science-what-you-need-to-know/?utm_source=chatgpt.com)
    

### 2.2 Integración temprana de Matemáticas

- **Momento ideal**: tras los primeros módulos de programación, incorpora **Matemáticas Discretas** (lógica, combinatoria, teoría de grafos) en paralelo [Reddit](https://www.reddit.com/r/learnprogramming/comments/gsansp/my_55step_selftaught_cs_curriculum_updated/?utm_source=chatgpt.com).
    
- **Recursos**:
    
    - MIT 6.042J _Mathematics for Computer Science_ (notas y videos OCW) [Reddit](https://www.reddit.com/r/math/comments/17hhxhs/math_for_computer_science_roadmap_everything_you/?utm_source=chatgpt.com)
        
    - Tutoriales en GeeksforGeeks de Discrete Math para CS [GeeksforGeeks](https://www.geeksforgeeks.org/discrete-mathematics-tutorial/?utm_source=chatgpt.com)
        

> **Por qué no empezar sólo con matemáticas**: sin práctica de código, la abstracción matemática carece de contexto práctico; la programación brinda esa aplicación inmediata. [GitHub](https://github.com/ossu/computer-science?utm_source=chatgpt.com)

---

## 3. Plan de Estudio Detallado (150 h por materia)

Cada bloque incluye **libro**, **videos** y **proyecto**:

1. **Programación**
    
    - _SICP_ + Brian Harvey’s CS 61A [Teach Yourself Computer Science](https://teachyourselfcs.com/?utm_source=chatgpt.com)
        
    - **Proyecto**: resolver los ejercicios de SICP y 30 problemas en Exercism.
        
2. **Matemáticas para CS**
    
    - MIT 6.042J notas + OCW videos [Reddit](https://www.reddit.com/r/math/comments/17hhxhs/math_for_computer_science_roadmap_everything_you/?utm_source=chatgpt.com)
        
    - **Proyecto**: implementar algoritmos de grafos (BFS/DFS, Dijkstra) y probar combinatoria con código.
        
3. **Algoritmos y Estructuras de Datos**
    
    - _The Algorithm Design Manual_ (Skiena) + Coursera de Roughgarden [Reddit](https://www.reddit.com/r/learnprogramming/comments/gsansp/my_55step_selftaught_cs_curriculum_updated/?utm_source=chatgpt.com)
        
    - **Proyecto**: 100 ejercicios en LeetCode y desarrollo de librería propia de estructuras.
        
4. **Arquitectura de Computadores**
    
    - _Computer Systems: A Programmer’s Perspective_ [Teach Yourself Computer Science](https://teachyourselfcs.com/?utm_source=chatgpt.com)
        
    - **Proyecto**: Nand2Tetris capítulos 1–6 y simulador de CPU simple.
        
5. **Sistemas Operativos**
    
    - _OSTEP_ (Operating Systems: Three Easy Pieces) [Reddit](https://www.reddit.com/r/learnprogramming/comments/gsansp/my_55step_selftaught_cs_curriculum_updated/?utm_source=chatgpt.com)
        
    - **Proyecto**: añadir funcionalidades a xv6 via labs de OSTEP.
        
6. **Redes de Computadoras**
    
    - _Computer Networking: A Top-Down Approach_ [roadmap.sh](https://roadmap.sh/computer-science?utm_source=chatgpt.com)
        
    - **Proyecto**: construir un servidor HTTP básico y analizar paquetes con Wireshark labs.
        
7. **Bases de Datos**
    
    - CS 186 videos de Berkeley + “Red Book” (Readings in Database Systems) [GitHub](https://github.com/ossu/computer-science?utm_source=chatgpt.com)
        
    - **Proyecto**: implementar un índice B-tree y una versión simple de SQL engine.
        
8. **Lenguajes y Compiladores**
    
    - _Crafting Interpreters_ (Nystrom) + Dragon Book select chapters [Tamerlan](https://tamerlan.dev/best-resources-to-teach-yourself-computer-science/?utm_source=chatgpt.com)
        
    - **Proyecto**: crear un intérprete Lisp-like completo.
        
9. **Sistemas Distribuidos**
    
    - _Designing Data-Intensive Applications_ (Kleppmann) [Teach Yourself Computer Science](https://teachyourselfcs.com/?utm_source=chatgpt.com)
        
    - **Proyecto**: toy key-value store con protocolo RAFT.
        

---

## 4. Proyectos y Práctica Continua

- **Open-source para principiantes**: repos de “good first issue” en GitHub [The Valuable Dev](https://thevaluable.dev/learning-computer-science-software-developer/?utm_source=chatgpt.com)
    
- **Desafíos de programación**: resolve semanalmente problemas en LeetCode/HackerRank [Reddit](https://www.reddit.com/r/learnprogramming/comments/gsansp/my_55step_selftaught_cs_curriculum_updated/?utm_source=chatgpt.com)
    
- **Mini-apps temáticos**: bots de chat, crawlers, pipelines de datos básicos [roadmap.sh](https://roadmap.sh/computer-science?utm_source=chatgpt.com)
    
- **Contribuciones reales**: mejora documentación, tests o pequeñas features en proyectos populares [Hacker News](https://news.ycombinator.com/item?id=34673581&utm_source=chatgpt.com)
    

---

## 5. Siguientes Pasos y Consejos

- **Cadencia diaria**: bloque de 2 h de teoría + 2 h de práctica, 5 días/semana [Reddit](https://www.reddit.com/r/learnprogramming/comments/gsansp/my_55step_selftaught_cs_curriculum_updated/?utm_source=chatgpt.com)
    
- **Revisitar materias**: repasa cada 6 meses para consolidar [GitHub](https://github.com/ossu/computer-science?utm_source=chatgpt.com)
    
- **Simulacros de entrevista**: incluye algoritmos y diseño de sistemas [Software Engineering Stack Exchange](https://softwareengineering.stackexchange.com/questions/152240/how-do-i-completely-self-study-computer-science?utm_source=chatgpt.com)
    
- **Networking**: participa en meetups y foros de CS  [Tamerlan](https://tamerlan.dev/best-resources-to-teach-yourself-computer-science/?utm_source=chatgpt.com)
    

Con este roadmap equilibrado y progresivo, comenzarás por **programación**, incorporarás **matemáticas** de inmediato, y avanzarás sistemáticamente por los bloques críticos de CS, asegurando una **base sólida** y **proyectos demostrables**. ¡A por tu meta!