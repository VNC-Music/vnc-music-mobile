import 'package:flutter/material.dart';
import 'package:vnc_music/components/navigation.dart';
import 'package:vnc_music/models/conjunto.model.dart';
import 'package:expandable/expandable.dart';

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
      body: SingleChildScrollView(
        child: Text(conjunto.nome),
      ),
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(conjunto.nome),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                InkWell(
                  onTap: () async {},
                  borderRadius: BorderRadius.circular(50),
                  highlightColor: Colors.white12,
                  focusColor: Colors.white12,
                  child: const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 10,
                    ),
                    child: Icon(
                      Icons.delete,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
