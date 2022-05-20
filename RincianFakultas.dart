import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class RincianFakultas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rincian Fakultas'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Column(children: [
                Image.network('asset/download.jpg'),
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                      'Fakultas Pendidikan Matematika dan Ilmu Pengetahuan Alam',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
                ),
                Text(
                    'Fakultas Pendidikan Matematika dan Ilmu Pengetahuan Alam (FPMIPA) merupakan unsur pelaksana akademik',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
                Text(
                    'yang bertugas mengkoordinir pelaksanaan kegiatan akademik di bidang pendidikan MIPA dan MIPA.',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12))
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
