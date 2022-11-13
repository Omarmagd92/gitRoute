import 'package:calculator/customButton.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static String RouteName = "HomePage";

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
          title: Text("calculator", style: TextStyle(fontSize: 22),)),
      body: Column(children: [
        Expanded(
          child: Row(
              children: [
                Expanded(child: Text(resText, style: TextStyle(fontSize: 24),))
              ]),
        ),
        Expanded(
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                    child: CustomButton("7", buttonClickedText

                    )),
                Expanded(
                    child: CustomButton("8", buttonClickedText
                    )),
                Expanded(
                    child: CustomButton("9", buttonClickedText)),
                Expanded(
                    child: CustomButton("/", operatorClicked)),
              ]),
        ),
        Expanded(
          child: Row(crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                    child: CustomButton("4", buttonClickedText)),
                Expanded(
                    child: CustomButton("5", buttonClickedText)),
                Expanded(
                    child: CustomButton("6", buttonClickedText)),
                Expanded(
                    child: CustomButton("*", operatorClicked)),
              ]),
        ),
        Expanded(
          child: Row(crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                    child: CustomButton("1", buttonClickedText)),
                Expanded(
                    child: CustomButton("2", buttonClickedText)),
                Expanded(
                    child: CustomButton("3", buttonClickedText)),
                Expanded(
                    child: CustomButton("+", operatorClicked)),
              ]),
        ),
        Expanded(
            child: Row(crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                      child: CustomButton(".", buttonClickedText)),
                  Expanded(
                      child: CustomButton("0", buttonClickedText)),
                  Expanded(
                      child: CustomButton("=", equlaClicked)),
                  Expanded(
                      child: CustomButton("-", operatorClicked)),
                ])),


      ]),
    );
  }

  String savedOperator = "";
  String savedResult = "";
  String resText = "";

  void buttonClickedText(String text) {
    if(savedOperator=="="){
      resText="";
      resText=text;
    }
    resText += text;
    setState(() {

    });
  }

  String calculte(String rhs, String operator, String lhs) {
    double n1=double.parse(rhs);
    double n2=double.parse(lhs);
    double res=0;

    if (operator == "+") {
      res = n1 + n2;
    }
    else if (operator == "-") {
      res = n1 - n2;
    }
    else if (operator == "*") {
      res = n1 * n2;
    }
    else if (operator == "/") {
      res = n1 / n2;
    }
    resText=res.toString();
    return resText;
  }
  operatorClicked(op){
    if(savedOperator.isEmpty){
      savedResult=resText;
      savedOperator=op;
      resText="";
    }
    else{
      String lhs=resText;
      savedResult=calculte(savedResult, savedOperator, lhs);
      savedOperator=op;
        resText="";
    }

  }
  void equlaClicked(value){

    String lhs=resText;
    savedResult=calculte(savedResult, savedOperator, lhs);
    savedOperator=value;
    resText=savedResult;
    setState(() {

    });
  }

}
