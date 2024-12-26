import 'package:hooks_easy/hooks_easy.dart';

void main() async {
  const url =
      'https://ingress-playground.hookseasy.com/mrEtB9jU1FagH4Ro4IKQK0lr';
  final webhook = HooksEasy(url: url, debug: true);
  final response = await webhook.send(
    data: {'message': 'Hello, world!'},
  );
  print(response);
  final response2 = await webhook.send(
    data: {'message': 0987654321},
  );
  print(response2);
}
