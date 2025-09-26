import 'package:flutter/material.dart';
import 'package:myfinancesapp/incomes.dart';
import 'package:myfinancesapp/spendings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightGreen),
      ),
      home: HomePage(title: 'My Finances'),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class SizeButton {
  final double width = 20.0;
  final double height = 20.0;
}

class PieChartDataPoint {
  final String label;
  final double value;
  final Color color;

  PieChartDataPoint({
    required this.label,
    required this.value,
    required this.color,
  });
}

class _HomePageState extends State<HomePage> {
  List<PieChartDataPoint> _chartData = [
    PieChartDataPoint(label: 'Category A', value: 30, color: Colors.red),
    PieChartDataPoint(label: 'Category B', value: 20, color: Colors.blue),
    PieChartDataPoint(label: 'Category C', value: 50, color: Colors.green),
  ];

  void updateChartData() {
    setState(() {
      _chartData = [
        PieChartDataPoint(label: 'Category A', value: 40, color: Colors.red),
        PieChartDataPoint(label: 'Category B', value: 25, color: Colors.blue),
        PieChartDataPoint(label: 'Category C', value: 35, color: Colors.green),
        PieChartDataPoint(label: 'Category D', value: 10, color: Colors.orange),
      ];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyFinances'),
        backgroundColor: Colors.lightGreen,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text("Monthly Spending and incomes"),

            Row(
              //Buttons low
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 25),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CreateIncome()),
                      );
                    },
                    child: Text('Add Income'),
                  ),
                ),
                SizedBox(width: 10.0),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 25),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CreateSpendings(),
                        ),
                      );
                    },
                    child: Text('Add Spending'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
