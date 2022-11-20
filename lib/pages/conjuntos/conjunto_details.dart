import 'package:flutter/material.dart';
import 'package:vnc_music/components/navigation.dart';
import 'package:vnc_music/constants.dart';
import 'package:vnc_music/models/conjunto.model.dart';

class ConjuntoDetails extends StatefulWidget {
  final Conjunto conjunto;

  const ConjuntoDetails({
    Key? key,
    required this.conjunto,
  }) : super(key: key);

  @override
  State<ConjuntoDetails> createState() => _ConjuntoDetails();
}

class _ConjuntoDetails extends State<ConjuntoDetails> {
  late Conjunto conjunto;

  @override
  void initState() {
    super.initState();
    conjunto = widget.conjunto;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationBarWidget(),
      appBar: AppBar(
        title: Text(
          conjunto.nome,
          style: const TextStyle(
            fontSize: 14,
          ),
        ),
        // backgroundColor: primaryColor,
      ),
      body: Container(),
    );
  }
}
