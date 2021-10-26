import 'package:flutter/material.dart';

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
      body: Center(
        child: Align(
          alignment: Alignment.center,
          child: Column(
        children: [
          const TextField(
            decoration: InputDecoration(
              labelText: "Insira o seu peso",
              border: OutlineInputBorder()
            ),
          ),
          const TextField(
            decoration: InputDecoration(
              labelText: "Insira o sua altura",
              border: OutlineInputBorder()
            ),
          ),
          // ignore: deprecated_member_use
          RaisedButton(
            padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
            color: Colors.blueAccent,
            child: const Text(
              "Calcular",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white
              ),
            ),
            onPressed: (){},
          )
        ],
        ),
        )
      ),
    );
  }
}