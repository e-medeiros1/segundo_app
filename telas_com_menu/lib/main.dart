import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'page/home_page.dart';

//Classe com o princípio de SOLID aplicado
main() {
  runApp(const MyApp());
}

//Classe MyApp rodando a tela primária do app, imutável(por isso stateless)
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.indigo),
      home:  HomePage(),
    );
  }
}
