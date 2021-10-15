import 'package:flutter/material.dart';

class MyHomePageState extends StatelessWidget {
  const MyHomePageState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.horizontal,
      reverse: false,
      controller: PageController(
        initialPage: 0,
        viewportFraction: 1,
        keepPage: true,
      ),
      physics: const BouncingScrollPhysics(),
      pageSnapping: true,
      onPageChanged: (index) {
        //监听事件
        // ignore: avoid_print
        print('index=====$index');
      },
      children: <Widget>[
        Container(
          color: Colors.tealAccent,
          child: Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('返回'),
            ),
          ),
        ),
        Container(
          color: Colors.greenAccent,
          child: const Center(
            child: Text(
              '第2页',
              style: TextStyle(color: Colors.black, fontSize: 20.0),
            ),
          ),
        ),
        Container(
          color: Colors.deepOrange,
          child: const Center(
            child: Text(
              '第3页',
              style: TextStyle(color: Colors.black, fontSize: 20.0),
            ),
          ),
        )
      ],
    );
  }
}
