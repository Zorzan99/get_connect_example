import 'dart:developer';

import 'package:get/get.dart';
import 'package:get_pokedex/model/user_model.dart';
import 'package:get_pokedex/repositories/user_repository.dart';

class HomeController extends GetxController with StateMixin<List<UserModel>> {
  final UserRepository _repository;

  HomeController({required UserRepository repository})
      : _repository = repository;

  @override
  void onReady() {
    findAll();
    super.onReady();
  }

  Future<void> findAll() async {
    try {
      change([], status: RxStatus.loading());

      final users = await _repository.findAll();

      var statusReturn = RxStatus.success();

      if (users.isEmpty) {
        statusReturn = RxStatus.empty();
      }
      change(users, status: statusReturn);
    } catch (e, s) {
      log('ERRO AO BUSCAR USUARIOS', error: e, stackTrace: s);
      change(state, status: RxStatus.error());
    }
  }
}
