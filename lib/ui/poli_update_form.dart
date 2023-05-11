import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:tes/model/poli.dart';
import 'package:tes/ui/poli_detail.dart';

class PoliUpdateForm extends StatefulWidget {
  final Poli poli;

  const PoliUpdateForm({Key? key, required this.poli}) : super(key: key);

  @override
  State<PoliUpdateForm> createState() => _PoliUpdateFormState();
}

class _PoliUpdateFormState extends State<PoliUpdateForm> {
  final _formKey = GlobalKey<FormState>();
  final _namaPoliCtrl = TextEditingController();

  @override
  void initState() {
    super.initState();
    setState(() {
      _namaPoliCtrl.text = widget.poli.namaPoli;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ubah Poli")),
      body: SingleChildScrollView(
        child: Form(
            key: _formKey,
            child: Column(
              children: [
                _fieldNamaPoli(),
                SizedBox(height: 20),
                _tombolSimpan()
              ],
            )),
      ),
    );
  }

  _fieldNamaPoli() {
    return TextField(
      decoration: InputDecoration(labelText: "Nama Poli"),
      controller: _namaPoliCtrl,
    );
  }

  _tombolSimpan() {
    return ElevatedButton(
        onPressed: () {
          Poli poli = new Poli(namaPoli: _namaPoliCtrl.text);
          Navigator.pop(context);
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => PoliDetail(poli: poli)));
        },
        child: Text("Simpan Perubahan"));
  }
}
