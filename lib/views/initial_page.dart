import 'package:examples_getx/views/get_page.dart';
import 'package:examples_getx/views/post_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InitialPage extends StatefulWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Página Inicial',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 30,),
            Text('Menu - Opções: '),
            SizedBox(height: 30,),
            ElevatedButton(
                style: ButtonStyle(backgroundColor: WidgetStateProperty.all(Colors.blue)),
                onPressed: (){
                  Get.to(() => GetPageScreen());
                }, child: Text('Executar uma Operação GET', style: TextStyle(color: Colors.white),)),
            ElevatedButton(
                style: ButtonStyle(backgroundColor: WidgetStateProperty.all(Colors.blue)),
                onPressed: (){
                  Get.to(() => PostPage());
                }, child: Text('Executar uma Operação POST', style: TextStyle(color: Colors.white)))
          ],
        ),
      ),
    );
  }
}