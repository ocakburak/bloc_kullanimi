import 'package:bloc_kullanimi/first_bloc_project/SayacCubit.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            BlocBuilder<SayacCubit, int>(
              builder: (context, sayacDegeri) {
                return Text(
                  '$sayacDegeri',
                  style: const TextStyle(
                    fontSize: 36,
                  ),
                );
              },
            ),
            ElevatedButton(
              onPressed: () {
                context.read<SayacCubit>().sayaciArttir();
              },
              child: const Text('Sayaç ARTTIR'),
            ),
            ElevatedButton(
              onPressed: () {
                context.read<SayacCubit>().sayaciAzalt(2);
              },
              child: const Text('Sayaç AZALT'),
            ),
          ],
        ),
      ),
    );
  }
}
