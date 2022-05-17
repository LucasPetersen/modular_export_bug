class UserService {
  final UserSubService userSubService;

  UserService(this.userSubService) {
    print('INSTANCIATE UserService $hashCode');
  }
}

class UserSubService {
  UserSubService() {
    print('INSTANCIATE UserSubService $hashCode');
  }
}
