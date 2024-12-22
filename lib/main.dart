import 'package:flutter/material.dart';
import 'package:lista_personajes/lista_item.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView.builder(
          padding: EdgeInsets.all(10),
          itemCount: 10,
          itemBuilder: (context, index) {
            return ListaItem(
                imagenUrl: 'https://expea.mx/imgs/Expea3.png',
                titulo: 'titulo',
                descripcion: 'descripcion',
                indice: 0);
          },
        ),
      ),
    );
  }
}
