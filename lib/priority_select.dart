import 'package:flutter/widgets.dart';

/// 显示优先级选择弹窗，并返回结果
///
/// 1. 如果用户选择了优先级并点击 '确认' 按键退出，那么返回用户选择的优先性，
/// 否则 返回 null
/// 2. 如果提供了 `currentPriority` 那么就初始选择给定的优先级，否则默认优先级为 5
/// 3. 可酌情添加其他参数
///
Future<int?> dialogPrioritySelect(BuildContext context,
    {int currentPriority = 5,}) async {
  /// TODO:
  throw UnimplementedError();
}