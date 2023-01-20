# Flavorize a Flutter mobile app

1. Configure the [Android flavor](img/android_flavor.png) and the [XCode schemes](img/xcode_schemes.png).
You can also refer to the [official flavoring guide](https://docs.flutter.dev/deployment/flavors).
   - On XCode, after creating the different schemes, go to [Runner > Manage Schemes...](img/xcode_manage_schemes.png) and make [different configurations based on every flavor](img/xcode_scheme_configuration.png).
    - Change [Bundle identifiers](img/xcode_bundle_ids.png) and [Product name](img/xcode_product_names.png) for the Runner target.
    - Change the Display name to reflect the Product name.
    - If your app uses Flutter plugins, update the ios/Podfile to [use the right build configuration for the selected scheme](img/podfile.png).
    - In case of trouble loading contents of file lists in `/Target Support Files/Pods-Runner` try to delete cached files in the Xcode's DerivedData folder with this command: `rm rf ~/Library/Developer/Xcode/DerivedData/*`, deintegrate pods, cleaning build folder, reinstalling pods.
2. Create a [run configuration](img/android_studio_run_config.png) specifying an [entrypoint setting the environment](img/flavor_entrypoints.png) and the native app flavor. Another way is to launch with a command like this: `flutter run -t lib/main_<flavorName>.dart --flavor <flavorName>`.
    
3. Build the iOS or Android app using the same options as the command above: `flutter build appbundle -t lib/main_<flavorName>.dart --flavor <flavorName>` for Android and `flutter build ios -t lib/main_<flavorName>.dart --flavor <flavorName>` for iOS.