# SnackBar Extension

A flutter package to provide functions as extension for snackbar.

## Show some :heart: and :star: the repo

## Features

✅ Register Multiple SnackBars
✅ Show registered snackbar anywhere
✅ Show SnackBar till a function runs
✅ Customize snackbar on the fly

## Getting started

Include plugin to your project

```yml
dependencies:
  snackbar_extension: <latest version>
```

Run `pub get` and get packages.

## Register SnackBars

The register function registers the snackBar, takes the name of the snackBar and the snackBar itself.

```dart
SnackBarExtension.register(
    name: "Classic",
    snackBar: const SnackBar(
    content: Text("Classic"),
    ),
);
```

## Access SnackBar

The registered snackBars can be accessed through the `.of(context, name)` function.

```dart
SnackBarExtension.of(context, "Classic").show();
```

### Customize SnackBar

SnackBar Extension provides full customization to the registerd snackbars.

```dart
SnackBarExtension.of(context, "Modern").setBackgroundColor(Colors.blue);

SnackBarExtension.of(context, "Classic").setContent(const Text("Changed Classic Text"));

SnackBarExtension.of(context, "Modern").setBehavior(SnackBarBehavior.floating);
```

Customization are possible on the fly with snackBar extension.

## Show Till

SnackBar Extension provides `showTill` function to show a snackbar till a function runs.

```dart
SnackBarExtension.of(context, "Modern").showTill(
    content: const Text("Show Till Function"),
    run: () async {
        await Future.delayed(const Duration(seconds: 3));
    },
);
```

## Example

Go to example section in pub.dev to see the full example code.

In GitHub, head over to `example/lib/main.dart` to see the full example code.

```dart
Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
    ElevatedButton(
        child: const Text("Register Classic SnackBar"),
        onPressed: () {
        SnackBarExtension.register(
            name: "Classic",
            snackBar: const SnackBar(
            content: Text("Classic"),
            ),
        );
        },
    ),
    ElevatedButton(
        child: const Text("Register Modern SnackBar"),
        onPressed: () {
        SnackBarExtension.register(
            name: "Modern",
            snackBar: const SnackBar(
            content: Text("Modern"),
            ),
        );
        },
    ),
    ElevatedButton(
        child: const Text("Change Modern Background Color"),
        onPressed: () {
        SnackBarExtension.of(context, "Modern")
            .setBackgroundColor(Colors.blue);
        },
    ),
    ElevatedButton(
        child: const Text("Show Classic SnackBar"),
        onPressed: () {
        SnackBarExtension.of(context, "Classic").show();
        },
    ),
    ElevatedButton(
        child: const Text("Show Modern SnackBar"),
        onPressed: () {
        SnackBarExtension.of(context, "Modern").show();
        },
    ),
  ],
),
```

## Project Created & Maintained By

### Divyanshu Shekhar

<a href="https://twitter.com/dshekhar17"><img src="https://github.com/aritraroy/social-icons/blob/master/twitter-icon.png?raw=true" width="60"></a> <a href="https://in.linkedin.com/in/divyanshu-shekhar-a8a04a162"><img src="https://github.com/aritraroy/social-icons/blob/master/linkedin-icon.png?raw=true" width="60"></a> <a href="https://instagram.com/dshekhar17"><img src="https://github.com/aritraroy/social-icons/blob/master/instagram-icon.png?raw=true" width="60"></a>

[![GitHub followers](https://img.shields.io/github/followers/divshekhar.svg?style=social&label=Follow)](https://github.com/divshekhar/)

## Contributions

Contributions are welcomed!

**If you feel that a hook is missing, feel free to open a pull-request.**

For a custom-hook to be merged, you will need to do the following:

* Describe the use-case.

* Open an issue explaining why we need this hook, how to use it, ...
  This is important as a hook will not get merged if the hook doens't appeal to
  a large number of people.

* If your hook is rejected, don't worry! A rejection doesn't mean that it won't
  be merged later in the future if more people shows an interest in it.
  In the mean-time, feel free to publish your hook as a package on [https://pub.dev](https://pub.dev).

* A hook will not be merged unles fully tested, to avoid breaking it inadvertendly in the future.
  
## Stargazers

[![Stargazers repo roster for @DevsOnFlutter/bulletin](https://reporoster.com/stars/dark/DevsOnFlutter/bulletin)](https://github.com/DevsOnFlutter/bulletin/stargazers)

## Forkers

[![Forkers repo roster for @DevsOnFlutter/bulletin](https://reporoster.com/forks/dark/DevsOnFlutter/bulletin)](https://github.com/DevsOnFlutter/bulletin/network/members)

## Copyright & License

Code and documentation Copyright (c) 2021 [DevsOnFlutter](https://github.com/DevsOnFlutter). Code released under the [BSD 3-Clause License](./LICENSE).