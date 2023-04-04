import 'package:get/get.dart';
import 'package:get_pokedex/model/user_model.dart';

class UserRepository {
  final restClient = GetConnect();

  Future<List<UserModel>> findAll() async {
    final result =
        await restClient.get('https://jsonplaceholder.typicode.com/posts');

    if (result.hasError) {
      throw Exception('Erro ao buscar api ${result.statusText}');
    }
    return result.body
        .map<UserModel>((user) => UserModel.fromMap(user))
        .toList();
  }
}
