import 'package:flutter/material.dart';
import 'package:vnc_music/components/navigation.dart';
import 'package:vnc_music/constants.dart';
import 'package:vnc_music/models/conjunto.model.dart';

class ConjuntoList extends StatefulWidget {
  const ConjuntoList({
    Key? key,
  }) : super(key: key);

  @override
  State<ConjuntoList> createState() => _ConjuntoList();
}

class _ConjuntoList extends State<ConjuntoList> {
  List<Conjunto> conjuntos = [];
  List<Widget> conjuntosWidget = [];

  @override
  Widget build(BuildContext context) {
    conjuntos = [];
    conjuntosWidget = [];
    conjuntos.add(Conjunto(id: 1, nome: 'Crianças'));
    conjuntos.add(Conjunto(id: 2, nome: 'Conjunto Alpha'));
    conjuntos.add(Conjunto(id: 3, nome: 'Conjunto Shekinah'));
    conjuntos.add(Conjunto(id: 4, nome: 'Círculo de Orações'));
    conjuntos.add(Conjunto(id: 5, nome: 'Jedutum'));
    conjuntos.add(Conjunto(id: 6, nome: 'Orquestra'));

    for (Conjunto conjunto in conjuntos) {
      conjuntosWidget.add(buildMenuItem(context: context, conjunto: conjunto));
    }

    return Scaffold(
      drawer: const NavigationBarWidget(),
      appBar: AppBar(
        title: const Text(
          'Conjuntos',
        ),
        // backgroundColor: primaryColor,
      ),
      body: ListView(
        children: conjuntosWidget,
      ),
    );
  }

  Widget buildMenuItem({
    required BuildContext context,
    required Conjunto conjunto,
  }) {
    return ListTile(
      leading: const Icon(
        Icons.list,
        color: Colors.black,
        size: 16,
      ),
      minVerticalPadding: 0,
      style: ListTileStyle.drawer,
      minLeadingWidth: 5,
      contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 0),
      title: Text(
        conjunto.nome,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 14,
          overflow: TextOverflow.visible,
        ),
      ),
    );
  }
}
