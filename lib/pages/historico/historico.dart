import 'package:flutter/material.dart';
import 'package:vnc_music/components/navigation.dart';

class Historico extends StatefulWidget {
  const Historico({
    Key? key,
  }) : super(key: key);

  @override
  State<Historico> createState() => _Historico();
}

class _Historico extends State<Historico> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: const Color.fromARGB(242, 244, 224, 248),
              height: size.height,
              width: size.width,
              padding: const EdgeInsets.all(5),
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Colors.white,
                      border: Border.all(
                        color: const Color.fromARGB(255, 99, 100, 99),
                      ),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      drawer: const NavigationBarWidget(),
      appBar: AppBar(
        title: const Text(
          'Histórico de Hinos',
          style: TextStyle(
            fontSize: 14,
          ),
        ),
        backgroundColor: Colors.purple,
      ),
    );
  }
}
