import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Fasilitas extends StatelessWidget {
  const Fasilitas({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child:
                      Image.network('asset/Auditorium_JICA-2.jpeg', width: 500),
                ),
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text('Fasilitas Ruang Seminar',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
                ),
                const Text(
                    'Untuk seminar atau pertemuan dengan peserta hingga 300 orang, FPMIPA memiliki ruang auditorium yang nyaman untuk digunakan.',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 10)),
                const Text(
                    'Sedangkan untuk rapat kelompok kecil dan seminar (maksimal 50 orang), masing-masing jurusan memiliki ruang rapat dan satu ruang rapat fakultas dengan kapasitas 70 orang.',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 10)),
                const Text(
                    'Departemen/Prodi di FPMIPA biasanya mengadakan pertemuan rutin untuk diskusi dan pertemuan ilmiah lainnya pada hari Jumat yang merupakan hari kuliah umum.',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 10)),
                const Text('Sehingga tidak mengganggu jadwal mengajar dosen.',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 10)),
                const Text(
                    'Pada tahun 2018 ini diresmikan Student Corner di gedung FPMIPA A yang merupakan',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 10)),
                const Text(
                    'ruangan yang sangat nyaman yang didesain untuk kegiatan akademik maupun non akademik bagi mahasiswa.',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10))
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
