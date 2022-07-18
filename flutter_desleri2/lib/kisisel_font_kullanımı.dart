import 'package:flutter/material.dart';

class kisiselfont extends StatelessWidget {
  const kisiselfont({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            'Kişisel fot kullanımı',
            style: TextStyle(
                fontFamily: 'ElYazisi',
                fontSize: 36,
                fontWeight: FontWeight.w700),
          ),
        ),
      ],
    );
  }
}
