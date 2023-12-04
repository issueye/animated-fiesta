import 'package:flutter/material.dart';
import 'package:flutter_template/controller/todo.dart';
import 'package:flutter_template/i18n/translations.dart';
import 'package:flutter_template/models/todo.dart';
import 'package:flutter_material_pickers/flutter_material_pickers.dart';
import 'package:get/get.dart';

class AddTodoDialog extends StatefulWidget {
  const AddTodoDialog({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _AddTodoDialogState createState() => _AddTodoDialogState();
}

class _AddTodoDialogState extends State<AddTodoDialog> {
  final TextEditingController _titleController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _selectedType = MyTranslations.todo_type_default.tr;

  @override
  Widget build(BuildContext context) {
    List<String> pickType = <String>[
      MyTranslations.todo_type_default.tr,
      MyTranslations.todo_type_work.tr,
      MyTranslations.todo_type_personal.tr,
    ];

    return AlertDialog(
      content: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              controller: _titleController,
              decoration: InputDecoration(
                labelText: MyTranslations.todo_edit_title.tr,
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a title';
                }
                return null;
              },
            ),
            ListTile(
              title: Text('${MyTranslations.todo_type}: $_selectedType'),
              onTap: () {
                showMaterialScrollPicker(
                  context: context,
                  title: MyTranslations.settings_pick_a_type.tr,
                  items: pickType,
                  cancelText: MyTranslations.todo_button_cancel.tr,
                  confirmText: MyTranslations.todo_button_ok.tr,
                  selectedItem: _selectedType,
                  onChanged: (value) {
                    setState(() {
                      _selectedType = value;
                    });
                  },
                );
              },
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(MyTranslations.todo_button_cancel.tr),
        ),
        TextButton(
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              Get.find<TodoController>().addToDo(
                Todo(
                  title: _titleController.text,
                  type: _selectedType,
                  completed: false,
                  createdAt: DateTime.now(),
                ),
              );
              Navigator.of(context).pop();
            }
          },
          child: Text(MyTranslations.todo_button_add.tr),
        ),
      ],
    );
  }
}
