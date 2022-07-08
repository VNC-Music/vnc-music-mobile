import 'package:flutter/material.dart';
import 'package:vnc_music/pages/historico/historico.dart';

class Routes {
  static Map<String, Widget Function(BuildContext)> list =
      <String, WidgetBuilder>{
    '/historico': (_) => const Historico(),
    // '/minha_conta': (_) => const MinhaConta(),
    // '/configuracoes': (_) => const Configuracoes(),
    // '/sobre': (_) => const Sobre(),
    // '/manuais': (_) => const Manuais(),
    // '/login': (_) => const Login(),
    // // '/accountcreation':  (_) => const ConfirmarConta(),
    // '/passwordrecovery/:token': (_) => const CadastrarSenha(),
  };

  // static String initial = '/meus_dispositivos';
  static GlobalKey<NavigatorState>? navigatorKey = GlobalKey<NavigatorState>();
}
