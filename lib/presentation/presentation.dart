import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:proyecto_final/application/riverpod.dart';
import 'package:proyecto_final/presentation/settings/product_type_page.dart';
import 'package:proyecto_final/presentation/settings/user_page.dart';

class Presentation extends ConsumerWidget {
  Presentation({super.key});

  TextEditingController valueController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final containerState = ref.watch(containerProvider);

    return Scaffold(
      appBar: AppBar(title: Text('Proyecto Final')),
      body: Padding(
        padding: EdgeInsets.all(5),
        child: Column(
          children: [
            UserPage(),
            SizedBox(height: 20),
            ProductTypePage(),
            TextField(
              controller: valueController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Ingresa nuevo valor",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                double valor = double.tryParse(valueController.text)!;
                ref.read(containerProvider.notifier).updateResult(valor + 1);
              },
              child: Text("Incrementar"),
            ),
            SizedBox(height: 20),
            Text(
              containerState.result.toString(),
              style: TextStyle(fontSize: 50, color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
