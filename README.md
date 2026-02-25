<img width="313" height="542" alt="image" src="https://github.com/user-attachments/assets/b9ac174c-f216-4812-a340-7124afe056ab" />
<img width="317" height="540" alt="image" src="https://github.com/user-attachments/assets/cd9b9cfb-4471-4e67-90f7-7ec45397b547" />
<img width="312" height="543" alt="image" src="https://github.com/user-attachments/assets/88845453-483a-4db5-a666-0c03e3bcb576" />
<img width="1031" height="653" alt="image" src="https://github.com/user-attachments/assets/50390b2e-1816-4766-b147-4920ce5094c8" />
<img width="1022" height="648" alt="image" src="https://github.com/user-attachments/assets/127d8adc-e438-482b-af88-2c9bb1c4e26c" />
<img width="1027" height="647" alt="image" src="https://github.com/user-attachments/assets/452586c3-f2e9-4a97-a15e-426b04adc6eb" />

# myapp

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.



**Resumen de la App:**

Vamos a construir una app de librería simple con Flutter. Tendrá un look oscuro y moderno, con 3 pantallas: Inicio, Ofertas y Carrito. La idea es que la navegación sea fluida y la UI tenga un efecto de `hover` para una mejor experiencia de usuario en web.

**Stack y Configuración:**

*   **Framework:** Flutter
*   **Paquetes:** `google_fonts`
*   **Assets:** Usaremos imágenes locales desde una carpeta `imagenes/`.

---

### **1. Configuración Principal y Tema (en `main.dart`)**

1.  **MaterialApp:**
    *   Quita el banner de "debug".
    *   Define estas rutas:
        *   `/`: `PaginaUno` (Inicio)
        *   `/ofertas`: `PaginaDos` (Ofertas)
        *   `/carrito`: `PaginaTres` (Carrito)
    *   La ruta inicial debe ser `/`.

2.  **Tema Global (`ThemeData`):**
    *   Usa `Material3`.
    *   Modo oscuro (`Brightness.dark`).
    *   Color primario: `0xFFF1C40F` (amarillo).
    *   Fondo de la app (`scaffoldBackgroundColor`): `0xFF0F172A` (azul oscuro).
    *   Tipografía: `GoogleFonts.robotoTextTheme()` para el texto general.
    *   Estilo del `AppBar` (`appBarTheme`):
        *   Fondo: `0xFF1E293B` (azul-gris).
        *   Título centrado y con elevación de `10`.
        *   Estilo del título (`titleTextStyle`): `GoogleFonts.oswald()`, blanco, negrita, `letterSpacing: 2`, `fontSize: 20`.

---

### **2. Detalle de las Pantallas**

**Primero, un widget reutilizable para el efecto `hover`:**

Crea un `StatefulWidget` llamado `HoverableWidget`. Cuando el cursor pase por encima, debe animar una pequeña escala (ej. `scale(1.05)`). Usa una duración de `200ms`. Lo usaremos en botones e ítems interactivos.

#### **Pantalla 1: Inicio (`PaginaUno`)**

*   **AppBar:**
    *   El título debe ser "LIBRERÍA - Alfredo Martinez 6 I" con la fuente `Oswald` y un ícono de libro (`Icons.menu_book`) al lado.
    *   Aplica el `HoverableWidget` a los botones del `AppBar`.

*   **Body:**
    *   Usa un `SingleChildScrollView` para evitar desbordes.
    *   Agrega una barra de búsqueda (`TextField`) con el placeholder "Buscar libro..." y un ícono de lupa.
    *   Bajo la búsqueda, una `Row` con texto simple: "Inicio" y "Categorías", y otro ícono de carrito que lleve a `/ofertas`.
    *   Una sección de "LIBROS DESTACADOS" con un ícono de estrella.
    *   Una lista de 4 libros. Cada ítem debe:
        *   Ser `clicable` y llevar a `/ofertas`. Aplícale el `HoverableWidget`.
        *   Mostrar la imagen del libro, título, precio y un botón de "Ver".
    *   Un botón principal para "Iniciar Sesión".
    *   Un pequeño footer con enlaces de texto para "Ofertas", "Contacto" y icono de carrito que lleva a '/ofertas'.

#### **Pantalla 2: Ofertas (`PaginaDos`)**

*   **AppBar:**
    *   Un botón para volver atrás (`Icons.arrow_back_ios`).
    *   Título: "OFERTAS AJMG" (con fuente `Oswald`).

*   **Body:**
    *   También con `SingleChildScrollView`.
    *   Crea una sección para "OFERTAS ESPECIALES". Visualmente, debe tener una línea vertical a la izquierda de color amarillo (`0xFFF1C40F`).
    *   Debajo, una tarjeta de libro que sea `clicable` y lleve a `/carrito`. La tarjeta debe tener un borde izquierdo del mismo color amarillo. Debe mostrar imagen, categoría, título (grande y en `Oswald`) y precio. Aplícale `HoverableWidget`.
    *   Haz lo mismo para una sección de "OFERTA EDUCATIVA", pero esta vez usa un color de acento verde (`0xFF2ECC71`).
    *   Al final, un texto para "← VOLVER AL INICIO" que permita regresar.

#### **Pantalla 3: Carrito (`PaginaTres`)**

*   **AppBar:**
    *   Botón para volver y título "CARRITO" (fuente `Oswald`).

*   **Body:**
    *   Un mensaje de "Compra realizada con éxito!" con un ícono de check verde.
    *   Una tarjeta de resumen del libro comprado (ej. "HÁBITOS ATÓMICOS"), con un borde izquierdo amarillo. Muestra la imagen, título y autor. Aplícale el `HoverableWidget`.
    *   Un texto que muestre el "Total pagado: $250".
    *   Abajo del todo, un botón grande y amarillo que ocupe todo el ancho con el texto "VOLVER AL INICIO". Al presionarlo, debe limpiar la pila de navegación y volver a la pantalla de inicio (`/`).

---

**Importante:**

No olvides añadir los `assets` de la carpeta `imagenes/` en tu archivo `pubspec.yaml`.
