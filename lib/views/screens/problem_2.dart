import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class ComputationScreen extends StatelessWidget {
  const ComputationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Heavy Computation')),
      body: FutureBuilder<BigInt>(
        future: compute(calculateSum, BigInt.from(10000000000)),
        builder: (context, snapshot) {
          return Center(
            child: Text(
              'Result: ${snapshot.data}',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          );
        },
      ),
    );
  }

  static BigInt calculateSum(BigInt n) {
    return n ~/ BigInt.two * (n + BigInt.one);
  }
}
