import 'package:flutter/material.dart';
import 'package:flutter_desleri2/anasayfa.dart';
import 'package:flutter_desleri2/arama.dart';
import 'package:flutter_desleri2/drawer_menu.dart';
import 'package:flutter_desleri2/kisisel_font_kullan%C4%B1m%C4%B1.dart';
import 'package:flutter_desleri2/page_view.dart';
import 'package:flutter_desleri2/tabs.dart';

void main() => runApp(FlutterDerleri());

class FlutterDerleri extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter Dersleri',
      theme: ThemeData(
          fontFamily: 'ElYazisi',
          primaryColor: Colors.amber,
          backgroundColor: Colors.orangeAccent),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int secilenMenuItem = 0;
  late List<Widget> tumsayfalar;
  late AnaSayfa sayfaAna;
  late aramasayfasi sayfaArama;
  late PageViewOrnek pageViewOrnek;

  var keyAnaSayfasi = PageStorageKey('key_ana_sayfa');
  var keyArama = PageStorageKey('key_arama_sayfa');

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    sayfaAna = AnaSayfa(keyAnaSayfasi);
    sayfaArama = aramasayfasi(keyArama);
    pageViewOrnek = PageViewOrnek();
    tumsayfalar = [sayfaAna, sayfaArama, pageViewOrnek];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerMenu(),
      appBar: AppBar(
        title: Text('flutter dersleri'),
      ),
      body: secilenMenuItem <= tumsayfalar.length - 1
          ? tumsayfalar[secilenMenuItem]
          : tumsayfalar[0],
      bottomNavigationBar: bottomNovMenu(),
    );
  }

  Theme bottomNovMenu() {
    return Theme(
      data: ThemeData(
        canvasColor: Colors.cyan,
      ),
      child: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'ExpansionTile'),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              activeIcon: Icon(Icons.call),
              label: 'Liste'),
          BottomNavigationBarItem(
              icon: Icon(Icons.add),
              activeIcon: Icon(Icons.home_filled),
              label: 'PageView'),
          BottomNavigationBarItem(icon: Icon(Icons.account_box), label: 'Profil'),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: secilenMenuItem,
        fixedColor: Colors.yellow,
        //backgroundColor: Colors.red,
        onTap: (index) {
          setState(() {
            secilenMenuItem = index;
            if (index == 3) {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => TabOrnek()))
                  .then((bb) {
                secilenMenuItem = 0;
              });
            }
          });
        },
      ),
    );
  }
}
