import 'package:flutter/material.dart';

class aramasayfasi extends StatelessWidget {
   aramasayfasi(Key k) : super(key: k);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemExtent: 200,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          padding: EdgeInsets.all(10),
          child: Material(
            elevation: 4,
            borderRadius: BorderRadius.circular(10),
            color: index % 2 == 0
                ? Colors.orangeAccent.shade200
                : Colors.indigo.shade200,
                child: Center(child: Text(index.toString()),),
          ),
        );
      },
    );
  }
}
