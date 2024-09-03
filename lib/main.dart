import 'package:examples_getx/views/initial_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controllers/todos_controller.dart';

void main() {
  Get.put(TodosController());
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: InitialPage(),
  ));
}
