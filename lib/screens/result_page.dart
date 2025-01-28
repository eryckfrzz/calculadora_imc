import 'package:calculadora_imc/features/logic/imc_calc.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({super.key});

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    final argumentos =
        ModalRoute.of(context)!.settings.arguments as Informacoes;

    Informacoes pessoa =
        Informacoes(argumentos.peso, argumentos.altura, argumentos.nome);
    double imc = pessoa.calcularImc();
    String classificacao = pessoa.classificacaoImc(imc);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.green,
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
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios_new_rounded),
            )
          ],
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Card(
                elevation: 5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Olá, ${argumentos.nome} seu peso é ${argumentos.peso} e sua altura é ${argumentos.altura}, \nseu imc está classificado como: ${classificacao}',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize:15), 
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
