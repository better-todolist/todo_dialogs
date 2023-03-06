import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/// TODO: 编辑内容（文本）弹窗
///
/// 1. 如果提供了`originValue` 将在输入框中默认显示
/// 2. 如果提供了hint 那就在输入框上方渲染
///
/// 3. 如果用户点击了 确认 按键，那么返回编辑后文本,否则返回 null
/// 4. 可以酌情添加更多参数
Future<String?> dialogEdit(
  BuildContext context, {
  Widget? hint,
  String? originValue,
  String? hintText,
  TextInputType textInputType = TextInputType.text,
  bool autoForce = false,
}) async {
  throw UnimplementedError();
}
