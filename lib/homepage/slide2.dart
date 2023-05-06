import 'package:flutter/material.dart';
import 'package:test_projectalya/homepage/slide3.dart';
import 'package:test_projectalya/model/siswa.dart';
import 'package:test_projectalya/service/siswaService.dart';

class DataSiswa extends StatefulWidget {
  @override
  State<DataSiswa> createState() => _DataSiswaState();
}

class _DataSiswaState extends State<DataSiswa> {
  late Future data;
  List<Datum> data2 = [];

  @override
  void initState() {
    data = siswaService().getSiswa();
    data.then((value) {
      setState(() {
        data2 = value;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Siswa'),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 25),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 88, 86, 86),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: ListView.builder(
          itemCount: data2.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Container(
                height: 200,
                width: 200,
                color: Color.fromRGBO(194, 167, 167, 0.38),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(data2[index].name.toString()),
                          IconButton(
                            icon: Icon(Icons.more_vert),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => informasi()));
                            },
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            data2[index].photo.toString(),
                            height: 100,
                            width: 100,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text('Jenis Kelamin :'),
                                  Text(data2[index].gender.toString()),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('Tanggal Lahir :'),
                                  Text(data2[index].birthDate.toString()),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('Provinsi : '),
                                  Text(data2[index].province.toString()),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('Kota/kabupaten'),
                                  Text(data2[index].city.toString()),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
