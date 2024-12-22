import 'package:flutter/material.dart';

class ListaItem extends StatelessWidget {
  final String imagenUrl;
  final String titulo;
  final String descripcion;
  final int indice;

  ListaItem(
      {required this.imagenUrl,
      required this.titulo,
      required this.descripcion,
      required this.indice});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.blue.shade50, Colors.blue.shade100],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Expanded(
                      child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          titulo,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          descripcion,
                          style: TextStyle(fontSize: 14, color: Colors.black54),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ),
                    ],
                  )),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                      width: 250,
                      height: 200,
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.red.shade900, width: 2),
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(13),
                        child: Image.network(
                          imagenUrl,
                          fit: BoxFit.fitWidth,
                        ),
                      ))
                ],
              ))),
    );
  }
}
