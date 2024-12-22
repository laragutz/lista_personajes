import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:lista_personajes/personajes/personajes_model.dart';

class PersonajesCliente {
  final String baseUrl;

  PersonajesCliente(this.baseUrl);

  Future<List<PersonajesModel>> obtenerPersonajes() async {
    List<PersonajesModel> personajes = [];
    final response = await http.get(Uri.parse('$baseUrl/personajes'));

    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      data.forEach((element) {
        personajes.add(PersonajesModel(
            nombre: element['name'],
            descripcion: element['description'],
            rutaImagen: element['image']));
      });
      return personajes;
    } else {
      throw Exception('Error al obtener los personajes');
    }
  }
}
