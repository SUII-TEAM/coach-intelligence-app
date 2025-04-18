// ignore_for_file: constant_identifier_names, unnecessary_const

import 'package:ai_tactical_assistant/core/constants/app_fonts.dart';
import 'package:flutter/material.dart';

/// Default value of DatePicker's background color.
const DATETIME_PICKER_BACKGROUND_COLOR = Colors.white;

/// Default value of whether show title widget or not.
const DATETIME_PICKER_SHOW_TITLE_DEFAULT = true;

/// Default value of DatePicker's height.
const double DATETIME_PICKER_HEIGHT = 160.0;

/// Default value of DatePicker's title height.
const double DATETIME_PICKER_TITLE_HEIGHT = 36.0;

/// Default value of DatePicker's column height.
const double DATETIME_PICKER_ITEM_HEIGHT = 36.0;

/// Default value of DatePicker's item [TextStyle].
const TextStyle DATETIME_PICKER_ITEM_TEXT_STYLE = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.w500,
  fontFamily: AppFonts.cairo,
);

const Color DATETIME_PICKER_ITEM_TEXT_COLOR = Colors.black;
const double DATETIME_PICKER_ITEM_TEXT_SIZE_SMALL = 15;
const double DATETIME_PICKER_ITEM_TEXT_SIZE_BIG = 17;

/// Default value of DatePicker's divider height.
const double DATETIME_PICKER_DIVIDER_HEIGHT = 1.0;

/// Default value of DatePicker's divider thickness.
const double DATETIME_PICKER_DIVIDER_THICKNESS = 2.0;

/// Default value of DatePicker's diameter ratio.
const double DATETIME_PICKER_DIAMETER_RATIO = 1.5;

/// Default value of DatePicker's divider thickness.
const double DATETIME_PICKER_SQUEEZE = 0.95;

/// To support both stable and beta channels until
/// 'DiagnosticableMixin' is officially deprecated.
class DateTimePickerTheme {
  final cancelDefault = const Text('OK');

  /// DateTimePicker theme.
  ///
  /// [backgroundColor] DatePicker's background color.
  /// [cancelTextStyle] Default cancel widget's [TextStyle].
  /// [confirmTextStyle] Default confirm widget's [TextStyle].
  /// [cancel] Custom cancel widget.
  /// [confirm] Custom confirm widget.
  /// [title] Custom title widget. If specify a title widget, the cancel and confirm widgets will not display. Must set [titleHeight] value for custom title widget.
  /// [showTitle] Whether display title widget or not. If set false, the default cancel and confirm widgets will not display, but the custom title widget will display if had specified one custom title widget.
  /// [pickerHeight] The value of DatePicker's height.
  /// [titleHeight] The value of DatePicker's title height.
  /// [itemHeight] The value of DatePicker's column height.
  /// [itemTextStyle] The value of DatePicker's column [TextStyle].
  /// [dividerHeight] The value of DatePicker's Divider height.
  /// [dividerThickness] The value of DatePicker's Divider thickness.
  /// [dividerSpacing] The value of DatePicker's Divider spacing.
  /// [dividerColor] The value of DatePicker's Divider Color [TextStyle].
  /// [squeeze] The value of DatePicker's squeeze.
  /// [diameterRatio] The value of DatePicker's diameter ratio.
  const DateTimePickerTheme({
    this.backgroundColor = DATETIME_PICKER_BACKGROUND_COLOR,
    this.cancelTextStyle,
    this.confirmTextStyle,
    this.cancel,
    this.confirm,
    this.title,
    this.showTitle = DATETIME_PICKER_SHOW_TITLE_DEFAULT,
    this.pickerHeight = DATETIME_PICKER_HEIGHT,
    this.titleHeight = DATETIME_PICKER_TITLE_HEIGHT,
    this.itemHeight = DATETIME_PICKER_ITEM_HEIGHT,
    this.itemTextStyle = DATETIME_PICKER_ITEM_TEXT_STYLE,
    this.dividerHeight = DATETIME_PICKER_DIVIDER_HEIGHT,
    this.dividerThickness = DATETIME_PICKER_DIVIDER_THICKNESS,
    this.dividerSpacing,
    this.dividerColor,
    this.squeeze = DATETIME_PICKER_SQUEEZE,
    this.diameterRatio = DATETIME_PICKER_DIAMETER_RATIO,
  });

  static const DateTimePickerTheme Default = const DateTimePickerTheme();

  /// DatePicker's background color.
  final Color backgroundColor;

  /// Default cancel widget's [TextStyle].
  final TextStyle? cancelTextStyle;

  /// Default confirm widget's [TextStyle].
  final TextStyle? confirmTextStyle;

  /// Custom cancel [Widget].
  final Widget? cancel;

  /// Custom confirm [Widget].
  final Widget? confirm;

  /// Custom title [Widget]. If specify a title widget, the cancel and confirm widgets will not display.
  final Widget? title;

  /// Whether display title widget or not. If set false, the default cancel and confirm widgets will not display, but the custom title widget will display if had specified one custom title widget.
  final bool showTitle;

  /// The value of DatePicker's height.
  final double pickerHeight;

  /// The value of DatePicker's title height.
  final double titleHeight;

  /// The value of DatePicker's column height.
  final double itemHeight;

  /// The value of DatePicker's column [TextStyle].
  final TextStyle itemTextStyle;

  /// The value of DatePicker's Divider Color [TextStyle].
  final Color? dividerColor;

  /// The value of DatePicker's Divider height.
  final double? dividerHeight;

  /// The value of DatePicker's Divider thickness.
  final double? dividerThickness;

  /// The value of DatePicker's Divider spacing.
  final double? dividerSpacing;

  /// The value of DatePicker's squeeze.
  final double? squeeze;

  /// The value of DatePicker's diameter ratio.
  final double? diameterRatio;
}
