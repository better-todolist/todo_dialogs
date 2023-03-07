import 'package:flutter/widgets.dart';
import 'package:todo_record/record/sub_todo.dart';

/// Group 元素重排序/添加/删除/修改
class GroupReorderPage extends StatefulWidget {
  final List<SubTodoGroup> groups;

  const GroupReorderPage({super.key, required this.groups});

  @override
  State<StatefulWidget> createState() => GroupReorderPageState();
}

class GroupReorderPageState extends State<GroupReorderPage> {
  late List<SubTodoGroup> groups;

  @override
  void initState() {
    super.initState();

    groups = widget.groups
        .map((e) => SubTodoGroup(e.title, e.list.toList()))
        .toList();
  }
  /// 注意：
  /// 1. 本 widget 是一个独立的页面，请使用 Scaffold
  /// 2. 使用 drag_and_drop_lists 中的 DragAndDropLists 构建页面 请参考对应项目的example
  ///
  /// 要求实现
  ///
  /// 1. 每个group头和内部的todo内容 使用 Text edit tile, leading 使用 Icons.reorder
  /// 2. group 头 应该与 内部todo 使用不一样的style 以进行区分
  /// 3. 每个 DragAndDropList 提供 lastTarget， 填充 一个按钮，使能够添加一个 todo项到
  /// 对应的group
  /// 4. 当使用 Text edit tile 时， 提供正确的回调函数，请注意列表变化带来的索引变化问题
  /// 5. 在 右下角的 floating button , 提供一个 `ok` 按键， 当且仅当 用户点击ok后，将更新的
  /// groups 返回给上一级。其他情况下均返回null
  /// 6. 在 右上角 AppBar 添加 popup menu ，内含有以下功能按键
  ///   - 添加具名分组 ： 在当前 groups 内元素 title 均为非 null 时可用. 用户点击（onTap）后
  ///   将会弹出一个一个输入框，用户输入确认后，将往 groups 末尾追加一个空 group
  ///   - 添加独立子Todo事件: 在当前groups 内元素 只有一个 且 title 为 null 或者 group 为 空
  ///   时可用。 用户输入完成确认后，如果groups 为空，那就创建一个 title 为null 的groups 插入，
  ///   然后将新的 todo事项放在 group 中，
  ///   - 分割线
  ///   - 扁平化： 将所有的groups 中的待办事件全部合并成一个 title 为 null 的group。该操作
  ///   需要弹窗确认
  ///   - 分割线
  ///   - 清空全部： 清空 groups ，该操作需要弹窗确认
  ///
  ///
  /// 7. 提供拖拽功能， 编辑功能和 删除功能。 注意元素索引变化
  ///
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
