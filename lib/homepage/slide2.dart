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
  List<Datum> datum = [];

  @override
  void initState() {
    data = siswaService().getSiswa();
    data.then((value) {
      setState(() {
        print(value);
        datum = value;
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
          // child: datum.length == 0
          //     ? Center(
          //         child: CircularProgressIndicator(
          //           color: Colors.black,
          //         ),
          //       )
          //     :
          child: ListView(
            children: [
              Container(
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
                          Text('Ari Laso'),
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
                            'assets/images/ari.jpg',
                            height: 100,
                            width: 100,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text('Jenis Kelamin :'),
                                  Text('Laki-Laki'),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('Tanggal Lahir :'),
                                  Text('12 Desember 2022'),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('Provinsi : '),
                                  Text('DKI Jakarta'),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('Kota/kabupaten'),
                                  Text('Jakarta Selatan'),
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
              SizedBox(
                height: 10,
              ),
              Container(
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
                          Text('Ari Laso'),
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
                            'assets/images/ari.jpg',
                            height: 100,
                            width: 100,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text('Jenis Kelamin :'),
                                  Text('Laki-Laki'),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('Tanggal Lahir :'),
                                  Text('12 Desember 2022'),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('Provinsi : '),
                                  Text('DKI Jakarta'),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('Kota/kabupaten'),
                                  Text('Jakarta Selatan'),
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
              SizedBox(
                height: 10,
              ),
              Container(
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
                          Text('Ari Laso'),
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
                            'assets/images/ari.jpg',
                            height: 100,
                            width: 100,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text('Jenis Kelamin :'),
                                  Text('Laki-Laki'),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('Tanggal Lahir :'),
                                  Text('12 Desember 2022'),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('Provinsi : '),
                                  Text('DKI Jakarta'),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('Kota/kabupaten'),
                                  Text('Jakarta Selatan'),
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
            ],
          )
          // ListView.builder(
          //     itemCount: datum.length,
          //     itemBuilder: (context, index) {
          //       return ListTile(
          //         title: Container(
          //           height: 200,
          //           width: 200,
          //           color: Color.fromRGBO(194, 167, 167, 0.38),
          //           child: Padding(
          //             padding: const EdgeInsets.symmetric(
          //                 horizontal: 10, vertical: 10),
          //             child: Column(
          //               mainAxisAlignment: MainAxisAlignment.start,
          //               crossAxisAlignment: CrossAxisAlignment.start,
          //               children: [
          //                 Row(
          //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //                   children: [
          //                     Text(datum[index].name.toString()),
          //                     IconButton(
          //                       icon: Icon(Icons.more_vert),
          //                       onPressed: () {
          //                         Navigator.push(
          //                             context,
          //                             MaterialPageRoute(
          //                                 builder: (context) => informasi()));
          //                       },
          //                     ),
          //                   ],
          //                 ),
          //                 SizedBox(
          //                   height: 15,
          //                 ),
          //                 Row(
          //                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //                   crossAxisAlignment: CrossAxisAlignment.start,
          //                   children: [
          //                     Image.asset(
          //                       datum[index].photo.toString(),
          //                       height: 100,
          //                       width: 100,
          //                     ),
          //                     Column(
          //                       crossAxisAlignment: CrossAxisAlignment.start,
          //                       children: [
          //                         Row(
          //                           children: [
          //                             Text('Jenis Kelamin :'),
          //                             Text(datum[index].gender.toString()),
          //                           ],
          //                         ),
          //                         Row(
          //                           children: [
          //                             Text('Tanggal Lahir :'),
          //                             Text(datum[index].birthDate.toString()),
          //                           ],
          //                         ),
          //                         Row(
          //                           children: [
          //                             Text('Provinsi : '),
          //                             Text(datum[index].province.toString()),
          //                           ],
          //                         ),
          //                         Row(
          //                           children: [
          //                             Text('Kota/kabupaten'),
          //                             Text(datum[index].city.toString()),
          //                           ],
          //                         )
          //                       ],
          //                     )
          //                   ],
          //                 ),
          //               ],
          //             ),
          //           ),
          //         ),
          //       );
          //     },
          //   ),
          ),
    );
  }
}
