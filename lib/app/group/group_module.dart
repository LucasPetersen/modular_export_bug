import 'package:flutter_modular/flutter_modular.dart';

import '../user/user_module.dart';
import 'group_page.dart';

class GroupModule extends Module {
  @override
  List<Module> get imports => [UserModule()];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(Modular.initialRoute, child: (_, args) => const GroupPage()),
      ];
}
