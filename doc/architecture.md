# Flutter: Clean BLoC-based Architecture

This Flutter app architecture is a Clean-oriented architecture using BLoC as state management library.

Clean Architecture principles are not strictly followed due to incompatibilities with Flutter nature (everything is a widget) and ease of use on our projects.

---
## Packages

The app is made of some packages defining its layers, following the Clean Architecture "onion" model (domain logic into the core layer, everything else in outer layers).

### /lib
We made the choice to include everything that belongs to the UI into the app's main module (`lib` folder), merging presentation, view and app layers into one.

Widgets should provide BLoCs from the domain layer in the right place:
- Envelope the 'page' widget when a state is only used by components within that page, making a **Connector** widget.
- Globally when that state is relevant for more than a route or data should be ready before entering the only page that uses it, using the App widget's MultiBlocProvider.

Note that globally-provided BLoCs are kept alive from start to end of the application lifecycle: place their providers wisely!

### Domain
Everything that implements domain logic is into the `lib_domain` folder. 

The components used by the UI layer are:
-  BLoC (Cubit)
-  UC (UseCase)

A **BLoC** is a state container and an access **It should contain a state representing a piece of the application state**, which should be scoped globally or around a single UI component using BlocProviders on the widget tree.
It also provides methods to interact with repositories and emit a state.

A **UseCase** is a callable object that **orchestrates blocs to perform mixed tasks**, reusing BLoCs logic to emit new states.

Those two components together give us different things:
- High-level feature-logic to be enveloped in a single file
- No side effects due to complicated code branches
- Readable code and separation of single features logic while being able to handle events that have effect on more than one feature.

The `lib_domain` folder is a Dart package: **it doesn't need Flutter or depend on other parts of the app** to work and is made of pure Dart code.

### Data
The `lib_data` layer contains implementations of repository interfaces into the domain layer, having a dependency on it. It also is a pure Dart package.
Datasource interfaces are declared in it to be used by repositories.

### Service
The `lib_service` layer is a Flutter package that implements datasource interfaces (services tipically need plugins to work with the platform network API or platform specific storage APIs).
We chose [dio](https://pub.dev/packages/dio) to make http requests.

## Dependencies
This architecture packages dependencies can be described using this dependency graph:

``` mermaid
graph TD
    App(lib: app+view+presentation) --> |depends on| Domain(lib_domain)
    App --> |depends on| Data(lib_data)
    App --> |depends on| Service(lib_service)
    Data --> |depends on| Domain
    Service --> |depends on| Data
```

You may notice that `lib` has a dependency on every layer. This is because the app is responsible of dependency registration for the others.
