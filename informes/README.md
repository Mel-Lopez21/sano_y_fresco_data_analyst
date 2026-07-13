<p align="center">
  <img src="images/portada_sano_y_fresco.png" width="1000">
</p>

---

# 📊 Informe Estratégico: Análisis de Negocio y Optimización Operativa

## 1. Resumen y Contexto del Negocio
Durante el último año fiscal, **Sano y Fresco** generó un ingreso total de 39.854.875,32 €. A pesar de este volumen de facturación, el análisis de los datos transaccionales reveló alertas críticas para la sostenibilidad de la empresa:
*   **Caída sostenida:** Se registró una alarmante disminución del 82% en los ingresos mensuales desde enero hasta diciembre.
*   **Riesgo por concentración:** Existe una preocupante falta de diversificación, donde un solo departamento concentra aproximadamente el 93% de los ingresos totales. 
*   **Micro-transacciones:** Contamos con un volumen altísimo de pedidos (más de 2 millones), pero con un valor promedio por pedido muy bajo, de apenas 19,34 €.

El objetivo de este proyecto es utilizar la analítica de datos no solo para entender este escenario comercial, sino para diseñar **estrategias accionables de cross-selling** y **optimizar los procesos logísticos** de preparación de pedidos.

---

## 2. Exploración y Extracción de Datos (SQL)
Para diagnosticar la situación comercial, el primer paso consistió en interrogar la base de datos relacional (SQLite). Se diseñaron consultas estructuradas para extraer KPIs vitales de operaciones y ventas.

### A. Visión General y Tendencia de Ingresos
Se evaluó la facturación global y su comportamiento a lo largo del tiempo para aislar la caída estacional y cuantificar el volumen del problema.
![Consulta SQL - Tendencia de Ventas](../images/sql_01_ingresos.jpg)
*Consulta SQL utilizada para agrupar y sumar los ingresos mensuales.*

### B. Rendimiento por Secciones y Top Productos
Para entender la concentración del riesgo en la cadena de suministro, se identificaron los artículos que sostienen el flujo de caja, destacando una altísima dependencia en productos orgánicos (particularmente Bananas y Fresas, que lideran el volumen de ventas).
![Consulta SQL - Top Productos](../images/sql_02_productos.jpg)
*Query desarrollada para aislar el Top 10 de productos por ingresos y volumen de ventas.*

### C. Comportamiento del Cliente y Ticket Medio
La base de clientes demostró estar muy fragmentada. Ningún cliente individual tiene un impacto significativo en los ingresos totales, lo que refuerza la necesidad operativa de aplicar estrategias de aumento del ticket medio en cada transacción.
![Consulta SQL - Comportamiento de Clientes](../images/sql_03_clientes.jpg)
*Extracción del ticket medio por cliente y valor promedio por pedido.*

---

## 3. Desarrollo del Modelo Analítico (Python)
Entendiendo que el valor promedio del pedido era un punto de dolor operativo (19,34 €), se desarrolló un algoritmo de **Market Basket Analysis (Análisis de la Cesta de la Compra)** utilizando Python y la librería Pandas. 

El objetivo: descubrir relaciones probabilísticas ocultas entre los productos para implementar sistemas de recomendación inteligentes y eficientizar la disposición física de la mercadería. Se descubrieron 399 reglas de asociación validadas mediante tres métricas clave:
*   **Soporte:** Frecuencia de compra del combo en el total de transacciones.
*   **Confianza:** Tasa de conversión (probabilidad de llevar el producto B si ya se tiene el A).
*   **Lift (Atracción):** Fuerza de la relación estadística real entre ambos artículos.

---

## 4. Conclusiones y Plan de Acción Estratégico
El cruce de la exploración en SQL, el modelado algorítmico en Python y la visualización en Power BI deriva en recomendaciones fundamentales para la dirección técnica y comercial:

### A. Mejora de Procesos Logísticos (Layout y Picking)
*   **Acción:** Reestructurar el *layout* del almacén central o piso de ventas basándose en las reglas de asociación con mayor *Lift* (Atracción). 
*   **Impacto:** Acercar físicamente los productos que se compran juntos (como el Ajo Orgánico y la Cebolla Amarilla) reducirá drásticamente las distancias de recorrido y los tiempos de ciclo en el proceso de *picking* (armado de pedidos), optimizando la estructura de costos operativos.

### B. Optimización Comercial y Cross-Selling
*   **Acción:** Implementar el sistema de recomendación analítico en la plataforma e-commerce.
*   **Impacto:** Sugerir dinámicamente productos complementarios (ej. ofrecer Limones a quien agrega Cilantro a su cesta) aumentará mecánicamente los ingresos medios por cliente sin incrementar los costos de adquisición.

### C. Diversificación del Riesgo Logístico y Comercial
*   **Acción:** Ampliar la oferta introduciendo nuevos productos no orgánicos e impulsar el flujo de inventario de los departamentos menos representados.
*   **Impacto:** Reducir la vulnerabilidad logística actual de la empresa (dependencia del 93% en un solo departamento) y asegurar la continuidad del negocio ante quiebres de stock.
