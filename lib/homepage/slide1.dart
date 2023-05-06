import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:test_projectalya/homepage/slide2.dart';

class TambahData extends StatefulWidget {
  @override
  State<TambahData> createState() => _TambahDataState();
}

class _TambahDataState extends State<TambahData> {
  TextEditingController _date = TextEditingController();
  String? valueChoose;
  String? value;
  List Province = ['Jakarta', 'Jawa Barat'];
  List Kota = ['Bekasi', 'Tanggerang'];

  int selected = 0;
  Widget CustomButton(String text, int index) {
    //   return ElevatedButton(
    //     onPressed: () {
    //       setState(() {
    //         selected = index;
    //       });
    //     },
    //     child: Text(
    //       text,
    //       style: TextStyle(color: (selected == index) ? Colors.white : Colors.black),
    //     ),

    //     style: ElevatedButton.styleFrom(),
    //   );
    // }
    return OutlineButton(
      onPressed: () {
        setState(() {
          selected = index;
        });
      },
      child: Text(
        text,
        style: TextStyle(
            color: (selected == index)
                ? Color.fromARGB(255, 126, 117, 117)
                : Colors.black),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      borderSide:
          BorderSide(color: (selected == index) ? Colors.grey : Colors.black),
      color:
          (selected == index) ? Color.fromARGB(255, 66, 63, 63) : Colors.black,
    );
  }
  // File? image;

  // Future getImage() async {
  //   final ImagePicker _picker = ImagePicker();
  //   final XFile? imagepicked =
  //       await _picker.pickImage(source: ImageSource.gallery);

  //   image = File(imagepicked!.path);
  //   setState(() {});
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tambah Data'),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 25),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 88, 86, 86),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 12,
                ),
                Text(
                  'Informasi Dasar',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 23),
                  child: Text(
                    'Nama Lengkap',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Nama',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 23),
                  child: Text(
                    'Jenis Kelamin',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomButton('Pria', 1),
                    CustomButton('Wanita', 2)
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 23),
                  child: Text(
                    'Tanggal Lahir',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: TextField(
                    controller: _date,
                    decoration: InputDecoration(
                      icon: Icon(Icons.calendar_today_rounded),
                      label: Text('Pilih'),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onTap: () async {
                      DateTime? pickedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1950),
                          lastDate: DateTime(2100));

                      if (pickedDate != null) {
                        setState(() {
                          _date.text =
                              DateFormat('dd-MM-yyyy').format(pickedDate);
                        });
                      }
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 23),
                  child: Text(
                    'Provinsi',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                DropdownButton(
                  hint: Text('Pilih Provinsi'),
                  items: Province.map((valueItem) {
                    return DropdownMenuItem(
                        value: valueItem, child: Text(valueItem));
                  }).toList(),
                  onChanged: (newValue) {
                    setState(() {
                      valueChoose = newValue.toString();
                    });
                  },
                  value: valueChoose,
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 23),
                  child: Text(
                    'Kota/Kabupaten',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 10),
                DropdownButton(
                  hint: Text('Pilih Kota'),
                  items: Kota.map((valueItem) {
                    return DropdownMenuItem(
                        value: valueItem, child: Text(valueItem));
                  }).toList(),
                  onChanged: (newValue) {
                    setState(() {
                      value = newValue.toString();
                    });
                  },
                  value: value,
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 23),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Foto Siswa',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        child: Column(
                          children: [
                            TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.white,
                              ),
                              child: Text('Masukkan Foto'),
                              onPressed: () {},
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DataSiswa()));
                  },
                  child: Text(
                    'Simpan',
                    style: TextStyle(fontSize: 20),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green[300],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(onPressed: () {}, child: Text('Cancle')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
