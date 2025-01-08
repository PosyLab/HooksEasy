# HooksEasy

A Flutter package to send event data to Webhook for
[HooksEasy](https://hookseasy.com/).

- 🥷🏼 Create webhook APIs without a server
- 🚪 Create infinite Webhook APIs
- 💥 Forward data to other Webhook APIs, repeatedly
- 🖥️ Forward data to your localhost, repeatedly

## Getting started

1. Create New Webhook API
- Go to https://hookseasy.com/
- Create new API
- Copy your url

2. Create new Webhook object
- Setup your url
```dart
  const url = '';
  final webhook = HooksEasy(url: url);
```

- Send your data
```dart
  final response = await webhook.send(
    data: {'message': 'Hello, world!'},
  );
```

## License

This project is licensed under the [BSD 3-Clause License](./LICENSE).

## Disclaimer

The `hooks_easy` package is an intermediary tool for sending data to [HooksEasy](https://hookseasy.com/) via their API.

- We are not responsible for the data you send or any consequences arising from its use.
- Use of this package is at your own risk, and compliance with laws, regulations, and HooksEasy’s terms is your responsibility.
- The authors are not liable for any damages caused by using this package.

By using `hooks_easy`, you agree to these terms.
