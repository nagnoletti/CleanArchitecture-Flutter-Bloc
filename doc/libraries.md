# Flutter: Clean BLoC-based Architecture
## Libraries

### BLoC
This architecture makes use of the [bloc](https://www.pub.dev/packages/bloc) widget state management package.
We use it to avoid having unmaintainable widget states and observe changes in a reactive way.

In this project we treat BLoC components as 'view-models': they publish updates and widgets react to that update rebuilding themselves and reacting to state change (tipically loading, error, success);

Using BLoC-s the use of StatefulWidget is reduced to the bare minimum.
I suggest to use it for UI-related only states that don't use any logic on domain level; an example could be the activation state of a switch or selection.

Here BLoC-s are intended as application's state containers: the rule is to avoid keeping in states something that doesn't involve the domain layer, with exceptions when needed.

### GetIt
We use [get_it](https://www.pub.dev/packages/get_it) as a service locator to register dependencies for every layer. Some perks of `get_it` are:
- It's fast
- It's easy to use
- Doesn't clutter your UI tree with special Widgets to access your data like provider, InheritedWidget or Redux does.

### Freezed
We make large use of the [freezed](https://pub.dev/packages/freezed) to have immutable state classes with beautiful operators to write better code switching on them.

Implementation of BLoC-s states, UseCase results and error data hierarchies are some of the things that `freezed` can help you do better because they are the perfect fit for a Kotlin sealed classes or Swift's rich enums. To better understand, refer to [this](codestyle/dart-sealed_class_swift_enum.md) codestyle doc.

### GoRouter
To handle navigation logic we use the [go_router](https://pub.dev/packages/go_routes).

GoRouter is a nice tool that makes us able to declare routes in an idiomatic way and provides some BuildContext extensions that simplify Navigator usage.

It supports nested modular routes like a web app would do, so it's highly recommended to think of routes like a website: in a list-detail scenario we should have the list route with nested detail routes with path params like below.

``` dart
// List of purchases
GoRoute(path: '/purchases', (context, state) => const PurchasesPage());
// Page displaying single purchase info
GoRoute(path: '/purchases/:id', (context, state) => PurchaseInfoPage(id: state.params['id']));
```