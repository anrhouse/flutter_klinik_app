import 'package:flutter/material.dart';
import 'package:tes/model/poli.dart';
import 'package:tes/ui/poli_detail.dart';

class PoliForm extends StatefulWidget {
  const PoliForm({Key? key}) : super(key: key);

  @override
  _PoliFormState createState() => _PoliFormState();
}

class _PoliFormState extends State<PoliForm> {
  final _formKey = GlobalKey<FormState>();
  final _namaPoliCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tambah Poli'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              _fieldNamaPoli(),
              SizedBox(
                height: 20,
              ),
              _tombolSimpan()
            ],
          ),
        ),
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
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => PoliDetail(poli: poli)));
        },
        child: Text("Simpan"));
  }
}
