# Dart - Sealed class o Swift enum

## Caso d'uso
Spesso per rappresentare lo stato di un operazione o di un componente, quando si fanno app con linguaggio nativo si adoperano le `sealed class` (Kotlin) e gli `enum` (Swift).
Questi consentono di implementare la cosiddetta 'ereditarietá ristretta', che consente di fare switching su elementi che hanno un tipo comune.

``` Swift
// Swift
enum RepeatMode {
    case once
    case times(Int)
    case never
    case forever
}

[...]

switch repeatMode {
case .once:
    [...]
case .times(let value):
    [...]
case .never:
    [...]
case .forever:
    [...]
}
```
``` Kotlin
// Kotlin
sealed class RepeatMode {
    object Once: RepeatMode()
    data class Times(val value: Int): RepeatMode()
    object Never: RepeatMode()
    object Forever: RepeatMode()
}

[...]

when(repeatMode) {
    Once -> [...]
    Never -> [...]
    Forever -> [...]
    is Times -> { 
        val value = repeatMode.value
        ...
    }
}
```

## Implementazione Dart
Su Dart abbiamo diverse opzioni, tutte piú o meno valide.

Un opzione comune é l'utilizzo del package \``freezed`\` che genera codice per ogni classe annotata con `@freezed' e che include il file generato:

``` Dart
part 'main.freezed.dart';

@freezed
class Person with _$Person {
  factory Person(String name, int? age) = _Person;
  factory Person.new(String name) = _PersonNew;
}

```

Utilizzando questo metodo possiamo generare diversi metodi, utili per implementare il nostro codice in maniera funzionale e velocizzare lo sviluppo e implementare hashing e equalization:

- .copyWith:
    ``` Dart
    final person = Person('Remi', 24);
    // Creates a copy of `person` with a different `name`: Person(name: Dash, age: 24)
    final personCopy = person.copyWith(name: 'Dash');
    // Creates a copy of `person` with a different `age`: Person(name: Remi, age: null)
    final personCopy2 = person.copyWith(age: null);
    ```
- .when / .map:
    ``` Dart
    @freezed
    class Model with _$Model {
        factory Model.first(String a) = First;
        factory Model.second(int b, bool c) = Second;
    }

    final model = Model.first('42');

    // Switch on possible cases destructuring them into their fields
    final messageA = model.when(
        first: (String a) => 'first $a',
        second: (int b, bool c) => 'second $b $c'
    );

    // Perform `when` with a default
    final messageAOrNull = maybeWhen(
        first: (String a) => 'first $a',
        orElse: () => null
    );

    // Switch on possible cases without destructuring
    final modelCopy = model.map(
        first: (value) => value,
        second: (value) => value.copyWith(c: true),
    );

    // Perform `map` with a default
    final modelCopyOrNull = model.map(
        first: (value) => value,
        orElse: () => null
    );
    ```

## Implementazione custom
Quello che \``freezed`\` fa é possibile con implementazioni custom che possono limitare i casi coperti dalla libreria, anche se la stessa prevede giá diverse opzioni di composizione tramite annotation.

Quello che di solito si fa é:
``` Dart
abstract class Model {
    // Private construction so no one can create it without using factory constructors
    Model._(); 

    factory Model.first() = FirstModel;
    factory Model.second(String id) = SecondModel;
}

class FirstModel extends Model {
    FirstModel(): super._();
}

class SecondModel extends Model {
    final String id;
    SecondModel(this.id): super._();
}

[...]

final model = [...]

String? id;
switch(model.runtimeType) {
    case SecondModel:
        final s = model as SecondModel;
        id = s.id;
        break;
    default:
        id = null;
}

[...]
```

## Errori comuni
É molto comune vedere alcune implementazioni che rendono difficile la comprensione del codice, la leggibilitá, la manutenibilitá e il debugging:

- Utilizzo di molteplici campi su una classe per distinguere diversi stati logici:
  ``` Dart
    class TradingStatus {
        final bool isOnBoardingCompleted;
        final bool isWalkthroughCompleted;
        final bool canAccessToDashboard;
        final String? disclaimerId;

        bool get hasDisclaimer => disclaimerId != null;

        factory TradingStatus.disclaimer(String disclaimerId) => TradingStatus(
                isOnBoardingCompleted: false,
                isWalkthroughCompleted: false,
                canAccessToDashboard: false,
                disclaimerId: disclaimerId,
            );

        factory TradingStatus.onBoarding(bool walkthroughCompleted) => TradingStatus(
                isOnBoardingCompleted: false,
                isWalkthroughCompleted: walkthroughCompleted,
                canAccessToDashboard: false,
            );

        factory TradingStatus.updateTermsAndConditionsApproval() => TradingStatus(
                isOnBoardingCompleted: true,
                isWalkthroughCompleted: true,
                canAccessToDashboard: false,
                disclaimerId: kTradingTermsUpdate,
            );

        factory TradingStatus.dashboard() => TradingStatus(
                isOnBoardingCompleted: true,
                isWalkthroughCompleted: true,
                canAccessToDashboard: true,
            );

        TradingStatus({
            required this.isWalkthroughCompleted,
            required this.isOnBoardingCompleted,
            required this.canAccessToDashboard,
            this.disclaimerId,
        });
    }
  ```
  Questa implementazione é sbagliata sotto diversi aspetti: é eccessivamente complessa e implica che su molto codice derivante si preferisca non agire sul contesto dell'implementazione ma sulle sue proprietá, che significa fare switch e if-else su queste con la possibilitá di introdurre bug ed edge-cases non coperti.

  É completamente sostituibile con una piú semplice:
  ``` Dart
    @freezed
    class TradingStatus with _$TradingStatus {
        factory TradingStatus.disclaimer(String id) = 
            TradingStatusDisclaimer;
        factory TradingStatus.onBoarding() = TradingStatusOnBoarding;
        factory TradingStatus.walkthrough() = TradingStatusWalkthrough;
        factory TradingStatus.updateTermsAndConditions() =
            TradingStatusUpdateTermsAndConditions;
        factory TradingStatus.dashboard() = TradingStatusDashboard;
    }

    // Oppure

    abstract class TradingStatus {
        TradingStatus._();

        factory TradingStatus.disclaimer(String id) = 
            TradingStatusDisclaimer;
        factory TradingStatus.onBoarding() = TradingStatusOnBoarding;
        factory TradingStatus.walkthrough() = TradingStatusWalkthrough;
        factory TradingStatus.updateTermsAndConditions() =
            TradingStatusUpdateTermsAndConditions;
        factory TradingStatus.dashboard() = TradingStatusDashboard;
    }

    class TradingStatusDisclaimer extends TradingStatus {
        final String id;
        TradingStatusDisclaimer(this.id): super._();
    }

    class TradingStatusOnBoarding extends TradingStatus {
        TradingStatusOnBoarding(): super._();
    }

    [...]
  ```