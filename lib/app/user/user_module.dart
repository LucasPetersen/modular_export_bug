import 'package:flutter_modular/flutter_modular.dart';

import 'user_page.dart';
import 'user_service.dart';

class UserModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.factory((i) => UserService(i()), export: true),
        Bind.lazySingleton((i) => UserSubService(), export: true),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(Modular.initialRoute, child: (_, args) => const UserPage()),
      ];
}
