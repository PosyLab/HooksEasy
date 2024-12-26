# HooksEasy

A Flutter package to send data to Webhook

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
