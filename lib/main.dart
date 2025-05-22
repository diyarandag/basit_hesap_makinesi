import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController tfKontrol = TextEditingController();
  double? sonuc, veriToplama, veriCikarma, veriCarpma, veriBolme, veriYuzde;

  void butonVeriAktarma(String? butonVerisi) {
    setState(() {
      tfKontrol.text = tfKontrol.text + butonVerisi!;
    });
  }

  TextStyle butonTipi() {
    return TextStyle(fontSize: 30, color: Colors.black);
  }

  ButtonStyle butonStili() {
    return ElevatedButton.styleFrom(
      backgroundColor: const Color.fromARGB(255, 243, 243, 243),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(200)),
    );
  }

  void sifirla() {
    setState(() {
      veriBolme = null;
      veriCarpma = null;
      veriCikarma = null;
      veriToplama = null;
      veriYuzde = null;
      sonuc = null;
    });
  }

  void islemYap(String? islem) {
    setState(() {
      if (islem == '%' && tfKontrol.text != '') {
        veriYuzde = double.parse(tfKontrol.text);
        tfKontrol.text = veriYuzde.toString();
        tfKontrol.text = '';
      }
      if (islem == '+' && tfKontrol.text != '') {
        veriToplama = double.parse(tfKontrol.text);
        tfKontrol.text = '';
      }
      if (islem == '-' && tfKontrol.text != '') {
        veriCikarma = double.parse(tfKontrol.text);
        tfKontrol.text = '';
      }
      if (islem == '*' && tfKontrol.text != '') {
        veriCarpma = double.parse(tfKontrol.text);
        tfKontrol.text = '';
      }
      if (islem == '/' && tfKontrol.text != '') {
        veriBolme = double.parse(tfKontrol.text);
        tfKontrol.text = '';
      }
      if (islem == '=' && tfKontrol.text != '') {
        if (veriToplama != null) {
          sonuc = veriToplama! + double.parse(tfKontrol.text);
          tfKontrol.text = sonuc.toString();
          sifirla();
        }
        if (veriCikarma != null) {
          sonuc = veriCikarma! - double.parse(tfKontrol.text);
          tfKontrol.text = sonuc.toString();
          sifirla();
        }
        if (veriCarpma != null) {
          sonuc = veriCarpma! * double.parse(tfKontrol.text);
          tfKontrol.text = sonuc.toString();
          sifirla();
        }
        if (veriBolme != null) {
          sonuc = veriBolme! / double.parse(tfKontrol.text);
          tfKontrol.text = sonuc.toString();
          sifirla();
        }
        if (veriYuzde != null) {
          sonuc = veriYuzde! / 100 * double.parse(tfKontrol.text);
          tfKontrol.text = sonuc.toString();
          sifirla();
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        title: const Text(
          'Hesap Makinesi',
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 19, 19, 19),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 200, bottom: 20),
            child: TextField(
              controller: tfKontrol,
              
              keyboardType: TextInputType.number,
              readOnly: true,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white, fontSize: 50),
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
                hintText: '',
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  if (tfKontrol.text.isNotEmpty) {
                    tfKontrol.text = tfKontrol.text.substring(
                      0,
                      tfKontrol.text.length - 1,
                    );
                  }
                },
                style: butonStili(),

                child: Icon(Icons.delete_sharp, color: Colors.black),
              ),
              ElevatedButton(
                onPressed: () {
                  islemYap('%');
                },
                style: butonStili(),
                child: Text('%', style: butonTipi()),
              ),
              ElevatedButton(
                onPressed: () {
                  if (tfKontrol.text.contains('.')) {
                    butonVeriAktarma('');
                  } else {
                    butonVeriAktarma('.');
                  }
                },
                style: butonStili(),
                child: Text('.', style: butonTipi()),
              ),
              ElevatedButton(
                onPressed: null,
                child: Visibility(visible: true, child: Text('')),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  butonVeriAktarma('1');
                },
                style: butonStili(),
                child: Text('1', style: butonTipi()),
              ),
              ElevatedButton(
                onPressed: () {
                  butonVeriAktarma('2');
                },
                style: butonStili(),
                child: Text('2', style: butonTipi()),
              ),
              ElevatedButton(
                onPressed: () {
                  butonVeriAktarma('3');
                },
                style: butonStili(),
                child: Text('3', style: butonTipi()),
              ),
              ElevatedButton(
                onPressed: () {
                  islemYap('+');
                },
                style: butonStili(),
                child: Text('+', style: butonTipi()),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  butonVeriAktarma('4');
                },
                style: butonStili(),
                child: Text('4', style: butonTipi()),
              ),
              ElevatedButton(
                onPressed: () {
                  butonVeriAktarma('5');
                },
                style: butonStili(),
                child: Text('5', style: butonTipi()),
              ),
              ElevatedButton(
                onPressed: () {
                  butonVeriAktarma('6');
                },
                style: butonStili(),
                child: Text('6', style: butonTipi()),
              ),
              ElevatedButton(
                onPressed: () {
                  islemYap('-');
                },
                style: butonStili(),
                child: Text('-', style: butonTipi()),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  butonVeriAktarma('7');
                },
                style: butonStili(),
                child: Text('7', style: butonTipi()),
              ),
              ElevatedButton(
                onPressed: () {
                  butonVeriAktarma('8');
                },
                style: butonStili(),
                child: Text('8', style: butonTipi()),
              ),
              ElevatedButton(
                onPressed: () {
                  butonVeriAktarma('9');
                },
                style: butonStili(),
                child: Text('9', style: butonTipi()),
              ),
              ElevatedButton(
                onPressed: () {
                  islemYap('*');
                },
                style: butonStili(),
                child: Text('*', style: butonTipi()),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  tfKontrol.text = '';
                  sifirla();
                },
                style: butonStili(),
                child: Text('C', style: butonTipi()),
              ),
              ElevatedButton(
                onPressed: () {
                  butonVeriAktarma('0');
                },
                style: butonStili(),
                child: Text('0', style: butonTipi()),
              ),
              ElevatedButton(
                onPressed: () {
                  islemYap('=');
                },
                style: butonStili(),
                child: Text('=', style: butonTipi()),
              ),
              ElevatedButton(
                onPressed: () {
                  islemYap('/');
                },
                style: butonStili(),
                child: Text('/', style: butonTipi()),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
