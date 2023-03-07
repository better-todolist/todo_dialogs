import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:todo_record/time_representation/time_limit.dart';

class DeathLineEditPage extends StatefulWidget {
  final TimeToEnd? currentTimeToEnd;

  const DeathLineEditPage(
      {super.key, this.currentTimeToEnd});

  @override
  State<StatefulWidget> createState() => DeathLineEditPageState();
}

class DeathLineEditPageState extends State<DeathLineEditPage> {
  TimeToEnd inner = Limitless();

  /// 实现ddl 的时间精度选择、和时间选择 *实现较复杂*
  ///
  /// 注意： 该widget 为独立页面，不是一个页面的一部分，请使用 Scaffold
  ///
  /// 日期选择使用 syncfusion_flutter_datepicker.SfDateRangePicker
  /// 参考文档： https://help.syncfusion.com/flutter/daterangepicker/overview
  /// 时间选择使用 showTimePicker
  /// 参考使用： https://codesinsider.com/flutter-timepicker-widget-example-tutorial/#:~:text=TimePicker%20is%20a%20material%20widget%20in%20flutter%20that,in%20instances%20like%20scheduling%20meetings%2C%20setting%20alarms%2C%20etc.
  ///
  ///
  /// ## 以下为注意事项
  ///
  /// 1. 如果没有提供 currentTimeToEnd， 那么默认的 ddl 模式为 limitless
  /// 2. 右下角的 floating button 为确认按键，点击该按键将返回更新后的 TimeToEnd，其他方式退出此页面均返回 null
  ///
  /// 3. 在页面顶部，有一个复选框 (checkBox) 选择启用ddl
  /// 4. 如果选择启用ddl, 那么就渲染以下内容
  ///   - 一个 下拉选择框（drop down）,可以选择以下时间精度，后续内容根据选择内容改变
  ///     - 精确到30分钟 -> date picker 使用 month view, 需要一个 “选择时间” 按键。
  ///     注意，时间需要对齐到最近的30分钟处
  ///     在选择日期和时间之前不允许能按 “完成”
  ///     - 精确到天 -> date picker 使用 month view
  ///     - 精确到周 -> date picker 使用 month view, 需要对其到小于选择值的周一，更新后需要表示在日期选择上
  ///     - 精确到月 -> date picker 使用 year view
  ///     - 精确到年 -> date picker 使用 decade view
  ///
  /// 5. 其他关于 date Picker配置
  ///   - navigationDirection ： 滚动方向
  ///   - navigationMode: 滚动方式
  ///   - showTodayButton： 是否显示 跳转到今天的按键
  ///   - showActionButtons： false 不显示 action 按键
  ///   - allowViewNavigation： false 阻止进入内一级别
  ///
  /// 6. 需要提供onSelectionChanged，来响应选择
  ///
  /// 7. 关于time picker
  ///   - 可以直接使用默认配置，初始时间如果有提供，那就使用提供的时间作为初始时间，否则用当前时间
  ///   作为初始时间
  ///
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
