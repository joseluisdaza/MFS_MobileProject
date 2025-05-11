# Proyecto Final

Este proyecto es una aplicación Flutter que utiliza el patrón de arquitectura RiverPod para gestionar el estado. La aplicación está diseñada para permitir a los usuarios interactuar con productos y tipos, así como gestionar usuarios.

## Estructura del Proyecto

La estructura del proyecto es la siguiente:

```
proyecto_final
├── lib
│   ├── application
│   │   ├── providers
│   │   │   ├── product_provider.dart
│   │   │   ├── type_provider.dart
│   │   │   └── user_provider.dart
│   │   └── riverpod.dart
│   ├── domain
│   │   ├── models
│   │   │   ├── product.dart
│   │   │   ├── type.dart
│   │   │   └── user.dart
│   │   └── repositories
│   │       ├── product_repository.dart
│   │       ├── type_repository.dart
│   │       └── user_repository.dart
│   ├── presentation
│   │   ├── welcome
│   │   │   └── welcome_page.dart
│   │   ├── settings
│   │   │   ├── settings_page.dart
│   │   │   ├── product_page.dart
│   │   │   └── type_page.dart
│   │   └── shared
│   │       └── widgets
│   │           └── dropdown_widget.dart
│   └── main.dart
├── pubspec.yaml
└── README.md
```

## Funcionalidades

- **Página de Bienvenida**: Permite a los usuarios seleccionar su nombre de una lista desplegable y navegar a la página de configuración.
- **Página de Configuración**: Contiene botones para navegar a las páginas de productos y tipos.
- **Página de Productos**: Muestra una lista de productos y permite agregar un nuevo producto.
- **Página de Tipos**: Muestra una lista de tipos y permite agregar un nuevo tipo.

## Requisitos

- Flutter SDK
- Dependencias especificadas en `pubspec.yaml`

## Instalación

1. Clona el repositorio.
2. Navega a la carpeta del proyecto.
3. Ejecuta `flutter pub get` para instalar las dependencias.
4. Ejecuta `flutter run` para iniciar la aplicación.

## Contribuciones

Las contribuciones son bienvenidas. Si deseas contribuir, por favor abre un issue o un pull request.

## Licencia

Este proyecto está bajo la Licencia MIT.
