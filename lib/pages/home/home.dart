import 'package:flutter/material.dart';
import 'package:vnc_music/components/navigation.dart';

class Home extends StatefulWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> {
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
          'Home',
          style: TextStyle(
            fontSize: 14,
          ),
        ),
        backgroundColor: Colors.purple,
      ),
    );
  }
}
