import 'package:flutter/material.dart';

class PicReusableRow extends StatefulWidget {
  String image, text;
  PicReusableRow({required this.image, required this.text});

  @override
  State<PicReusableRow> createState() => _PicReusableRowState();
}

class _PicReusableRowState extends State<PicReusableRow> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image(
                image: AssetImage(widget.image),
                width: MediaQuery.sizeOf(context).width * 0.4,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 120, top: 5),
                child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(255, 199, 121, 115)),
                    child: Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.white,
                    )),
              )
            ],
          ),
          Row(
            children: [
              Text(
                widget.text,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.1,
              ),
              Icon(Icons.star_border),
              Text('4.99')
            ],
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.001,
          ),
          Row(
            children: [
              Text('Thialand'),
              SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.08,
              ),
              Text('\$960/person'),
            ],
          )
        ],
      ),
    );
  }
}
