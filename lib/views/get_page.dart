import 'package:examples_getx/controllers/todos_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../services/jsonplaceholder_api.dart';

class GetPageScreen extends StatefulWidget {
  const GetPageScreen({Key? key}) : super(key: key);

  @override
  State<GetPageScreen> createState() => _GetPageScreenState();
}

class _GetPageScreenState extends State<GetPageScreen> {
  final TodosController todosController = Get.put(TodosController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Recuperar ToDo1',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.blue)),
              onPressed: () {
                JsonplaceholderApi().getToDos();
              },
              child: Center(
                child: Text(
                  'Recuperar Dados Via Get',
                  style: TextStyle(color: Colors.white),
                ),
              )),
          Obx(() {
            return Padding(
              padding: const EdgeInsets.all(32.0),
              child: Center(
                child: Column(
                  children: [
                    Text('UserId: ${todosController!.toDos1.value.userId}'),
                    Text('Id: ${todosController!.toDos1.value.id}'),
                    Text('Id: ${todosController!.toDos1.value.title}'),
                    Text('Id: ${todosController!.toDos1.value.completed}'),
                  ],
                ),
              ),
            );
          }),
        ],
      ),
    );
  }
}
