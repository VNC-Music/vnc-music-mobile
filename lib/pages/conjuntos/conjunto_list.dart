// ignore_for_file: slash_for_doc_comments

import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:vnc_music/components/navigation.dart';
import 'package:vnc_music/models/conjunto.model.dart';
import 'package:vnc_music/pages/conjuntos/conjunto_details.dart';
import 'package:vnc_music/services/services.dart';

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
  RefreshController refreshController = RefreshController(initialRefresh: true);
  @override
  initState() {
    super.initState();
  }

  @override
  dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationBarWidget(),
      appBar: AppBar(
        title: const Text(
          'Conjuntos',
        ),
        // backgroundColor: primaryColor,
      ),
      body: SmartRefresher(
        controller: refreshController,
        enablePullDown: true,
        enablePullUp: true,
        onTwoLevel: (isOpen) {
          print(isOpen);
        },
        onRefresh: refresh,
        onLoading: loading,
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: conjuntosWidget,
                ),
              ),
            ),
          ],
        ),
        // Column(
        //   children: [
        //     Expanded(
        //       child: Padding(
        //         padding:
        //             const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        //         child: ListView(
        //           children: conjuntosWidget,
        //         ),
        //       ),
        //     ),
        //   ],
        // ),
      ),
    );
  }

  refresh() async {
    print('refresh');
    await getList();
    refreshController.refreshCompleted();
  }

  loading() async {
    print('loading');
    await getList();
    refreshController.loadComplete();
  }

  Future getList() async {
    print('getList');
    var c = await conjuntoService.getList();
    setState(() {
      conjuntos = c;
      conjuntosWidget = [];
      for (Conjunto conjunto in conjuntos) {
        conjuntosWidget.add(buildItem(context: context, conjunto: conjunto));
      }
    });
  }

  setList() {
    List<Widget> widgets = [];
    for (Conjunto conjunto in conjuntos) {
      widgets.add(buildItem(context: context, conjunto: conjunto));
    }

    setState(() {
      conjuntos = conjuntos;
      conjuntosWidget = widgets;
    });
  }

  Widget buildItem({
    required BuildContext context,
    required Conjunto conjunto,
  }) {
    return ListTile(
      title: Text(conjunto.nome),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ConjuntoDetails(conjunto: conjunto)));
      },
    );
  }
}
