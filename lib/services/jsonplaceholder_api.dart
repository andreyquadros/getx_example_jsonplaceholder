import 'package:dio/dio.dart';
import 'package:examples_getx/controllers/todos_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../models/post_model.dart';
import '../models/todos_model.dart';

class JsonplaceholderApi {
  final dio = Dio();
  final TodosController todosController = Get.find();

  void getToDos() async {
    try {
      final response =
      await dio.get('https://jsonplaceholder.typicode.com/todos/1');
      if (response.statusCode == 200) {
        todosController.toDos1.value = TodosModel.fromJson(response.data);
      } else {
        throw Exception('Ocorreu um erro! ');
      }
    }catch(e){
      print('Deu ruim $e');
    }
  }

  void addPost(context, String title, String body, int userId) async {
    PostModel post = PostModel(title: title, body: body, userId: userId);
    try {
      final response =
      await dio.post('https://jsonplaceholder.typicode.com/posts',
          data: post.toJson(),
          options: Options(headers: {
            'Content-Type': 'application/json; charset=UTF-8',
          }));
      print('Resposta do Servidor: ${response.data}');
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Executado com sucesso!')));
    } catch (erro) {
      print('Erro ao adicionar o post: $erro');
    }
  }
}