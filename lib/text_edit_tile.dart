import 'package:flutter/widgets.dart';

/// 列表中的文本内容编辑元素，能够编辑/删除
class TextEditListTile extends StatelessWidget {
  final String currentText;
  final TextStyle? style;
  final Widget? leading;

  final Function()? onDelete;
  final Function(String) onUpdate;

  const TextEditListTile({
    super.key,
    required this.onUpdate,
    required this.currentText,
    this.leading,
    this.onDelete,
    this.style,
  });

  /// 要求实现
  ///
  /// 一个该 widget 为一个编辑行中的元素
  ///
  /// 1. 在右侧显示 ‘edit’ 和 'delete' 按键
  ///   - 点击 `edit` 时， 弹出 `dialogEdit` 弹窗，供用户编辑修改内容。用户修改确认完毕后，
  ///   使用回调函数 `onUpdate`
  ///   - 点击 `delete` 按键时，弹出 `dialogConfirm` 让用户确认删除， 用户确认删除后，
  ///   调用回调 `onDelete`
  /// 2. 如果用户提供了 leading 将其渲染在左侧
  /// 3. 文本左对齐
  /// |---------|-----------------------|----|------|
  /// | leading |     current text      |edit|delete|
  /// |---------|-----------------------|----|------|
  /// 4. 注意，如果提供了Text style 那需要作业到 current text
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
