import 'package:get/get.dart';
import 'package:get_pokedex/pages/home/home_controller.dart';
import 'package:get_pokedex/repositories/user_repository.dart';

class HomeBindings implements Bindings {
  @override
  void dependencies() {
    {
      Get.lazyPut(() => UserRepository());
      Get.put(
        HomeController(repository: Get.find()),
      );
    }
  }
}
