import 'package:first_getx_project/my_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => MyPageController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('the first project with Getx'),
      ),
      floatingActionButton: IconButton(
        icon: const Icon(
          Icons.add_circle_rounded,
          color: Colors.blue,
          size: 50,
        ),
        onPressed: () {
          _controller.addToNumber();
        },
      ),
      body: _body,
    );
  }

  Widget get _body => Center(
      child: Obx(() => Text(
            _controller.number.value.toString(),
            style: TextStyle(
                fontSize: 32,
                color:
                    _controller.isNumberTen.value ? Colors.red : Colors.grey),
          )));

  MyPageController get _controller => Get.find<MyPageController>();
}
