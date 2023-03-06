import 'package:flutter/widgets.dart';
import 'package:todo_record/tag.dart';

/// 选择tags 的弹窗，可以添加也可以减少
///
/// 1. 在用户完成修改后，当且仅当用户点击 `确认` 后，才会返回 选择的tag 的 tagId 的list, 否则
/// 返回null
/// 2. 注意，小心不要修改了原来的 `currentSelected` (深拷贝)
Future<List<int>?> dialogTagsSelect(
  BuildContext context, {
  required TagMap map,
  List<int>? currentSelected,
}) async {
  /// TODO:
  throw UnimplementedError();
}
