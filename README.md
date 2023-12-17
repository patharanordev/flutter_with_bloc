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
