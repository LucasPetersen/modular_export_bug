import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_export_bug/app/user/user_module.dart';

import 'group/group_module.dart';
import 'home_page.dart';

class AppModule extends Module {
  // @override
  // List<Module> get imports => [UserModule()];
  // Se realizar o import nesse módulo funciona o Bind UserService no UserModule

  @override
  List<ModularRoute> get routes => [
        ChildRoute(Modular.initialRoute, child: (_, __) => const HomePage()),
        ModuleRoute('/user', module: UserModule()),
        ModuleRoute('/group', module: GroupModule())
      ];
}
