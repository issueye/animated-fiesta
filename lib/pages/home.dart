import 'package:flutter/material.dart';
import 'package:flutter_template/controller/todo.dart';
import 'package:flutter_template/i18n/translations.dart';
import 'package:flutter_template/pages/settings.dart';
import 'package:flutter_template/pages/todo_list.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    TodoController controller = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: Text(MyTranslations.app_title.tr),
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) {
              if (value == 'all') {
                controller.fetchToDos();
              } else if (value == 'completed') {
                controller.fetchToDos(completed: true);
              } else if (value == 'incomplete') {
                controller.fetchToDos(completed: false);
              }
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              PopupMenuItem<String>(
                value: 'all',
                child: Text('all'.tr),
              ),
              PopupMenuItem<String>(
                value: 'completed',
                child: Text('completed'.tr),
              ),
              PopupMenuItem<String>(
                value: 'incomplete',
                child: Text('incomplete'.tr),
              ),
            ],
          ),
        ],
      ),
      drawer: Drawer(
        width: 200,
        elevation: 8,
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      MyTranslations.app_title.tr,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),
                    // const GithubUserInfoWidget(),
                  ],
                ),
                Divider(
                  color: Theme.of(Get.context!).colorScheme.primary,
                  thickness: 0.5,
                ),
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: [
                      ListTile(
                        title: Text('home'.tr),
                        leading: const Icon(Icons.list),
                        onTap: () {
                          Get.back();
                        },
                      ),
                      ListTile(
                        title: Text('settings'.tr),
                        leading: const Icon(Icons.settings),
                        onTap: () {
                          Get.to(SettingPage());
                        },
                      ),
                      ListTile(
                        title: Text('help'.tr),
                        leading: const Icon(Icons.help),
                        onTap: () {
                          // Add your help page navigation logic here
                        },
                      ),
                    ],
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                  child: Text(
                    'appVersion'.tr,
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: const TodoListPage(),
    );
  }
}
