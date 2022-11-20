class Conjunto {
  int id;
  String nome;
  late List<dynamic> membros;
  Conjunto({
    required this.id,
    required this.nome,
    this.membros = const [],
  });
}
