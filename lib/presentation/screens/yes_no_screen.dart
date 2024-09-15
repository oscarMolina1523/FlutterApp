import 'package:flutter/material.dart';
import 'package:invoicesapp/config/theme/app_theme.dart';

void main() => runApp(const YesNoScreen());

class YesNoScreen extends StatelessWidget {
  const YesNoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yes No App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor:2).theme(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Yes No App'),
        ),
        body: Center(
          child: FilledButton.tonal(
              onPressed: () {},
              child: const Text("Click me")
            ),
        ),
      ),
    );
  }
}