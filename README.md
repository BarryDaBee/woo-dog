## Acumen Flutter Interview Task

## Relevant links 🔗
[Figma UI link](https://www.figma.com/file/6RrmAqVkxdzNhNeBUMiMmL/Acumen-Flutter-Interview-Task?node-id=2202%3A1188)

[Apk link](https://drive.google.com/file/d/1Pk6rUhAEGYs_6DuxuErvUNmcASFlLvq4/view?usp=sharing)

## Folder structure 📂

```.
+-- pubscpec.yaml
+-- README.md
+-- lib
|   +-- core
|     +-- extensions
|     +-- models
|     +-- services
|     +-- exports.dart
|     +-- locator.dart
|     +-- routes.dart
|   +-- ui
|     +-- shared
|     +-- views
|     +-- widgets
|   +-- main.dart
+-- assets/images
```
_**./lib/core**_
> Contains the non-ui parts of the app e.g. services and extensions.


_**./lib/core/services**_
> Contains classes that perform specific tasks e.g The API class is used for making API calls to the endpoints.


_**./lib/core/models**_
> Contains model classes that describe objects in the app e.g

_**./lib/ui**_
> Contains the UI classes of the app along with the viewmodels (controllers) for easy maintenance.

_**./lib/ui/views**_
> Contains the views and viewmodels separated into different folder like this:

```
.
+-- example_view
|   +-- example_view.dart
|   +-- example_view_model.dart
```


_**./lib/ui/widgets**_
> Contains the smaller components of the app e.g. a custom button or text field:

_**./lib/ui/shared**_
> Contains other shared components of the ui e.g. theme and colors.


## Dependencies

**google_fonts**
> Used for text styling (Poppins)

**flutter_screenutil**
> Used for ui and text responsiveness

**stacked**
> Used for managing the state of the app.
> stacked_services omitted because this is a small app.

**get_it**
> Used for dependency injection

**connectivity**
> Used for getting the internet connection status of the app

**http**
> Used for making http requests to the backend

**flutter_svg**
> Used for displaying svg icons

**bubble**
> Chat bubble component class.


  
 

