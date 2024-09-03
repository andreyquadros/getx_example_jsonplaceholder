import 'package:examples_getx/models/todos_model.dart';
import 'package:get/get.dart';

class TodosController extends GetxController {
  var toDos1 = TodosModel(userId: 0, id: 0, title: '', completed: false).obs;
}
