import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class RincianFakultas extends StatelessWidget {
  const RincianFakultas({Key? key, required this.namaFakultas})
      : super(key: key);
  final String namaFakultas;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rincian Fakultas'),
      ),
      body: Center(
        child: Text(
          'Rincian Fakultas $namaFakultas',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
