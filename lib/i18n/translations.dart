import 'package:get/get.dart';

class MyTranslations extends Translations {
  // ignore: non_constant_identifier_names
  static String app_title = "app.title";
  static String settings = "settings";
  // ignore: non_constant_identifier_names
  static String settings_system = "settings.system";
  // ignore: non_constant_identifier_names
  static String settings_theme = "settings.theme";
  // ignore: non_constant_identifier_names
  static String settings_language = "settings.language";
  // ignore: non_constant_identifier_names
  static String settings_pick_a_type = "settings.pick_a_type";
  // ignore: non_constant_identifier_names
  static String todo_type = "type";
  // ignore: non_constant_identifier_names
  static String todo_type_default = "todo.type.default";
  // ignore: non_constant_identifier_names
  static String todo_type_work = "todo.type.work";
  // ignore: non_constant_identifier_names
  static String todo_type_personal = "todo.type.personal";
  // ignore: non_constant_identifier_names
  static String todo_button_cancel = "todo.button.cancel";
  // ignore: non_constant_identifier_names
  static String todo_button_add = "todo.button.add";
  // ignore: non_constant_identifier_names
  static String todo_button_ok = "todo.button.ok";
  // ignore: non_constant_identifier_names
  static String todo_edit_title = "todo.edit.title";
  // ignore: non_constant_identifier_names
  static String todo_no_data = "todo.no.data";
  // ignore: non_constant_identifier_names
  static String todo_add_title = "todo.add.title";

  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          app_title: "TodoDemo",
          "toSecondPage": "to second page",
          "secondPage": "this is the second Page",
          "all": "All",
          "completed": "Completed",
          "incomplete": "Incomplete",
          "home": "Home",
          settings: "Settings",
          "help": "Help",
          "appVersion": "App Version 1.1.0",
          todo_add_title: "Add todo",
          todo_type: "Type",
          todo_type_default: "default",
          todo_type_work: "work",
          todo_type_personal: "personal",
          todo_button_cancel: "Cancel",
          todo_button_add: "Add",
          todo_button_ok: "Ok",
          todo_edit_title: "Title",
          todo_no_data: 'No tasks available. \n Click the button below to add one.',
          settings_system: "System",
          settings_theme: "Theme",
          settings_language: "Language",
          settings_pick_a_type: "Pick a type",
        },
        'zh_CN': {
          app_title: "待办",
          "toSecondPage": "去到第二页",
          "secondPage": "这里上第二页",
          "all": "所有",
          "completed": "完成",
          "incomplete": "未完成",
          "home": "主页",
          settings: "设置",
          "help": "帮助",
          "appVersion": "程序版本 1.1.0",
          todo_add_title: "添加待办事项",
          todo_type: "类型",
          todo_type_default: "默认",
          todo_type_work: "工作",
          todo_type_personal: "个人",
          todo_button_cancel: "取消",
          todo_button_add: "添加",
          todo_button_ok: "确定",
          todo_edit_title: "标题",
          todo_no_data: '当前类型下没有待办事项. \n 点击添加按钮添加待办事项.',
          settings_system: "系统",
          settings_theme: "主题",
          settings_language: "语言",
          settings_pick_a_type: "请选择类型",
        }
      };
}
