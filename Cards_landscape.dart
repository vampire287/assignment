import 'package:flutter/material.dart';
class Cards2 extends StatelessWidget {
  final String text;
  final String value;
  // ignore: non_constant_identifier_names
  final TextStyle value_textstyle;

  Cards2(this.text, this.value, this.value_textstyle);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final double Width = MediaQuery.of(context).size.width;
    final double Height = MediaQuery.of(context).size.height;
    final Size txtSize = _textSize(value, value_textstyle);
    return Container(
      width: Width/2,
      height: (Height-mediaQuery.padding.top) / 3,
      decoration: BoxDecoration(
              border: Border.all(width: 2, color: Colors.grey),
            ),
      child: Row(
        children: <Widget>[
           Expanded(
             child: Container(
                width: Width - (value.isEmpty?0.0:txtSize.width),
                padding: const EdgeInsets.all(8.0),
                color: Colors.white,
                child: Text(
                  text,
                  style: const TextStyle(color: Colors.black, fontSize: 30),
                ),
              ),
           ),
          
            Container(
                width: value.isEmpty?0.0:txtSize.width,
                padding: const EdgeInsets.all(8.0),
                  color: Colors.black,
                child: Center(
                  child: Text(
                    value,
                    style: const TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
              ),
           
          
        ],
      ),
    );
  }
  Size _textSize(String text, TextStyle style) {
    final TextPainter textPainter = TextPainter(
        text: TextSpan(text: text, style: style),
        maxLines: 1,
        textDirection: TextDirection.ltr)
      ..layout(minWidth: 0, maxWidth: double.infinity);

    return textPainter.size;
  }
}