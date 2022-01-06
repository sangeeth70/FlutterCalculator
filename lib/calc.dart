
import 'package:f_calculator/calc_btn.dart';
import 'package:f_calculator/del_btn.dart';
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
          ),maxLines: 16,
          ),
          Container(width: 310,
            child: Del(PressedValue: () {
              backSpace();
            },num: 'Del',),
          ),

          Container(
            child: Container(margin: EdgeInsets.only(left:  10,top: 10,right: 10),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  CBtn(PressedValue: (){

                    EnterNumber("1");

                  },num: '1',textStyle: TextStyle(fontSize: 20),),

                  CBtn(PressedValue: (){

                    EnterNumber("2");

                  },num: '2',textStyle: TextStyle(fontSize: 20),),
                  CBtn(PressedValue: (){

                    EnterNumber("3");

                  },num: '3',textStyle: TextStyle(fontSize: 20),),
                  CBtn(PressedValue: (){

                    EnterNumber("+");

                  },num: '+',textStyle: TextStyle(fontSize: 20),),
                ],
              ),
            ),
          ),
          Container(margin: EdgeInsets.only(left:  10,top: 10,right: 10),child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CBtn(PressedValue: (){

                EnterNumber("4");

              },num: '4',textStyle: TextStyle(fontSize: 20),),

              CBtn(PressedValue: (){

                EnterNumber("5");

              },num: '5',textStyle: TextStyle(fontSize: 20),),
              CBtn(PressedValue: (){

                EnterNumber("6");

              },num: '6',textStyle: TextStyle(fontSize: 20),),
              CBtn(PressedValue: (){

                EnterNumber("-");

              },num: '-'),
            ],
          ),
          ),
          Container(margin: EdgeInsets.only(left:  10,top: 10,right: 10),child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CBtn(PressedValue: (){

                EnterNumber("7");

              },num: '7',textStyle: TextStyle(fontSize: 20),),

              CBtn(PressedValue: (){

                EnterNumber("8");

              },num: '8',textStyle: TextStyle(fontSize: 20),),
              CBtn(PressedValue: (){

                EnterNumber("9");

              },num: '9',textStyle: TextStyle(fontSize: 20),),
              CBtn(PressedValue: (){

                EnterNumber("/");

              },num: '/',textStyle: TextStyle(fontSize: 20),),
            ],
          ),
          ),
          Container(margin: EdgeInsets.only(left:  10,top: 10,right: 10,bottom: 20),child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CBtn(PressedValue: (){

               Clear();

              },num: 'C',textStyle: TextStyle(fontSize: 20),),
              CBtn(PressedValue: (){

                EnterNumber("0");

              },num: '0',textStyle: TextStyle(fontSize: 20),),
              CBtn(PressedValue: (){

                equalTo();

              },num: '=',textStyle: TextStyle(fontSize: 20),),
              CBtn(PressedValue: (){

                EnterNumber("x");

              },num: 'x',textStyle: TextStyle(fontSize: 20),),
            ],
          )
          ,),


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
    List<String> z=a.split("");
    z.removeLast();
    a=z.join();
    setState(() {

    });
  }

}

//argb(255,54,67,83)=bg
//argb(255,56,67,83)=btn
//argb(255,212,223,233)=txt
//argb(255,98,110,121)=icn