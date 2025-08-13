import 'package:flutter/material.dart';

class UiHelper {
  static Widget customImage({required String img}) {
    return Image.asset('assets/images/$img');
  }

  static Widget customText({
    required String text,
    required Color color,
    required FontWeight fontweight,
    String? fontfamily,
    required double fontsize,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontsize,
        color: color,
        fontWeight: fontweight,
        fontFamily: fontfamily ?? 'regular',
      ),
    );
  }

  static Widget customTextField(TextEditingController controller) {
    return Container(
      height: 46,
      width: 400,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Color(0xFFC5C5C5)),
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: 'Search "ice-cream"',
          hintStyle: TextStyle(color: Color(0xFF9C9C9C)),
          focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
          prefixIcon: Icon(Icons.search_outlined),
          suffixIcon: Icon(Icons.mic),
        ),
      ),
    );
  }

  static Widget customButton(VoidCallback onTap) {
    return Container(
      height: 18,
      width: 30,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: Color(0xFF27AF34)),
      ),
      child: Center(
        child: Text(
          'Add',
          style: TextStyle(color: Color(0xFF27AF34), fontSize: 8),
        ),
      ),
    );
  }

  static Widget customTimer(){
    return Image.asset('assets/images/timer 1.png');
  }
  static Widget timerText(){
    return Text('16 Mins',style: TextStyle(fontSize: 12,color: Color(0xFF9C9C9C)),);
  }
}
