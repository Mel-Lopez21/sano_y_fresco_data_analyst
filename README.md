# 🛒 Sano y Fresco: End-to-End Data Analytics & Process Optimization

## 📊 Descripción del Proyecto
Este proyecto es un análisis integral de datos "end-to-end" desarrollado para **Sano y Fresco**, una empresa de venta de productos de supermercado. A pesar de haber generado más de 39,8 millones de euros anuales, el negocio experimentó una drástica caída del 82% en sus ingresos mensuales desde enero a diciembre[cite: 3]. 

El objetivo principal de este proyecto es identificar los cuellos de botella comerciales, diversificar el riesgo de un catálogo altamente concentrado en un solo departamento (que representa el 93% de las ventas) e incrementar el ticket medio actual de 19,34 € mediante la optimización operativa y estrategias de *cross-selling*[cite: 3].

## 🛠️ Stack Tecnológico
Para abarcar todas las fases del ciclo de vida del dato, se utilizó el siguiente stack:
*   **SQL (SQLite):** Extracción, limpieza y Análisis Exploratorio de Datos (EDA) sobre una base de datos transaccional de más de 4.9 millones de registros[cite: 1, 4].
*   **Python (Pandas):** Procesamiento de datos y desarrollo de un modelo de *Market Basket Analysis* utilizando reglas de asociación (Soporte, Confianza y Lift)[cite: 4].
*   **Power BI & DAX:** Modelado de datos (esquema estrella) y diseño de un Cuadro de Mando gerencial interactivo[cite: 2].

## 📂 Estructura del Repositorio
*   `/data`: Datasets procesados y reglas de asociación exportadas (`reglas.csv`).
*   `/sql`: Consultas utilizadas para la exploración inicial del rendimiento por departamento y cliente.
*   `/notebooks`: Notebook de Jupyter (`TPE_MarketBasketAnalysis_colab.ipynb`) con el desarrollo del algoritmo de afinidad.
*   `/dashboard`: Archivo `.pbix` con el tablero interactivo de Power BI.
*   `/docs`: Documentación estratégica, levantamiento de requerimientos y plan de validación.

## 🚀 Hallazgos y Optimización de Procesos
A través del Cuadro de Mando y el modelo analítico, se identificaron 399 reglas de asociación validadas estadísticamente[cite: 4]. Esto permite ejecutar mejoras directas en dos frentes del negocio:

1.  **Optimización Comercial (Cross-Selling):**
    Identificamos fuertes relaciones entre productos orgánicos. Por ejemplo, los clientes que adquieren *Cilantro Orgánico* tienen altas probabilidades de sumar *Limones* a su carrito, presentando un multiplicador de atracción (*Lift*) de 3.60 y una confianza del 25.4%[cite: 4]. Se desarrolló un simulador interactivo para proyectar el impacto en ingresos de estas promociones conjuntas.

2.  **Optimización de Operaciones y Logística:**
    Estos datos no solo impactan en el e-commerce, sino en el piso de operaciones. El análisis visual mediante matrices de dispersión permite a la gerencia reestructurar el *layout* físico del almacén. Acercar físicamente los productos con alto *Lift* (como el Ajo Orgánico y la Cebolla Amarilla[cite: 4]) reduce significativamente los tiempos de *picking* (armado de pedidos), optimizando la eficiencia logística integral.

## 📷 Vistas del Dashboard
*(Aquí debes reemplazar las URLs con el link real a tus imágenes alojadas en GitHub)*

![Visión General del Negocio](ruta/a/tu/imagen_dashboard_1.jpg)
*Dashboard estratégico mostrando la evolución de ventas y composición del ticket medio.*

![Análisis de Afinidad y Cesta](ruta/a/tu/imagen_dashboard_2.jpg)
*Panel interactivo del Market Basket Analysis, filtrando las 'Reglas de Oro' para la toma de decisiones.*

## 📬 Contacto
Si te interesa conversar sobre análisis de datos, optimización de procesos operativos o inteligencia de negocios, ¡conectemos!
*   **LinkedIn:** [Tu URL de LinkedIn]
*   **Email:** [Tu Correo Electrónico]