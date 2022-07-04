import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class WaterMonitoring extends StatefulWidget {
  const WaterMonitoring({Key? key}) : super(key: key);

  @override
  _WaterMonitoring createState() => _WaterMonitoring();
}

class _WaterMonitoring extends State<WaterMonitoring> {
  //final int _tds = 8;

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text("Aqua Pro + Water Monitoring"),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SfRadialGauge(
                enableLoadingAnimation: true,
                animationDuration: 4500,
                axes: <RadialAxis>[
                  RadialAxis(
                      minimum: 0,
                      maximum: 50,
                      annotations: const <GaugeAnnotation>[
                        GaugeAnnotation(
                            widget: Text('8 ppm',
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold)),
                            positionFactor: 0.0)
                      ],
                      pointers: const <GaugePointer>[
                        MarkerPointer(
                          value: 8,
                          markerHeight: 20,
                          markerWidth: 20,
                          elevation: 4,
                          enableAnimation: true,
                        ),
                      ],
                      ranges: <GaugeRange>[
                        GaugeRange(
                            startValue: 0,
                            endValue: 15,
                            color: Colors.green,
                            startWidth: 10,
                            endWidth: 10),
                        GaugeRange(
                            startValue: 15,
                            endValue: 30,
                            color: Colors.orange,
                            startWidth: 10,
                            endWidth: 10),
                        GaugeRange(
                            startValue: 30,
                            endValue: 50,
                            color: Colors.red,
                            startWidth: 10,
                            endWidth: 10)
                      ])
                ],
                title: const GaugeTitle(
                    text: 'TDS Level',
                    textStyle:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)))
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
