import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import 'custom_text_field.dart';

/**
 * Created by Imdvlpr_
 */

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _nameController = TextEditingController();
  final _nimController = TextEditingController();
  final _absentController = TextEditingController();
  final _taskController = TextEditingController();
  final _midtermController = TextEditingController();
  final _finalExamsController = TextEditingController();
  int selectedValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'UTS Mobile',
          style: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.white
          ),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: SizedBox(
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                child: ListView(
                  children: <Widget> [
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: CustomTextField(
                        controller: _nameController,
                        labelText: 'Nama',
                        hintText: 'Input Nama Mahasiswa',
                        keyboardType: TextInputType.text,
                        prefixIcon:
                        const Icon(Iconsax.user),
                        maxLines: 1,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: CustomTextField(
                        controller: _nimController,
                        labelText: 'NIM',
                        hintText: 'Input NIM Mahasiswa',
                        keyboardType: TextInputType.number,
                        prefixIcon:
                        const Icon(Iconsax.user),
                        maxLines: 1,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            'Prodi',
                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                          ),
                        ),
                        Row(
                          children: [
                            Radio(
                              value: 1,
                              groupValue: selectedValue,
                              onChanged: (int? value) {
                                setState(() {
                                  selectedValue = value!;
                                });
                              },
                            ),
                            const Text('Sistem Informasi'),
                          ],
                        ),
                        const SizedBox(width: 20),
                        Row(
                          children: [
                            Radio(
                              value: 2,
                              groupValue: selectedValue,
                              onChanged: (int? value) {
                                setState(() {
                                  selectedValue = value!;
                                });
                              },
                            ),
                            const Text('Informatika'),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: CustomTextField(
                        controller: _absentController,
                        labelText: 'Nilai Absen',
                        hintText: 'Input Nilai Absen',
                        keyboardType: TextInputType.number,
                        prefixIcon:
                        const Icon(Iconsax.task_square),
                        maxLines: 1,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: CustomTextField(
                        controller: _taskController,
                        labelText: 'Nilai Tugas/Praktikum',
                        hintText: 'Input Nilai Tugas/Praktikum',
                        keyboardType: TextInputType.number,
                        prefixIcon:
                        const Icon(Iconsax.task_square),
                        maxLines: 1,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: CustomTextField(
                        controller: _midtermController,
                        labelText: 'Nilai UTS',
                        hintText: 'Input Nilai UTS',
                        keyboardType: TextInputType.number,
                        prefixIcon:
                        const Icon(Iconsax.task_square),
                        maxLines: 1,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: CustomTextField(
                        controller: _finalExamsController,
                        labelText: 'Nilai UAS',
                        hintText: 'Input Nilai UAS',
                        keyboardType: TextInputType.number,
                        prefixIcon:
                        const Icon(Iconsax.task_square),
                        maxLines: 1,
                      ),
                    ),
                  ]
                )
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 10, bottom: 20),
                    child: SizedBox(
                      height: 50,
                      child: FilledButton(
                        onPressed: () {
                          showToast();
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          textStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        child: const Text('Hitung'),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 20, bottom: 20),
                    child: SizedBox(
                      height: 50,
                      child: FilledButton(
                        onPressed: () {
                          clearForm();
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          textStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        child: const Text('Bersihkan'),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  void clearForm() {
    _nameController.text = '';
    _nimController.text = '';
    _absentController.text = '';
    _taskController.text = '';
    _midtermController.text = '';
    _finalExamsController.text = '';

    Fluttertoast.showToast(
      msg: "Form telah dibersihkan",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.blue,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }

  void showToast() {
    Fluttertoast.showToast(
      msg: "Hitung ditekan",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.blue,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }

}