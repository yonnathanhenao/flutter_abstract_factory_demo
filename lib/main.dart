import 'package:flutter/material.dart';

import 'factories/factories.dart';
import 'views/form_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    IFormCountry formFactory = FormCountryFactory().getFactory('CO');
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigoAccent),
        useMaterial3: true,
      ),
      home: FormView(formFactory: formFactory),
    );
  }
}
