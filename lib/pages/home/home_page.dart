import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_pokedex/pages/home/home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('JSON PLACEHOLDER'),
      ),
      body: controller.obx((state) {
        if (state == null) {
          return const Text('Erro state igual nulo');
        }
        return ListView.builder(
          itemCount: state.length,
          itemBuilder: (context, index) {
            final user = state[index];

            return ListTile(
              title: Text(
                user.id.toString(),
              ),
              subtitle: Text(user.body),
            );
          },
        );
      },
          onEmpty: const Text('Erro onempty'),
          onError: (error) => const Text('Erro')),
    );
  }
}
