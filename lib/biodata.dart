import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 134, 169, 209),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(15.0)),
                  child: Image.asset('assets/andika.png')),
              ),
              const SizedBox(
                width: 30.0,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Halo, Saya dika,"),
                  Text("Senang bertemu dengan mu"),
                ],
              )
            ],
          ),
          const Biodata(
            nama: "Andika Noor Ismawan",
            nim: "20210801465",
            note: "Tugas 2 Sudah Selesai",
          ),
        ],
      ),
    );
  }
}

class Biodata extends StatelessWidget {
  const Biodata({
    super.key,
    required this.nama,
    required this.nim,
    required this.note,
  });

  final String nama;
  final String nim;
  final String note;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 82, 116, 155),
      width: 200,
      child: Column(
        children: [
          Text("Nama: $nama "),
          Text("Nim: $nim "),
          const Divider(
            color: Color.fromARGB(255, 255, 255, 255),
            thickness: 0.7,
          ),
          Text("Note: $note",
              style: const TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
