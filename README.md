# **Flutter with BLoc**

Show the best practice for implementing:

- Flutter with Business Logic Component or `BLoc`.
- Feature scalability.

## **Project structure**

### Feature driven directory structure

The directory based on Flutter's layer.

```text
│
├───...
│
├───lib
│   └───src
│       ├───features
│       │   ├───counter
│       │   │   ├───application
│       │   │   ├───data
│       │   │   ├───domain
│       │   │   └───presentation
│       │   ├───gallery
│       │   │   ├───application
│       │   │   ├───data
│       │   │   ├───domain
│       │   │   └───presentation
│       │   ├───post
│       │   │   ├───application
│       │   │   ├───data
│       │   │   │   └───repository
│       │   │   ├───domain
│       │   │   └───presentation
│       │   └───timer
│       │       ├───application
│       │       ├───data
│       │       ├───domain
│       │       └───presentation
│       └─── ...
└─── ...
```

## **Security**

- [Jailbreak detection](https://pub.dev/packages/flutter_jailbreak_detection)
- [FreeRASP (Runtime App Self Protection)](https://pub.dev/packages/freerasp)
- [Security Analysis of Android Applications](https://www.utupub.fi/bitstream/handle/10024/154737/Huszti_Martin_Thesis.pdf;jsessionid=AC1BFD4640C10022104B09D448082F1A?sequence=1)

## **Others**

- [Setup adb](https://www.programsbuzz.com/article/set-androidhome-environment-variable-windows-10)
- In Android emulator:
  - Open emulator via `adb` :

    ```sh
    emulator -list-avds

    # Ex. output
    # Pixel_3a_API_34_extension_level_7_x86_64
    ```

  - Start the emulator:

    ```sh
    emulator -avd Pixel_3a_API_34_extension_level_7_x86_64
    ```

- [How to get root access on Android emulator ?](https://stackoverflow.com/questions/5095234/how-to-get-root-access-on-android-emulator)
