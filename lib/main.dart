import 'package:flutter/material.dart';

void main() => runApp(const MiApp());

class MiApp extends StatelessWidget{
  const MiApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      title: 'Mi App',
      home: Calculadora(),
    );
  }
}


class Calculadora extends StatefulWidget{
  const Calculadora({super.key});

  @override
  _CalculadoraState createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora> {
  final num1 = TextEditingController();
  final num2 = TextEditingController();
  dynamic resultado = 'RESULTADO';

  void sumar(){
    setState(() {
      resultado = int.parse(num1.text) + int.parse(num2.text);
    });
  }

  void restar(){
    setState(() {
      resultado = int.parse(num1.text) - int.parse(num2.text);
    });
  }


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi Calculadora'),
      ),
      body: Column(
            children: [


              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                Container(
                  margin: const EdgeInsets.all(20),
                  height: 30,
                  width: 100,
                  child: TextField(
                    controller: num1,
                    decoration: const InputDecoration(hintText: 'Numero 1'),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(20),
                  height: 30,
                  width: 100,
                  child: TextField(
                    controller: num2,
                    decoration: const InputDecoration(hintText: 'Numero 2'),
                  ),
                ), 
              ],
            ), 



            Column(
              children: <Widget>[
                Container(
                  color: Colors.purple[600],
                  margin: const EdgeInsets.all(30),
                  child: MaterialButton(
                    minWidth: 200.0,
                    height: 40.0,
                    onPressed: () {
                      sumar();
                    },
                    child: const Text('Sumar', style: TextStyle(color: Colors.white)), 
                  ),
                ),
                Container(
                  child: MaterialButton(
                    minWidth: 200.0,
                    height: 40.0,
                    onPressed: () {
                      restar();
                    },
                    color: Colors.purple[600],
                    child: const Text('Restar', style: TextStyle(color: Colors.white)),
                  ),
                ),
              ],
            ),



            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 40,
                  width: 200,
                  margin: const EdgeInsets.all(20),  
                  child: Text('$resultado', style: TextStyle(fontSize: 30), textAlign: TextAlign.center,),
                ),
              ]
            ),
      ],
    ), 
           
    );
  }
}