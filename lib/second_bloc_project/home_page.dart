import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:bloc_kullanimi/second_bloc_project/home_page_cubit.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var tfSayi1 = TextEditingController();
  var tfSayi2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("How to use Bloc Pattern"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 50, right: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              BlocBuilder<HomePageCubit, int>(
                builder: (context, total) {
                  return Text(
                    total.toString(),
                    style: const TextStyle(fontSize: 30),
                  );
                },
              ),
              TextField(
                controller: tfSayi1,
                decoration: const InputDecoration(hintText: "Number 1"),
              ),
              TextField(
                controller: tfSayi2,
                decoration: const InputDecoration(hintText: "Number 2"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      String alinanSayi1 = tfSayi1.text;
                      String alinanSayi2 = tfSayi2.text;
                      context.read<HomePageCubit>().toplama(
                            alinanSayi1,
                            alinanSayi2,
                          );
                    },
                    child: const Text("Addition"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      String alinanSayi1 = tfSayi1.text;
                      String alinanSayi2 = tfSayi2.text;
                      context.read<HomePageCubit>().carpma(
                            alinanSayi1,
                            alinanSayi2,
                          );
                    },
                    child: const Text("Multiplication"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
