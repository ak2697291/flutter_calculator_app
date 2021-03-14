import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
void main() {
  runApp(MaterialApp(

    home: Calculator(),
    debugShowCheckedModeBanner: false,

  ));
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {

 dynamic equation = '';
 int sum =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Text('CALCULATOR',
        style: TextStyle(
          fontSize: 28.0,
          color: Colors.white,
          fontFamily: 'arial',
        ),
        ),
        centerTitle: true,

      ),
      body: Column(
        children: [

              Row(
                children: [
                  Expanded(
                    flex: 1,

                    child: Container(
                      height: 200,

                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                      color: Colors.grey[400],
                      child: Text('$equation',
                      style: TextStyle(

                        fontSize: 36.0,
                        color: Colors.white,
                      ),

                      ),

                    ),
                  ),
                ],
              ),
          SizedBox(height: 10,),

          Row(
            children: [
              Expanded(
                flex: 1,

                child: FlatButton(
                  onPressed: (){
                    setState(() {
                      equation = '';
                    });
                  },
                  color: Colors.grey[300],
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),

                  child: Text('C',

                  style: TextStyle(
                    fontSize: 36,
                  ),
                  ),

                ),
              ),
              SizedBox(width: 5,),
              Expanded(
                flex: 1,
                child: FlatButton(
                  onPressed: (){
                    setState(() {
                      equation = equation.substring(0,equation.length -1);
                    });
                  },
                  color: Colors.grey[300],
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Icon(
                    Icons.backspace_sharp,
                    size: 40,
                  ),
                ),
              ),
              SizedBox(width: 5,),
              Expanded(
                flex: 1,
                child: FlatButton(
                  onPressed: (){
                    setState(() {
                      equation = equation + '.';
                    });
                  },
                  color: Colors.grey[300],
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 20),
                  child: Text('.',
                  style: TextStyle(
                    fontSize: 36,
                  ),
                  ),

                ),
              ),
              SizedBox(width: 5,),
              Expanded(
                flex: 1,
                child: FlatButton(
                  onPressed: (){
                    setState(() {
                      Parser p =Parser();
                      Expression exp = p.parse(equation);
                      ContextModel cm = ContextModel();
                      equation =String.parse(exp.evaluate(EvaluationType.REAL, cm));
                    });
                  },
                  color: Colors.grey[300],
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Text('=',
                  style: TextStyle(
                    fontSize: 36
                  ),
                  ),
                ),
              ),
            ],
          ),
         SizedBox(height: 10,),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: FlatButton(onPressed: (){
                    setState(() {
                      equation = equation + '7';
                    });
                  },
                    height: 65,
                    color: Colors.grey[300],
                    child: Center(
                      child: Text('7',
                      style: TextStyle(
                        fontSize: 36,
                      ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 5,),
                Expanded(
                  flex: 1,
                  child: FlatButton(onPressed: (){
                    setState(() {
                      equation = equation +'8';
                    });
                  },
                    height: 65,
                    color: Colors.grey[300],
                    child: Center(
                      child: Text('8',
                        style: TextStyle(
                          fontSize: 36,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 5,),
                Expanded(
                  flex: 1,
                  child: FlatButton(onPressed: (){
                    setState(() {
                      equation = equation+'9';
                    });
                  },
                    height: 65,
                    color: Colors.grey[300],
                    child: Center(
                      child: Text('9',
                        style: TextStyle(
                          fontSize: 36,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 5,),
                Expanded(
                  flex: 1,
                  child: FlatButton(onPressed: (){


                    setState(() {
                      equation = equation+'/';
                    });
                  },
                    height: 65,
                    color: Colors.grey[300],
                    child: Center(
                      child: Text('/',
                        style: TextStyle(
                          fontSize: 36,
                        ),
                      ),
                    ),
                  ),
                ),




              ],
            ),
          ),

          SizedBox(height: 10,),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: FlatButton(onPressed: (){
                    setState(() {
                      equation = equation + '4';
                    });
                  },
                    height: 65,
                    color: Colors.grey[300],
                    child: Center(
                      child: Text('4',
                        style: TextStyle(
                          fontSize: 36,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 5,),
                Expanded(
                  flex: 1,
                  child: FlatButton(onPressed: (){
                    setState(() {
                      equation = equation +'5';
                    });
                  },
                    height: 65,
                    color: Colors.grey[300],
                    child: Center(
                      child: Text('5',
                        style: TextStyle(
                          fontSize: 36,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 5,),
                Expanded(
                  flex: 1,
                  child: FlatButton(onPressed: (){
                    setState(() {
                      equation = equation+'6';
                    });
                  },
                    height: 65,
                    color: Colors.grey[300],
                    child: Center(
                      child: Text('6',
                        style: TextStyle(
                          fontSize: 36,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 5,),
                Expanded(
                  flex: 1,
                  child: FlatButton(onPressed: (){


                    setState(() {
                      equation = equation+'-';
                    });
                  },
                    height: 65,
                    color: Colors.grey[300],
                    child: Center(
                      child: Text('-',
                        style: TextStyle(
                          fontSize: 36,
                        ),
                      ),
                    ),
                  ),
                ),




              ],
            ),
          ),

          SizedBox(height: 10,),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: FlatButton(onPressed: (){
                    setState(() {
                      equation = equation + '1';
                    });
                  },
                    height: 65,
                    color: Colors.grey[300],
                    child: Center(
                      child: Text('1',
                        style: TextStyle(
                          fontSize: 36,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 5,),
                Expanded(
                  flex: 1,
                  child: FlatButton(onPressed: (){
                    setState(() {
                      equation = equation +'2';
                    });
                  },
                    height: 65,
                    color: Colors.grey[300],
                    child: Center(
                      child: Text('2',
                        style: TextStyle(
                          fontSize: 36,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 5,),
                Expanded(
                  flex: 1,
                  child: FlatButton(onPressed: (){
                    setState(() {
                      equation = equation+'3';
                    });
                  },
                    height: 65,
                    color: Colors.grey[300],
                    child: Center(
                      child: Text('3',
                        style: TextStyle(
                          fontSize: 36,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 5,),
                Expanded(
                  flex: 1,
                  child: FlatButton(onPressed: (){


                    setState(() {
                      equation = equation+'+';
                    });
                  },
                    height: 65,
                    color: Colors.grey[300],
                    child: Center(
                      child: Text('+',
                        style: TextStyle(
                          fontSize: 36,
                        ),
                      ),
                    ),
                  ),
                ),




              ],
            ),
          ),

          SizedBox(height: 10,),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: FlatButton(onPressed: (){
                    setState(() {
                      equation = equation + '0';
                    });
                  },
                    height: 65,
                    color: Colors.grey[300],
                    child: Center(
                      child: Text('0',
                        style: TextStyle(
                          fontSize: 36,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 5,),
                Expanded(
                  flex: 1,
                  child: FlatButton(onPressed: (){
                    setState(() {
                      equation = equation +'*';
                    });
                  },
                    height: 65,
                    color: Colors.grey[300],
                    child: Center(
                      child: Text('*',
                        style: TextStyle(
                          fontSize: 36,
                        ),
                      ),
                    ),
                  ),
                ),



              ],
            ),
          ),

        ],
      ),
    );
  }
}

