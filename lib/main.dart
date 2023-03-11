import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sayaç Uygulaması',
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Sayaç Uygulaması'),
        ),
        body: Center(
          child: CounterWidget(),
        ),
      ),
    );
  }
}

class CounterWidget extends StatefulWidget {
  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int counter = 10;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  void decrementCounter() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Sayaç Değeri',
          style: TextStyle(fontSize: 40),
        ),
        Text(
          '$counter',
          style: TextStyle(fontSize: 100),
        ),
        SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: incrementCounter,
              child: Icon(Icons.add),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white30, // Düğmenin rengi burada ayarlanıyor.
              ),
            ),
            SizedBox(width: 16),
            ElevatedButton(
              onPressed: decrementCounter,
              child: Icon(Icons.remove),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white30, // Düğmenin rengi burada ayarlanıyor.
              ),
            ),
          ],
        ),
      ],
    );
  }
}
