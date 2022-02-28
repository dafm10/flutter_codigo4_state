import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_codigo4_state/cubit/calculator/calculator_bloc.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Example"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "0",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                ),
              ),
              const SizedBox(width: 12.0),
              MaterialButton(
                color: Colors.deepPurpleAccent,
                child: Text(
                  "add number 1",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  BlocProvider.of<CalculatorBloc>(context).add(
                    AddNumber1(
                      number1: 1,
                    ),
                  );
                },
              ),
            ],
          ),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "0",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                ),
              ),
              const SizedBox(width: 12.0),
              MaterialButton(
                color: Colors.deepPurpleAccent,
                child: Text(
                  "add number 2",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () {},
              ),
            ],
          ),
          const Divider(),
          Text(
            "Resultado::: 100",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
            ),
          ),
          MaterialButton(
            color: Colors.deepPurpleAccent,
            child: Text(
              "Calculate",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
