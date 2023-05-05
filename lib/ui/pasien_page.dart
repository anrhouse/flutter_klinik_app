import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:tes/model/pasien.dart';
import 'package:tes/ui/pasien_detail.dart';

class pasienPage extends StatefulWidget {
  const pasienPage({super.key});

  @override
  State<pasienPage> createState() => _pasienPageState();
}

class _pasienPageState extends State<pasienPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Pasien'),
      ),
      body: ListView(
        children: [
          GestureDetector(
            child: Card(
              child: ListTile(
                title: Text("Amin"),
              ),
            ),
            onTap: () {
              Pasien pasien = new Pasien(
                  nomorRm: 'nomorRm',
                  nama: 'nama',
                  tanggalLahir: 'tanggalLahir',
                  nomorTelepon: 'nomorTelepon',
                  alamat: 'alamat');
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => pasienDetail(
                            pasien: pasien,
                          )));
            },
          ),
        ],
      ),
    );
  }
}
