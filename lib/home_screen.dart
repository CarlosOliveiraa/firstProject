import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  TextEditingController wheigtController = TextEditingController();
  TextEditingController heigthController = TextEditingController();

  // ignore: prefer_final_fields, unused_field
  String _infoText = "Informe seus dados";

  void _resetFields(){
   wheigtController.text = "";
   heigthController.text = "";
   setState(() {
     _infoText = "Informe seus dados";
   });


  }

  void _calculate(){
    setState(() {
      double wheigt = double.parse(wheigtController.text);
      double heigth = double.parse(heigthController.text) / 100;
      double imc = wheigt / (heigth * heigth);
   
    if(imc < 18.5){
      // ignore: unnecessary_brace_in_string_interps
      _infoText = "Abaixo do peso (${imc.toStringAsPrecision(4)})";
    } else if (imc > 18.5 && imc < 24.9){
      // ignore: unnecessary_brace_in_string_interps
      _infoText = "Peso normal (${imc.toStringAsPrecision(4)})";

    } else if (imc > 25 && imc < 29.9){
      // ignore: unnecessary_brace_in_string_interps
      _infoText = "Sobrepeso (${imc.toStringAsPrecision(4)})";
      
    } else if (imc > 30 && imc < 34.9){
      // ignore: unnecessary_brace_in_string_interps
      _infoText = "Obesidade Grau I (${imc.toStringAsPrecision(4)})";
      
    } else if (imc > 35 && imc < 39.9){
      // ignore: unnecessary_brace_in_string_interps
      _infoText = "Obesidade Grau II (${imc.toStringAsPrecision(4)})";
      
    } else if (imc > 40){
      // ignore: unnecessary_brace_in_string_interps
      _infoText = "Obesidade Grau III (${imc.toStringAsPrecision(4)})";
      
      }
    });
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        centerTitle: true,
        title: const Text(
          "Calculadora de IMC",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
        ),
        actions: [
          IconButton(
            onPressed: _resetFields, icon: const Icon(Icons.refresh)
            )
        ],
      ),
      body: SingleChildScrollView(
        padding: const  EdgeInsets.fromLTRB(10, 0, 10, 0) ,
        child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          // ignore: prefer_const_constructors
          Icon(
            Icons.person_outline,
            size: 120,
            color: Colors.blueAccent,
          ),
           TextField(
            controller: wheigtController,
            keyboardType: TextInputType.number,
            // ignore: prefer_const_constructors
            decoration: InputDecoration(
              labelText: "Peso Kg",
              labelStyle: const TextStyle(color: Colors.blueAccent,
              fontSize: 20),
            ),
            textAlign: TextAlign.center,
          ),
             TextField(
            controller: heigthController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              labelText: "Altura",
              labelStyle: TextStyle(color: Colors.blueAccent,
              fontSize: 20),
            ),
            textAlign: TextAlign.center,
          ),
          // ignore: avoid_unnecessary_containers
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            // ignore: sized_box_for_whitespace
            child: Container(
            height: 50,
            width: 400,
            child: 
          // ignore: deprecated_member_use
          RaisedButton(
            child: const Text(
              "Calcular",
              style: TextStyle(
                fontSize: 25,
                color: Colors.white
               ),
              ),
            color: Colors.blueAccent,
            onPressed: _calculate
            ),
          ),
            
            ),
          // ignore: avoid_unnecessary_containers
          Container(
            child:  Text(
              _infoText,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.blueAccent
              ),
            ),
          )
        ],
      ),
      )
    );
  }
}