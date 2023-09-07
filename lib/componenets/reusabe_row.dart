import 'package:flutter/material.dart';

class ReusableRow extends StatefulWidget {
  String image1, text;

  ReusableRow({required this.image1, required this.text});

  @override
  State<ReusableRow> createState() => _ReusableRowState();
}

class _ReusableRowState extends State<ReusableRow> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: GestureDetector(
        onTap: () {
          setState(() {
            isSelected = !isSelected;
          });
        },
        child: Container(
          height: MediaQuery.sizeOf(context).height * 0.06,
          width: MediaQuery.sizeOf(context).width * 0.35,
          decoration: BoxDecoration(
              color: isSelected == true ? Colors.green : Colors.white,
              borderRadius: BorderRadius.circular(10)),
          child: Row(children: [
            Image(
              image: AssetImage(widget.image1),
              height: 40,
              width: 50,
            ),
            SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.01,
            ),
            Text(
              widget.text,
              style: TextStyle(
                color: isSelected == true ? Colors.white : Colors.black,
                fontSize: 17,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
