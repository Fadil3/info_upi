import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Fasilitas extends StatelessWidget {
  const Fasilitas({Key? key}) : super(key: key);
  static const List<Map> fasilitasUmum = [
    {
      "name": "Gymnasium",
      "url_image": "images/fakultas/gym.jpg",
    },
    {
      "name": "kolam renang",
      "url_image": "images/fakultas/FPMIPA.jpg",
    },
    {
      "name": "stadion",
      "url_image": "images/fakultas/FPMIPA.jpg",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Center(
          child: Column(
        children: [
          Image.asset(
            "images/fakultas/logo-upi.png",
            height: 200,
            width: 200,
          ),
          Text(
            "Universitas Pendidikan Indonesia",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Padding(padding: EdgeInsets.all(10)),
          Padding(padding: EdgeInsets.all(10)),
          SizedBox(
            width: 500,
            child: Text(
              "Indonesia University of Education was established in 1954 as Teachers Education College. It is in Bandung, Indonesia. Indonesia University of Education is a multi-campus university, with one main campus and several others",
              style: TextStyle(fontSize: 16),
            ),
          ),
          //padding
          Padding(padding: EdgeInsets.all(10)),
          Text(
            "Fasilitas Umum",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 500,
            child: Wrap(spacing: 20.0, runSpacing: 20.0, children: [
              ...fasilitasUmum.map(
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
