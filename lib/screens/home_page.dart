import 'package:calculadora_imc/features/generos.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double peso = 0.0;
  double altura = 0.0;
  Generos genero = Generos.Feminino;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Calculadora IMC',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          backgroundColor: Colors.green,
        ),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Card(
            elevation: 5,
            margin: const EdgeInsets.all(20),
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextField(
                    decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green),
                      ),
                      label: Text(
                        'Digite seu peso:',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    onChanged: (text) {
                      peso = text as double;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextField(
                    decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green),
                      ),
                      label: Text(
                        'Digite sua altura:',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                    onChanged: (text) {
                      altura = text as double;
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Masculino',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Radio(
                      value: Generos.Masculino,
                      groupValue: genero,
                      onChanged: (generoSelecionado) {
                        setState(
                          () {
                            genero = generoSelecionado!;
                          },
                        );
                      },
                      activeColor: Colors.green,
                    ),
                    const Text('Feminino', style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),),
                    Radio(
                      value: Generos.Feminino,
                      groupValue: genero,
                      onChanged: (generoSelecionado) {
                        setState(
                          () {
                            genero = generoSelecionado!;
                          },
                        );
                      },
                      activeColor: Colors.green,
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                  ),
                  child: Text(
                    'Calcular',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        backgroundColor: Colors.green,
      ),
    );
  }
}
