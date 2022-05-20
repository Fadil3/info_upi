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
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              decoration: BoxDecoration(border: Border.all()),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 300,
                    child: Column(children: const [
                      Text(
                        "FPMIPA",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                      Text(
                          "Fakultas Pendidikan Matematika dan Ilmu Pengetahuan Alam")
                    ]),
                  ),
                  Column(children: [
                    Center(
                        child: Container(
                            padding: const EdgeInsets.all(10),
                            child: Image.network(
                              'asset/download.jpg',
                              width: 120,
                            )))
                  ]),
                ],
              ),
            ),
          ),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return RincianFakultas();
            }));
          },
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            decoration: BoxDecoration(border: Border.all()),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 300,
                  child: Column(children: const [
                    Text(
                      "FPIPS",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    Text("Fakultas Pendidikan Ilmu Pengetahuan Sosial")
                  ]),
                ),
                Column(children: [
                  Center(
                      child: Container(
                          padding: const EdgeInsets.all(10),
                          child: Image.network(
                            'asset/download (1).jpg',
                            width: 120,
                          )))
                ]),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
