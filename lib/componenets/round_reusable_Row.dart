import 'package:flutter/material.dart';

class RoundReusableRow extends StatefulWidget {
  String image, text;
  RoundReusableRow({required this.image, required this.text});

  @override
  State<RoundReusableRow> createState() => _RoundReusableRowState();
}

class _RoundReusableRowState extends State<RoundReusableRow> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 15, top: 15),
        child: Column(
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
              ),
              child: CircleAvatar(
                radius: 30.0,
                child: ClipRRect(
                  child: Image(image: AssetImage(widget.image)),
                  borderRadius: BorderRadius.circular(50.0),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.01,
            ),
            Text(
              widget.text,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: isSelected == true ? Colors.black : Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}
