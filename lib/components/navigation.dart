import 'package:flutter/material.dart';

class NavigationBarWidget extends StatelessWidget {
  const NavigationBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.purple,
        child: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 0,
            vertical: 15,
          ),
          children: <Widget>[
            // ListTile(
            //   contentPadding: const EdgeInsets.fromLTRB(25, 20, 5, 15),
            //   style: ListTileStyle.drawer,
            //   hoverColor: Colors.white10,
            //   minLeadingWidth: 5,
            //   title: Image.asset(
            //     'assets/img/logo_white.png',
            //     width: 50,
            //     height: 50,
            //     alignment: Alignment.topLeft,
            //   ),
            //   onTap: () {},
            // ),
            Container(
              height: 1,
              margin: const EdgeInsets.fromLTRB(18, 0, 20, 10),
              decoration: const BoxDecoration(color: Colors.white30),
            ),
            buildMenuItem(
                context: context,
                text: 'Conjuntos',
                icon: Icons.devices_other_outlined,
                page: '/conjuntos'),
            buildMenuItem(
                context: context,
                text: 'Hinos',
                icon: Icons.devices_other_outlined,
                page: '/hinos'),
            buildMenuItem(
                context: context,
                text: 'Histórico',
                icon: Icons.devices_other_outlined,
                page: '/historico'),
            buildMenuItem(
                context: context,
                text: 'Minha Conta',
                icon: Icons.manage_accounts_rounded,
                page: '/minha_conta'),
            buildMenuItem(
                context: context,
                text: 'Sair',
                icon: Icons.logout,
                // page: const LoginScreen(),
                page: '/login',
                callback: () {
                  // accountService.logout();
                }),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required BuildContext context,
    required String text,
    required IconData icon,
    required String page,
    void Function()? callback,
  }) {
    const color = Colors.white;
    const hoverColor = Colors.white10;

    return ListTile(
      leading: Icon(
        icon,
        color: color,
        size: 16,
      ),
      minVerticalPadding: 0,
      style: ListTileStyle.drawer,
      minLeadingWidth: 5,
      contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 0),
      title: Text(
        text,
        style: const TextStyle(
          color: color,
          fontSize: 14,
          overflow: TextOverflow.visible,
        ),
      ),
      hoverColor: hoverColor,
      onTap: () {
        if (callback != null) {
          callback();
        }
        Navigator.pushNamed(context, page);
      },
    );
  }
}
