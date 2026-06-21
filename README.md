<h1>PowerShell Local Groups Management Toolkit</h1>
<p align="center">
  <img src="https://img.shields.io/badge/PowerShell-5.1+-blue?logo=powershell&logoColor=white">
  <img src="https://img.shields.io/badge/Windows-10%20%7C%2011-0078D6?logo=windows&logoColor=white">
  <img src="https://img.shields.io/badge/License-MIT-green">
  <img src="https://img.shields.io/badge/Status-Finished-brightgreen">
</p>
Una herramienta en PowerShell diseñada para la administración y gestión de grupos locales en Windows de forma rápida, interactiva y centralizada desde consola.
Este toolkit simplifica tareas comunes de administración de grupos sin necesidad de usar directamente la interfaz gráfica de Windows.
<br><br>
⚙️ ¿Qué es esta herramienta?
Es un menú interactivo de administración de grupos locales que permite realizar operaciones básicas de forma guiada, reduciendo errores y agilizando la gestión del sistema.
Incluye control de acceso inicial y validación de usuario antes de permitir el uso de las funciones.
<br><br>
🧰 Funcionalidades principales
<br><br>
👀 Inventario del sistema
Listar todos los grupos locales del equipo
<br><br>
➕ Gestión de grupos
Crear nuevos grupos locales
Eliminar grupos existentes
<br><br>
👤 Gestión de usuarios
Añadir usuarios a un grupo específico
Consultar usuarios pertenecientes a un grupo
<br><br>
🚪 Control del sistema
Salida segura del menú interactivo
<br><br>
🔐 Control de acceso
La herramienta incluye una validación básica de usuario antes de acceder al sistema.
Usuario autorizado por defecto:
Hugo

Si el usuario no está autorizado, el script finaliza automáticamente.
<br><br>
🚀 Ejecución
Guardar el archivo como:
groups-toolkit.ps1
Abrir PowerShell como administrador
Ejecutar:
.\groups-toolkit.ps1
<br><br>
⚠️ Requisitos del sistema
Windows 10 / 11
PowerShell 5.0 o superior
Permisos de administrador (requerido para modificaciones del sistema)
Uso de comandos nativos net localgroup
<br><br>
🧠 Arquitectura del toolkit
El script está estructurado en módulos funcionales:

🔐 Control de acceso
Validación de usuario autorizado
<br><br>
📋 Motor de menú
Interfaz interactiva en bucle
<br><br>
🧩 Módulos de gestión
Listado de grupos
Creación de grupos
Eliminación de grupos
Gestión de usuarios en grupos
<br><br>
🚪 Control de salida
Cierre seguro del entorno
<br><br>
🛡️ Seguridad y buenas prácticas
La herramienta realiza cambios en el sistema local
Se recomienda ejecutarla en entornos controlados o de pruebas
Uso bajo responsabilidad del administrador del sistema
<br><br>
<br><br>
🎯 Objetivo del proyecto
Este toolkit está diseñado como base para:

Automatización de tareas de administración local
Aprendizaje de PowerShell en entorno real
Simulación de herramientas de sysadmin
Práctica de scripting estructurado

👨‍💻 Autor
Hugo Arcones
<br><br>
