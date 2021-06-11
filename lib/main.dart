import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: YourButton5(),
        // child:YourButton2(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
class YourButton5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      icon: Icon(Icons.accessibility_new_sharp),
      label: Text("Person"),
      style: TextButton.styleFrom(
        primary: Colors.blue,
        padding: EdgeInsets.all(16),
        // shape: const RoundedRectangleBorder(
        //   borderRadius: BorderRadius.all(Radius.circular(10))
        // ),
          shape:StadiumBorder(),
        side: BorderSide(color: Colors.blue, width: 1)),
      onPressed: (){},
    );
  }
}

class YourButton4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      splashColor: Colors.red,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.indigo)),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.star,
              color: Colors.indigo,
            ),
            Text(
              "三連",
              style: TextStyle(color: Colors.indigo),
            ),
          ],
        ),
      ),
    );
  }
}

class YourButton3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RawChip(
        pressElevation: 0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(width: 1, color: Colors.indigo)),
        avatar: Icon(
          Icons.star,
          color: Colors.indigo,
        ),
        backgroundColor: Colors.transparent,
        label: Text(
          "三連",
          style: TextStyle(fontSize: 40),
        ),
        onPressed: () {});
  }
}

class YourButton2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      label: Text(
        "收藏",
        style: TextStyle(fontSize: 40),
      ),
      icon: Icon(Icons.star),
      // style: ButtonStyle(
      //   shape: ButtonStyleButton.allOrNull<OutlinedBorder>(StadiumBorder()),
      //   side: ButtonStyleButton.allOrNull<BorderSide>(BorderSide(color: Colors.blue, width: 2.0)),
      // ),

      // style: ButtonStyle(
      //     backgroundColor: MaterialStateProperty.all(Colors.yellow[200]),
      //     side: MaterialStateProperty.all(
      //       BorderSide(color: Colors.blue, width: 2.0),
      //     ),

      style: OutlinedButton.styleFrom(
        side: BorderSide(color: Colors.blue, width: 2.0),
        shape: StadiumBorder(),
      ),

      // backgroundColor:
      //     MaterialStateProperty.resolveWith((Set<MaterialState> states) {
      //   if (states.contains(MaterialState.disabled)) {
      //     return Colors.black;
      //   }
      //   if (states.contains(MaterialState.pressed)) {
      //     return Colors.blue;
      //   }
      //   return Colors.red;
      // }),
      // ),

      onPressed: () {},
    );
  }
}

class YourButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 200,
      height: 80,
      decoration: BoxDecoration(
          color: Colors.yellow,
          border: Border.all(color: Colors.blue, width: 2),
          borderRadius: BorderRadius.circular(20)),
      clipBehavior: Clip.hardEdge,
      child: MaterialButton(
        onPressed: () {},
        child: Row(
          mainAxisSize: MainAxisSize.min, //讓Row盡量少佔點空間, 但設定了這行之後,
          // MainAxisAlignment.spaceAround,就失去效果了

          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Icons.monetization_on,
              color: Colors.blue,
              size: 40,
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              "投幣",
              style: TextStyle(color: Colors.blue, fontSize: 40),
            ),
          ],
        ),
      ),
    );
  }
}
