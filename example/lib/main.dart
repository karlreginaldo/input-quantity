import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:input_quantity/input_quantity.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Input Quantity'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'INPUT QUANTITY',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(4.0),
                child: Text(
                  'by: pmatatias.dev',
                  style: TextStyle(fontSize: 14, color: Colors.blue),
                ),
              ),
              const Divider(),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Easy and solid'),
              ),
              InputQty(
                maxVal: 50,
                initVal: 0,
                steps: 10,
                minVal: -50,
                borderShape: BorderShapeBtn.circle,
                boxDecoration: const BoxDecoration(),
                minusBtn: const Icon(
                  Icons.accessibility_new_outlined,
                  size: 18,
                ),
                plusBtn: const Icon(
                  Icons.accessible_forward,
                  size: 18,
                ),
                btnColor1: Colors.indigo,
                onQtyChanged: (val) {
                  if (kDebugMode) {
                    print(val);
                  }
                },
              ),
              const Divider(),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('With steps : 10 (customizable)'),
              ),
              InputQty(
                maxVal: 100,
                initVal: 0.0,
                steps: 10,
                minVal: -100,
                onQtyChanged: (val) {
                  if (kDebugMode) {
                    print(val);
                  }
                },
              ),
              const Divider(),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Set Minimum,maximum and initial value.'),
              ),
              InputQty(
                maxVal: 100,
                initVal: 0,
                minVal: -100,
                onQtyChanged: (val) {
                  if (kDebugMode) {
                    print(val);
                  }
                },
              ),
              const Divider(),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Intrinsic width ( default )'),
              ),
              InputQty(
                maxVal: 100,
                initVal: 0,
                onQtyChanged: (val) {
                  if (kDebugMode) {
                    print(val);
                  }
                },
              ),
              const Divider(),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Expanded width'),
              ),
              InputQty(
                maxVal: 100,
                initVal: 0,
                isIntrinsicWidth: false,
                onQtyChanged: (val) {
                  if (kDebugMode) {
                    print(val);
                  }
                },
              ),
              const Divider(),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Customize input size'),
              ),
              InputQty(
                maxVal: 100.0,
                initVal: 0.0,
                textFieldDecoration: const InputDecoration(
                    isDense: false,
                    contentPadding: EdgeInsets.symmetric(horizontal: 10)),
                minVal: -100.0,
                onQtyChanged: (val) {
                  if (kDebugMode) {
                    print(val);
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
