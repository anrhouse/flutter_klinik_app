import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:tes/model/pegawai.dart';
import 'package:tes/ui/pegawai_detail.dart';

class pegawaiPage extends StatefulWidget {
  const pegawaiPage({super.key});

  @override
  State<pegawaiPage> createState() => _pegawaiPageState();
}

class _pegawaiPageState extends State<pegawaiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Pegawai'),
      ),
      body: ListView(
        children: [
          GestureDetector(
            child: Card(
              child: ListTile(
                title: Text("Amin Nur Rais"),
              ),
            ),
            onTap: () {
              Pegawai pegawai = new Pegawai(
                  nip: '1',
                  nama: 'nama',
                  tanggalLahir: 'tanggalLahir',
                  nomorTelepon: 'nomorTelepon',
                  email: 'email',
                  password: 'password');
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => pegawaiDetail(pegawai: pegawai)));
            },
          ),
        ],
      ),
    );
  }
}
