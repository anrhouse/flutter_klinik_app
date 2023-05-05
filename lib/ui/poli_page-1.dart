import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:tes/model/poli.dart';
import 'package:tes/ui/poli_detail.dart';

class PoliPage extends StatefulWidget {
  const PoliPage({super.key});

  @override
  State<PoliPage> createState() => _PoliPageState();
}

class _PoliPageState extends State<PoliPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data Poli"),
      ),
      body: ListView(
        children: [
          GestureDetector(
            child: Card(
              child: ListTile(
                title: Text("Poli Anak"),
              ),
            ),
            onTap: () {
              Poli poliAnak = new Poli(namaPoli: 'Poli Anak');
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PoliDetail(poli: poliAnak)));
            },
          ),
          GestureDetector(
            child: Card(
              child: ListTile(
                title: Text('Poli Kandungan'),
              ),
            ),
            onTap: () {
              Poli poliKandungan = new Poli(namaPoli: 'Poli Kandungan');
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PoliDetail(poli: poliKandungan)));
            },
          ),
          GestureDetector(
            child: Card(
              child: ListTile(
                title: Text('Poli Gigi'),
              ),
            ),
            onTap: () {
              Poli poliGigi = new Poli(namaPoli: 'Poli Gigi');
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PoliDetail(poli: poliGigi)));
            },
          ),
          GestureDetector(
            child: Card(
              child: ListTile(
                title: Text('Poli THT'),
              ),
            ),
            onTap: () {
              Poli poliTht = new Poli(namaPoli: 'Poli THT');
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PoliDetail(poli: poliTht)));
            },
          ),
        ],
      ),
    );
  }
}
