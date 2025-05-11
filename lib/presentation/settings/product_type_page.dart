import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:proyecto_final/application/providers/product_type_provider.dart';

class ProductTypePage extends ConsumerWidget {
  final TextEditingController nameController = TextEditingController();
  Color selectedColor = Colors.greenAccent;

  ProductTypePage();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productType = ref.watch(productTypeProvider);

    nameController.text = productType.typeName;
    // colorController.text = productType.color;

    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          TextField(
            controller: nameController,
            decoration: InputDecoration(labelText: 'Name'),
          ),
          SizedBox(height: 10),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Category Color:'),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: selectedColor,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('Pick a Color'),
                        content: SingleChildScrollView(
                          child: ColorPicker(
                            pickerColor: selectedColor,
                            onColorChanged: (color) {
                              selectedColor = color;
                            },
                          ),
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('Select'),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Text('Pick Color'),
              ),

              SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {
                  ref
                      .read(productTypeProvider.notifier)
                      .updateProductType(nameController.text, selectedColor);

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Product Type information updated!'),
                    ),
                  );
                },
                child: Text('Update'),
              ),
            ],
          ),

          //TODO: Enter a widget that picks a color and save the selection into a controller.
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              ref
                  .read(productTypeProvider.notifier)
                  .updateProductType(nameController.text, Colors.green);

              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Product Type information updated!')),
              );
            },
            child: Text('Update'),
          ),
        ],
      ),
    );
  }
}
