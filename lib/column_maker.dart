import 'enums.dart';

///*ColumnMaker*
/// With this class you can build a column with some text and alignment
/// This is a good approach if you want to do a recepit like
/// With [text] , [width] and [align] you can build  a row as you like with any combination of alignment and size<br>
/// Name  Qtd Value
///
/// XXX   2   2.33
///
class ColumnMaker {
  String text;
  int width;
  SunmiPrintAlign align;
  ColumnMaker({
    this.text = '',
    this.width = 2,
    this.align = SunmiPrintAlign.LEFT,
  });
  //Convert to json
  Map<String, String> toJson() {
    int value = 0;
    switch (align) {
      case SunmiPrintAlign.LEFT:
        value = 0;
        break;
      case SunmiPrintAlign.CENTER:
        value = 1;
        break;
      case SunmiPrintAlign.RIGHT:
        value = 2;
        break;
      default:
        value = 0;
    }
    return {
      "text": text,
      "width": width.toString(),
      "align": value.toString(),
    };
  }
}
import 'package:flutter/widgets.dart';

class CustomWidget extends Widget {
  final String title;
  final int value;

  CustomWidget({required this.title, required this.value});

  @override
  Element createElement() {
    return CustomElement(this);
  }
}

class CustomElement extends Element {
  CustomElement(CustomWidget widget) : super(widget);

  @override
  void update(CustomWidget newWidget) {
    // Update the widget properties if necessary
    // Perform any other logic required for updating the element
    super.update(newWidget);
  }

  @override
  Widget build() {
    CustomWidget customWidget = widget as CustomWidget;

    // Build the UI using customWidget.title and customWidget.value
    // Return a widget tree representing the desired UI
    return Container(
      child: Column(
        children: [
          Text(customWidget.title),
          Text(customWidget.value.toString()),
        ],
      ),
    );
  }
}

