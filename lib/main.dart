import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'new project',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Sayac(
        isim: "bardak",
      ),
    );
  }
}

class Sayac extends StatefulWidget {
  final String isim;
  Sayac({this.isim: 'bardak'});

  @override
  State<Sayac> createState() => _SayacState();
}

class _SayacState extends State<Sayac> {
  int sayi = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    print('sayac state baslatildi');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Text("${widget.isim} sayisi $sayi"),
      floatingActionButton: FloatingActionButton(onPressed: () {
        ekle();
      }),
    );
  }

  void ekle() {
    setState(() {
      sayi++;
      print(sayi);
    });
  }
}
