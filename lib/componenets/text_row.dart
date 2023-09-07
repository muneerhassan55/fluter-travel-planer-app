import 'package:flutter/material.dart';

class TextRow extends StatefulWidget {
  String text;
  TextRow({required this.text});

  @override
  State<TextRow> createState() => _TextRowState();
}

class _TextRowState extends State<TextRow> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Card(
        elevation: 10,
        child: Container(
          height: MediaQuery.sizeOf(context).height * 0.03,
          width: MediaQuery.sizeOf(context).width * 0.3,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          child: Center(
              child: Text(
            widget.text,
            style: TextStyle(
                fontSize: 17,
                color: isSelected == true ? Colors.black87 : Colors.grey),
          )),
        ),
      ),
    );
  }
}
