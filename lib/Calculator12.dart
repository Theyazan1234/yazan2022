import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String result= '0';
  String finalResult='0';
  double num1=0.0;
  double num2=0.0;
  String opr='';

  buttonpressed(String btnVal) {
    if (btnVal == 'AC') {
      finalResult = '0';
      num1 = 0.0;
      num2 = 0.0;
      opr = '';
    } else


    if (btnVal == '*' || btnVal == '-' || btnVal == 'X' || btnVal == '/') {
      num1=double.parse(result);
      opr=btnVal;
      finalResult='0';
      result=result+btnVal;


    }else if(btnVal=='.'){
      if(finalResult.contains('.')){

      }else{
        finalResult=finalResult+btnVal;
      }



    }else if(btnVal=='+/-'){
      if(result.toString().contains('-')){
        result.toString().substring(1);
      }else{
        finalResult=result;
        finalResult='-'+result;

      }


    }else if(btnVal=='%'){
      num2=double.parse(result);
      finalResult=(num2/100).toString();



    }else if(btnVal=='='){
      num2=double.parse(result);



      if(opr=='+'){
        finalResult=(num1+num2).toString();

      }
      if(opr=='-'){
        finalResult=(num1-num2).toString();

      }
      if(opr=='X'){
        finalResult=(num1*num2).toString();

      }
      if(opr=='/'){
        finalResult=(num1/num2).toString();

      }

    }else{

      finalResult=finalResult+btnVal;

    }
    setState(() {
      result=double.parse(finalResult).toString();
    });

  }


  Widget buttonFrom(String txtButton,Color txtColor,Color backgroundButton){
    if(txtButton!='0'){
      return Container(
        child: RawMaterialButton(
          onPressed: (){


            buttonpressed(txtButton);

          },
          shape: CircleBorder(),

          fillColor: backgroundButton,
          padding: EdgeInsets.all(10),
          child: Text(txtButton,style: TextStyle(
              fontSize: 35,
              color: txtColor
          ),
          ),
        ),
      );
    }else {
      return Container(
        child: RawMaterialButton(
          onPressed: (){




          },
          shape: StadiumBorder(),

          fillColor: backgroundButton,
          padding: EdgeInsets.fromLTRB(34, 20, 128, 20),
          child: Text(txtButton,style: TextStyle(
              fontSize: 35,
              color: txtColor
          ),
          ),
        ),
      );
    }


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(137, 237, 237, 237),
      appBar: AppBar(
        title: Text('Calculator'),
        backgroundColor: Color.fromARGB(255, 215, 157, 157),
      ),
      body: ListView(
        children:[ Padding(
          padding: EdgeInsets.all(5.8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    '$finalResult',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 100,
                    ),
                  )
                ],
              ),
              SizedBox(height: 20,),

              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:<Widget> [
                  buttonFrom('AC',Colors.white, Color.fromARGB(255, 215, 157, 157)),
                  buttonFrom('+/-',Colors.white, Color.fromARGB(255, 215, 157, 157)),
                  buttonFrom('%',Colors.white, Color.fromARGB(255, 215, 157, 157)),
                  buttonFrom('/', Color.fromARGB(255, 215, 157, 157),Colors.white),
                ],
              ),
              SizedBox(height: 20,),

              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:<Widget> [
                  buttonFrom('7',Colors.white, Color.fromARGB(255, 215, 157, 157)),
                  buttonFrom('8',Colors.white, Color.fromARGB(255, 215, 157, 157)),
                  buttonFrom('9',Colors.white, Color.fromARGB(255, 215, 157, 157)),
                  buttonFrom('X', Color.fromARGB(255, 215, 157, 157),Colors.white),
                ],
              ),
              SizedBox(height: 20,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:<Widget> [
                  buttonFrom('4',Colors.white, Color.fromARGB(255, 215, 157, 157)),
                  buttonFrom('5',Colors.white, Color.fromARGB(255, 215, 157, 157)),
                  buttonFrom('6',Colors.white, Color.fromARGB(255, 215, 157, 157)),
                  buttonFrom('-', Color.fromARGB(255, 215, 157, 157),Colors.white),
                ],
              ),
              SizedBox(height: 20,),

              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:<Widget> [
                  buttonFrom('1',Colors.white, Color.fromARGB(255, 215, 157, 157)),
                  buttonFrom('2',Colors.white, Color.fromARGB(255, 215, 157, 157)),
                  buttonFrom('3',Colors.white, Color.fromARGB(255, 215, 157, 157)),
                  buttonFrom('+', Color.fromARGB(255, 215, 157, 157),Colors.white),
                ],
              ),
              SizedBox(height: 20,),

              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:<Widget> [
                  buttonFrom('0',Colors.white, Color.fromARGB(255, 215, 157, 157)),
                  buttonFrom('.',Colors.white, Color.fromARGB(255, 215, 157, 157)),
                  buttonFrom('=', Color.fromARGB(255, 215, 157, 157),Colors.white),
                ],
              ),
              SizedBox(height: 10,),
            ],
          ),
        ),
        ],
      ),
    );
  }
}
