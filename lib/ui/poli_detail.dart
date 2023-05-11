import 'package:flutter/material.dart';
import 'package:tes/model/poli.dart';
import 'package:tes/ui/poli_update_form.dart';

class PoliDetail extends StatefulWidget {
  final Poli poli;

  const PoliDetail({super.key, required this.poli});

  @override
  State<PoliDetail> createState() => _PoliDetailState();
}

class _PoliDetailState extends State<PoliDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Poli'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            "Nama Poli : ${widget.poli.namaPoli}",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [_tombolUbah(), _tombolHapus()],
          )
        ],
      ),
    );
  }

  _tombolUbah() {
    return ElevatedButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => PoliUpdateForm(poli: widget.poli)));
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 59, 194, 64)),
        child: Text('Ubah'));
  }

  _tombolHapus() {
    return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 228, 45, 32)),
        child: Text('Hapus'));
  }
}
