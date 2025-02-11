import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'RincianFakultas.dart';

class Fakultas extends StatelessWidget {
  const Fakultas({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(padding: EdgeInsets.all(20), shrinkWrap: true, children: [
        InkWell(
          child: Container(
            decoration: BoxDecoration(border: Border.all()),
            padding: EdgeInsets.all(14),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 350,
                    child: Column(
                      children: [
                        const Text(
                          "FPMIPA",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          "Fakultas Pendidikan Matematika dan Ilmu Pengetahuan Alam",
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  Image.asset(
                    'images/fakultas/FPMIPA.jpg',
                    height: 80,
                    width: 80,
                  )
                ]),
          ),
          onTap: () {
            //gunakan navigator untuk panggil RincianFakultas
            // bawa parameter
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => RincianFakultas(
                  namaFakultas: "FPMIPA",
                ),
              ),
            );
          },
        ),
        InkWell(
          child: Container(
            decoration: BoxDecoration(border: Border.all()),
            padding: EdgeInsets.all(14),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 350,
                    child: Column(
                      children: [
                        const Text(
                          "FPIPS",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          "Fakultas Pendidikan Ilmu Pengetahuan Sosial",
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  Image.asset(
                    'images/fakultas/FPIPS.jpg',
                    height: 80,
                    width: 80,
                  )
                ]),
          ),
          onTap: () {
            //gunakan navigator untuk panggil RincianFakultas
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => RincianFakultas(
                          namaFakultas: "FPIPS",
                        )));
          },
        ),
      ]),
    );
  }
}
