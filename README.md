# Mi Tiendita

Mi Tiendita es una aplicación de tienda en línea desarrollada con Flutter y Dart. Esta aplicación permite a los usuarios navegar, ver y comprar productos en una tienda de barrio. Además, se lleva una contabilidad detallada sobre los productos y usuarios. La app está diseñada para ser responsiva, asegurando una experiencia de usuario fluida en navegadores de escritorio, dispositivos móviles y tabletas. Para manejar las peticiones HTTP de manera eficiente, Mi Tiendita utiliza GraphQL, lo que facilita la interacción con la API y asegura una comunicación robusta y consolidada.

## Características

- **Catálogo de Productos**: Los usuarios pueden ver una lista de productos disponibles, junto con imágenes, nombres y precios.
- **Carrito de Compras**: Los usuarios pueden agregar productos a su carrito de compras y proceder al pago.
- **Gestión de Usuarios**: La aplicación maneja la autenticación y el registro de usuarios.
- **Contabilidad**: Se lleva un registro detallado de las transacciones de productos y usuarios.
- **Diseño Responsivo**: La aplicación está diseñada para ser visualmente atractiva y funcional en diferentes dispositivos, incluyendo navegadores de escritorio, móviles y tabletas.
- **GraphQL**: Integración con GraphQL para manejar las peticiones HTTP de manera eficiente y escalable.

## Tecnologías Utilizadas

- **Flutter**: Framework para desarrollar aplicaciones móviles, web y de escritorio.
- **Dart**: Lenguaje de programación utilizado por Flutter.
- **GraphQL**: Para manejar las peticiones HTTP y la comunicación con la API.

## Estructura del Proyecto

```plaintext
mi_tiendita/
│
├── lib/
│   ├── features/
│   │   ├── dashboard/
│   │   │   ├── provider/
│   │   │   │   └── dashboard_bloc.dart
│   │   │   ├── widgets/
│   │   │   │   ├── carousel_slider.dart
│   │   │   │   └── product_card.dart
│   │   │   └── dashboard_layout.dart
│   │   └── ... (otros módulos de la app)
│   ├── utils/
│   │   └── constants/
│   │       └── icon.dart
│   ├── main.dart
│   └── ... (otros archivos y directorios de la app)
│
├── assets/
│   ├── images/
│   │   └── fondo.jpeg
│   └── products/
│       ├── bebida.webp
│       ├── embutidos.jpg
│       ├── milk.webp
│       ├── product1.jpeg
│       ├── product3.png
│       └── tortrix.jpeg
│
├── pubspec.yaml
└── README.md
```

## Instalación del proyecto
Clonar el repositorio
```bash
    git clone https://github.com/tu_usuario/mi_tiendita.git
    cd mi_tiendita
```

### Instalar las dependecias
```bash
    flutter pub get
```

### Ejecuta la aplicación
```bash
    flutter run
```

# Contribuyente 
¡Contribuciones son bienvenidas! Si quieres contribuir a Mi Tiendita, por favor sigue los siguientes pasos:

Haz un fork del repositorio.
1. Crea una rama con tu nueva funcionalidad o corrección de bug: git checkout -b feature/nueva-funcionalidad.
2. Realiza tus cambios y haz commit de ellos: git commit -m 'Añadir nueva funcionalidad'.
3. Sube tus cambios a tu repositorio fork: git push origin feature/nueva-funcionalidad.
4. Abre un Pull Request en el repositorio original.

# Licencia
- Este proyecto está licenciado bajo la Licencia MIT - ver el archivo LICENSE para más detalles