import 'package:flutter/material.dart';

class DataSiswa extends StatefulWidget {
  @override
  State<DataSiswa> createState() => _DataSiswaState();
}

class _DataSiswaState extends State<DataSiswa> {
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
                          onPressed: () {},
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
                                Text('Jakarta Utara'),
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
                          onPressed: () {},
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
                                Text('Jakarta Utara'),
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
                          onPressed: () {},
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
                                Text('Jakarta Utara'),
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
        ),
      ),
    );
  }
}
