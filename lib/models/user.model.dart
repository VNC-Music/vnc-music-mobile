import 'package:vnc_music/models/membro.model.dart';
import 'package:vnc_music/models/user-perfil.model.dart';

class User {
  int id = 0;
  String email = '';
  DateTime created = DateTime.now();
  late DateTime updated;
  bool isVerified = false;
  String jwtToken = '';
  String refreshToken = '';
  int membroId = 0;
  Membro membro = Membro();
  int perfilId = 0;
  UserPerfil perfil = UserPerfil();
  late Role role;

  User() {
    if (perfilId == 1) role = Role.admin;
    if (perfilId == 2) role = Role.master;
    if (perfilId == 3) role = Role.user;
  }
}
