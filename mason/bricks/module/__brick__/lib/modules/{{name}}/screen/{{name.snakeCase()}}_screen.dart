import 'package:flutter/material.dart';

class {{name.pascalCase()}}Screen extends StatelessWidget {
  const {{name.pascalCase()}}Screen({super.key});

  static const String routeName = '{{name.paramCase()}}-screen';

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text('{{name}} Screen'),),
      body: Container(),
    );
  }
}