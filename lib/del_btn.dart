import 'package:flutter/material.dart';

class Del extends StatefulWidget {
  final num;
  Function() PressedValue;
   Del({Key? key,this.num,required this.PressedValue}) : super(key: key);

  @override
  _DelState createState() => _DelState();
}

class _DelState extends State<Del> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: widget.PressedValue, child: Text(widget.num,style: TextStyle(color: Color.fromARGB(255,212,223,233), fontSize: 20),
    ),
        style: ElevatedButton.styleFrom(fixedSize: Size(360,45),primary: Color.fromARGB(255,64,75,94),elevation: 4,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)))
    );
  }
}
