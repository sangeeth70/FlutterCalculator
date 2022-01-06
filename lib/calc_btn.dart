import 'package:flutter/material.dart';

class CBtn extends StatefulWidget {
  final num;
  Function() PressedValue;
   TextStyle? textStyle=TextStyle(fontSize: 17);
  CBtn({Key? key,required this.num,required this.PressedValue,this.textStyle}) : super(key: key);

  @override
  _CBtnState createState() => _CBtnState();
}

class _CBtnState extends State<CBtn> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(child: Text(widget.num,style: widget.textStyle,),
      onPressed: widget.PressedValue,
      style: ElevatedButton.styleFrom(fixedSize: Size(75, 75),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      primary: Color.fromARGB(255,64,75,94)),

    );
  }

}
