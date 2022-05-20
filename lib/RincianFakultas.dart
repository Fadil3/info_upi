import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class RincianFakultas extends StatelessWidget {
  const RincianFakultas({Key? key, required this.namaFakultas})
      : super(key: key);
  final String namaFakultas;

  static const List<Map> infoFakultas = [
    {
      "name": "FPMIPA",
      "url_image": "images/fakultas/FPMIPA.jpg",
      "full_name": "Fakultas Pendidikan Matematika dan Ilmu Pengetahuan Alam",
      "description":
          "The Faculty of Mathematics and Natural Sciences Education (FPMIPA) is an academic implementing element whose job is to coordinate the implementation of academic activities in the field of Mathematics and Natural Sciences and Mathematics and Natural Sciences education. FPMIPA is one of eight faculties at UPI, tasked with preparing Mathematics and Natural Sciences teachers and MIPA scientists who are required to produce graduates who have high competitiveness in the era of globalization. FPMIPA was first established under the name of the Department of Natural Sciences in 1954, the Teaching Faculty of Exact Sciences (FKIE) in 1963, and was changed to FPMIPA in 1983. ",
      "fasilitas": [
        {
          "name": "Laboratorium",
          "url_image": "images/fakultas/lab.jpg",
        },
        {
          "name": "Perpustakaan",
          "url_image": "images/fakultas/perpus.jpg",
        },
        {
          "name": "Ruang Kuliah",
          "url_image": "images/fakultas/ruang_kuliah.jpg",
        },
      ],
    },
    {
      "name": "FPIPS",
      "url_image": "images/fakultas/FPMIPA.jpg",
      "full_name": "Fakultas Pendidikan Matematika dan Ilmu Pengetahuan Alam",
      "description":
          "FPIPS adalah singkatan dari kata Fakultas Pendidikan Ilmu Pengetahuan Sosial. Istilah Fakultas Pendidikan Ilmu Pengetahuan Sosial apabila disingkat yaitu menjadi FPIPS. Akronim FPIPS (Fakultas Pendidikan Ilmu Pengetahuan Sosial) merupakan singkatan/akronim resmi dalam Bahasa Indonesia.",
      "fasilitas": [
        {
          "name": "Laboratorium",
          "url_image": "images/fakultas/FPMIPA.jpg",
        },
        {
          "name": "Perpustakaan",
          "url_image": "images/fakultas/perpus.jpg",
        },
        {
          "name": "Ruang Kuliah",
          "url_image": "images/fakultas/ruang_kuliah.jpg",
        },
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    Map dataFakultas =
        infoFakultas.firstWhere((fakultas) => fakultas['name'] == namaFakultas);
    return Scaffold(
        appBar: AppBar(
          title: Text('Rincian Fakultas $namaFakultas'),
        ),
        body: SingleChildScrollView(
          child: Center(
              child: Column(
            children: [
              Image.asset(
                dataFakultas['url_image'],
                height: 200,
                width: 200,
              ),
              Text(
                "$namaFakultas",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Padding(padding: EdgeInsets.all(10)),
              Text(
                dataFakultas['full_name'],
                style: TextStyle(fontSize: 16),
              ),
              //padding
              Padding(padding: EdgeInsets.all(10)),
              SizedBox(
                width: 500,
                child: Text(
                  dataFakultas['description'],
                  style: TextStyle(fontSize: 16),
                ),
              ),
              // description

              Padding(padding: EdgeInsets.all(10)),
              Text(
                "Fasilitas",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 500,
                child: Wrap(spacing: 20.0, runSpacing: 20.0, children: [
                  ...dataFakultas["fasilitas"].map(
                    (e) => Column(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              //image asset
                              image: AssetImage(e['url_image']),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const Padding(padding: EdgeInsets.all(5)),
                        Text(e["name"]),
                      ],
                    ),
                  ),
                ]),
              )
            ],
          )),
        ));
  }
}
