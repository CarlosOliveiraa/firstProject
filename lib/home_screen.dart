import 'package:flutter/material.dart';
import 'package:primeiro_projeto/classes/imc_class.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late TextEditingController _controller;

  @override
  void initState(){
    super.initState();
    _controller = TextEditingController();
  }
 
  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    Imc imc = Imc();

    return Scaffold(
      appBar: AppBar( 
        centerTitle: true,
        title: const Text(
          "Cálculo IMC",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          // ignore: prefer_const_constructors
          Icon(
            Icons.person_outline,
            size: 150,
            color: Colors.blueAccent,
          ),
          const TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: "Peso Kg",
              labelStyle: TextStyle(color: Colors.blueAccent,
              fontSize: 20),
            ),
          ),
          const TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: "Altura",
              labelStyle: TextStyle(color: Colors.blueAccent,
              fontSize: 20),
            ),
          ),
          // ignore: deprecated_member_use
          RaisedButton(
            padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 25),
            color: Colors.blueAccent,
            onPressed: (){
        
            }
            )
        ],
      ),
    );
  }
}