import 'package:flutter/material.dart';

class PageViewOrnek extends StatefulWidget {
  PageViewOrnek({Key? key}) : super(key: key);

  @override
  State<PageViewOrnek> createState() => _PageViewOrnekState();
}

class _PageViewOrnekState extends State<PageViewOrnek> {
  var myController =
      PageController(initialPage: 0, keepPage: true, viewportFraction: 1);
  bool yatayEksen = true;
  bool pageSnapping = true;
  bool reverseSira = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView(
            scrollDirection:
                yatayEksen == true ? Axis.horizontal : Axis.vertical,
            reverse: reverseSira,
            controller: myController,
            pageSnapping: pageSnapping,
            onPageChanged: (index) {
              debugPrint('page change gelen index $index');
            },
            children: [
              Container(
                width: double.infinity,
                height: 300,
                color: Colors.indigo.shade300,
                child: Center(
                  child: Text(
                    'sayfa 0 ',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 300,
                color: Colors.red.shade300,
                child: Center(
                  child: Text(
                    'sayfa 1 ',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 300,
                color: Colors.blue.shade300,
                child: Center(
                  child: Text(
                    'sayfa 2 ',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            width: double.infinity,
            height: 300,
            color: Colors.red,
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text('yatay eksende calış'),
                    Checkbox(
                      value: yatayEksen,
                      onChanged: (bool? b) {
                        setState(() {
                          yatayEksen = b!;
                        });
                      },
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text('page snapping'),
                    Checkbox(
                      value: pageSnapping,
                      onChanged: (b) {
                        setState(() {
                          pageSnapping = b!;
                        });
                      },
                    )
                  ],
                ),
              ), Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text('reverse sıra'),
                    Checkbox(
                      value: reverseSira,
                      onChanged: (b) {
                        setState(() {
                          reverseSira = b!;
                        });
                      },
                    )
                  ],
                ),
              )
            ]),
          ),
        ),
      ],
    );
  }
}
