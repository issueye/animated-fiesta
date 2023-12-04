import 'package:flutter/material.dart';
import 'package:flutter_material_pickers/helpers/show_responsive_dialog.dart';
import 'package:flutter_template/components/add_todo_dialog.dart';
import 'package:flutter_template/components/todo_item.dart';
import 'package:flutter_template/controller/todo.dart';
import 'package:flutter_template/i18n/translations.dart';
import 'package:get/get.dart';

class TodoListPage extends GetView<TodoController> {
  const TodoListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Obx(
              () => controller.todos.isEmpty
                  ? Center(
                      child: Text(
                        MyTranslations.todo_no_data.tr,
                        textAlign: TextAlign.center,
                      ),
                    )
                  : ListView.builder(
                      itemCount: controller.todos.length,
                      itemBuilder: (context, index) {
                        final todo = controller.todos[index];
                        return TodoItem(todo: todo);
                      },
                    ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          showMaterialResponsiveDialog(
            headerColor: Colors.black26,
            title: MyTranslations.todo_add_title.tr,
            child: const AddTodoDialog(),
            context: context,
            hideButtons: true,
          );
        },
      ),
    );
  }
}
