import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:tes/model/poli.dart';
import 'package:tes/ui/poli_detail.dart';
import 'package:tes/ui/poli_form.dart';
import 'package:tes/ui/poli_item.dart';

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
        title: const Text("Data Poli"),
        actions: [
          GestureDetector(
            child: Icon(Icons.add),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => PoliForm()));
            },
          )
        ],
      ),
      body: ListView(
        children: [
          PoliItem(poli: Poli(namaPoli: "Poli SI")),
          GestureDetector(
            child: Card(
              child: ListTile(
                title: Text("Poli Anak"),
              ),
            ),
            onTap: () {
              Poli poliAnak = new Poli(namaPoli: "Poli Anak");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PoliDetail(poli: poliAnak)));
            },
          ),
          GestureDetector(
            child: Card(
              child: ListTile(
                title: Text("Poli Kandungan"),
              ),
            ),
            onTap: () {
              Poli poliKandungan = new Poli(namaPoli: "Poli Kandungan");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PoliDetail(poli: poliKandungan)));
            },
          ),
          GestureDetector(
            child: Card(
              child: ListTile(
                title: Text("Poli Gigi"),
              ),
            ),
            onTap: () {
              Poli poliGigi = new Poli(namaPoli: "Poli Gigi");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PoliDetail(poli: poliGigi)));
            },
          ),
          GestureDetector(
            child: Card(
              child: ListTile(
                title: Text("Poli THT"),
              ),
            ),
            onTap: () {
              Poli poliTHT = new Poli(namaPoli: "Poli THT");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PoliDetail(poli: poliTHT)));
            },
          ),
        ],
      ),
    );
  }
}
