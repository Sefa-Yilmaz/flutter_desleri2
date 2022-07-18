import 'package:flutter/material.dart';
import 'package:flutter_desleri2/models/veri.dart';

class AnaSayfa extends StatefulWidget {
  AnaSayfa(Key k) : super(key: k);

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  late List<Veri> tumVeriler;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tumVeriler = [
      Veri('Biz Kimiz', 'Biz Kimiz İçeriği Buraya Gelcek', false),
      Veri('siz Kimiz', 'siz Kimiz İçeriği Buraya Gelcek', false),
      Veri('onlar Kimiz', 'onlar Kimiz İçeriği Buraya Gelcek', false),
      Veri('sen Kimiz', 'sen Kimiz İçeriği Buraya Gelcek', false),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ExpansionTile(
          key: PageStorageKey('$index'),
          title: Text(tumVeriler[index].baslik),
          initiallyExpanded: tumVeriler[index].expanded,
          children: [
            Container(
              color:
                  index % 2 == 0 ? Colors.blue.shade200 : Colors.yellow.shade300,
              height: 100,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(tumVeriler[index].icerik),
              ),
            )
          ],
        );
      },
      itemCount: tumVeriler.length,
    );
  }
}
