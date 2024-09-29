# Dev Print

A lightweight utility for enhanced logging (console output) in Flutter apps, simplifying debugging by formatting messages and allowing the use of optional tags.

## Features

- Print messages in a readable format during development.
- Supports various data types including `String`, `Map`, `List`, and `bool`.
- Automatically formats `Map` and `List` objects as JSON.
- Option to add a custom tag for better identification of logs.
- Only logs messages in `kDebugMode`, preventing logs from being printed in release builds.

## Installation

Add `dev_print` to your `pubspec.yaml` file:

```yaml
dependencies:
  dev_print:
```

Then, run `flutter pub get` to install the package.

## Usage

To use the `devPrint` function in your app, simply import the package and call `devPrint` with a message:

```dart
import 'package:dev_print/dev_print.dart';

void main() {
  devPrint('Hello, World!');
  devPrint({
    'orderId': 12345,
    'products': [
      {'name': 'Laptop', 'price': 1200},
      {'name': 'Phone', 'price': 800}
    ],
    'totalPrice': 2000,
    'paid': false
  }, tag: 'OrderDetails');
}
```

### Example Output

For a simple message:
```
(START)⤵⤵⤵

Hello, World!

(END)⤴⤴⤴
```

For a `Map` with a custom tag:
```
                ------- OrderDetails -------
(START)⤵⤵⤵

{
  "orderId": 12345,
  "products": [
    {
      "name": "Laptop",
      "price": 1200
    },
    {
      "name": "Phone",
      "price": 800
    }
  ],
  "totalPrice": 2000,
  "paid": false
}

(END)⤴⤴⤴
```

## Parameters

- `message`: The message you want to log. It can be of type `String`, `Map`, `List`, `bool`, or any other data type. If it’s a `Map` or `List`, it will be automatically formatted as JSON.
- `tag`: (Optional) A string to label your logs for better traceability. Defaults to `null`.

## Notes

- Logs are only printed when `kDebugMode` is enabled, so they won't appear in release builds.
- If a JSON formatting error occurs, an error message will be printed.

## License

This package is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Changelog

See [CHANGELOG.md](CHANGELOG.md) for a list of changes.

## Contact

For collaboration, inquiries, or support, feel free to reach out to us via email: `italiya.in@gmail.com`