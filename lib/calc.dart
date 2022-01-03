import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';


class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  var a="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calculator",style: TextStyle(color: Color.fromARGB(255,212,223,233),
      ),
      ),
      backgroundColor: Color.fromARGB(255,54,67,83),elevation: 0,),
      backgroundColor: Color.fromARGB(255,54,67,83),
      body:
      Column(mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(child: Divider(thickness: 0.5,color: Color.fromARGB(255,212,223,233),),margin: EdgeInsets.only(bottom: 175),),
          Text("$a", style: TextStyle(color: Color.fromARGB(255,212,223,233),fontSize: 35,
          ),
          ),Container(width: 310,
            child: ElevatedButton(onPressed: backSpace, child: Text('Del',style: TextStyle(color: Color.fromARGB(255,212,223,233), fontSize: 20),
            ),
            style: ElevatedButton.styleFrom(fixedSize: Size(360,45),primary: Color.fromARGB(255,64,75,94),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)))
            ),
          ),

          Container(
            child: Container(margin: EdgeInsets.only(left:  10,top: 10,right: 10),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  
                     ElevatedButton(
                      onPressed: () {EnterNumber("1");},style: ElevatedButton.styleFrom(fixedSize: Size(75, 75),
                         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),primary: Color.fromARGB(255,64,75,94)),
                      child: Text('1', style: TextStyle(color: Color.fromARGB(255,212,223,233),fontSize: 20),),
                    ),

                  ElevatedButton(
                    onPressed: () {EnterNumber("2");},style: ElevatedButton.styleFrom(fixedSize: Size(75, 75),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),primary: Color.fromARGB(255,64,75,94)),
                    child: Text('2', style: TextStyle(color: Color.fromARGB(255,212,223,233),fontSize: 20),),
                  ),
                  ElevatedButton(
                    onPressed: () {EnterNumber("3");},style: ElevatedButton.styleFrom(fixedSize: Size(75, 75),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),primary: Color.fromARGB(255,64,75,94)),
                    child: Text('3', style: TextStyle(color: Color.fromARGB(255,212,223,233),fontSize: 20),),
                  ),
                  ElevatedButton(
                    onPressed: () {EnterNumber("+");},style: ElevatedButton.styleFrom(fixedSize: Size(75, 75),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),primary: Color.fromARGB(255,64,75,94)),
                    child: Text('+', style: TextStyle(color: Color.fromARGB(255,212,223,233),fontSize: 20),),
                  ),
                ],
              ),
            ),
          ),
          Container(margin: EdgeInsets.only(left:  10,top: 10,right: 10),child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {EnterNumber("4");},style: ElevatedButton.styleFrom(fixedSize: Size(75, 75),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),primary: Color.fromARGB(255,64,75,94)),
                child: Text('4', style: TextStyle(color: Color.fromARGB(255,212,223,233),fontSize: 20),),
              ),

              ElevatedButton(
                onPressed: () {EnterNumber("5");},style: ElevatedButton.styleFrom(fixedSize: Size(75, 75),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),primary: Color.fromARGB(255,64,75,94)),
                child: Text('5', style: TextStyle(color: Color.fromARGB(255,212,223,233),fontSize: 20),),
              ),
              ElevatedButton(
                onPressed: () {EnterNumber("6");},style: ElevatedButton.styleFrom(fixedSize: Size(75, 75),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),primary: Color.fromARGB(255,64,75,94)),
                child: Text('6', style: TextStyle(color: Color.fromARGB(255,212,223,233),fontSize: 20),),
              ),
              ElevatedButton(
                onPressed: () {EnterNumber("-");},style: ElevatedButton.styleFrom(fixedSize: Size(75, 75),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),primary: Color.fromARGB(255,64,75,94)),
                child: Text('+', style: TextStyle(color: Color.fromARGB(255,212,223,233),fontSize: 20),),
              ),
            ],
          ),
          ),
          Container(margin: EdgeInsets.only(left:  10,top: 10,right: 10),child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {EnterNumber("7");},style: ElevatedButton.styleFrom(fixedSize: Size(75, 75),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),primary: Color.fromARGB(255,64,75,94)),
                child: Text('7', style: TextStyle(color: Color.fromARGB(255,212,223,233),fontSize: 20),),
              ),

              ElevatedButton(
                onPressed: () {EnterNumber("8");},style: ElevatedButton.styleFrom(fixedSize: Size(75, 75),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),primary: Color.fromARGB(255,64,75,94)),
                child: Text('8', style: TextStyle(color: Color.fromARGB(255,212,223,233),fontSize: 20),),
              ),
              ElevatedButton(
                onPressed: () {EnterNumber("9");},style: ElevatedButton.styleFrom(fixedSize: Size(75, 75),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),primary: Color.fromARGB(255,64,75,94)),
                child: Text('9', style: TextStyle(color: Color.fromARGB(255,212,223,233),fontSize: 20),),
              ),
              ElevatedButton(
                onPressed: () {EnterNumber("/");},style: ElevatedButton.styleFrom(fixedSize: Size(75, 75),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),primary: Color.fromARGB(255,64,75,94)),
                child: Text('/', style: TextStyle(color: Color.fromARGB(255,212,223,233),fontSize: 20),),
              ),
            ],
          ),
          ),
          Container(margin: EdgeInsets.only(left:  10,top: 10,right: 10),child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {Clear();},style: ElevatedButton.styleFrom(fixedSize: Size(75, 75),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),primary: Color.fromARGB(255,64,75,94)),
                child: Text('C', style: TextStyle(color: Color.fromARGB(255,212,223,233),fontSize: 20),),
              ),
              ElevatedButton(
                onPressed: () {EnterNumber("0");},style: ElevatedButton.styleFrom(fixedSize: Size(75, 75),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),primary: Color.fromARGB(255,64,75,94)),
                child: Text('7', style: TextStyle(color: Color.fromARGB(255,212,223,233),fontSize: 20),),
              ),
              ElevatedButton(
                onPressed: () {equalTo();},style: ElevatedButton.styleFrom(fixedSize: Size(75, 75),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),primary: Color.fromARGB(255,212,223,233)),
                child: Text('=', style: TextStyle(color: Color.fromARGB(255,64,75,94),fontSize: 20),),
              ),
              ElevatedButton(
                onPressed: () {EnterNumber("*");},style: ElevatedButton.styleFrom(fixedSize: Size(75, 75),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),primary: Color.fromARGB(255,64,75,94)),
                child: Text('*', style: TextStyle(color: Color.fromARGB(255,212,223,233),fontSize: 20),),
              ),
            ],
          )
          ),
          SizedBox(height: 20,)

        ],
      ),
    );
  }

  EnterNumber(var num){
    setState(() {
      a += num;
    });
  }
  equalTo() {
    Parser p = Parser();
    Expression exp = p.parse(a);
    // Bind variables:
    ContextModel cm = ContextModel();

    // Evaluate expression:
    double eval = exp.evaluate(EvaluationType.REAL, cm);

    print(eval); // = 1.0
    setState(() {
      a=eval.toString();
    });
  }
Clear(){
    setState(() {
      a='';
    });
}
backSpace(){
    setState(() {
      List<String> z=a.split("");
      z.removeLast();
      a=z.join();
    });
}

}
//argb(255,54,67,83)=bg
//argb(255,56,67,83)=btn
//argb(255,212,223,233)=txt
//argb(255,98,110,121)=icn