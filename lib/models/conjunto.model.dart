import 'package:vnc_music/models/conjunto-hino.model.dart';
import 'package:vnc_music/models/membro.model.dart';
import 'package:vnc_music/models/regente.model.dart';

class Conjunto {
  int id;
  String nome;
  List<Membro> membros;
  List<Regente> regentes;
  List<ConjuntoHino> hinos;

  Conjunto({
    this.id = 0,
    this.nome = '',
    this.membros = const [],
    this.regentes = const [],
    this.hinos = const [],
  });

  factory Conjunto.fromJson(Map<String, dynamic> json) {
    return Conjunto(
      id: json['id'],
      nome: json['nome'],
      membros: json['membros'],
      regentes: json['regentes'],
      hinos: json['hinos'],
    );
  }
}
