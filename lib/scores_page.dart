import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'colors.dart';

class ScoresPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('SCOREBOARD', style: TextStyle(color: kOscarBackgroundWhite),)
      ),
      body: charts.BarChart(
          _createSampleData(),
          animationDuration: Duration(seconds: 1),
          animate: true,
          vertical: false,
          
        
      )

    );
  }

  List<charts.Series<ScoreSet, String>> _createSampleData() {
    final data = [
      new ScoreSet('Luke', 5),
      new ScoreSet('Peter', 6),
      new ScoreSet('Josh', 4),
      new ScoreSet('Tom', 3),
      new ScoreSet('Jason', 4),
      new ScoreSet('Utsav', 5),
      new ScoreSet('The Yznaga', 12),
    ];

    return [
      new charts.Series<ScoreSet, String>(
        id: 'Score',
        domainFn: (ScoreSet score, _) => score.email,
        measureFn: (ScoreSet score, _) => score.score,
        colorFn: (ScoreSet score, _) => charts.Color(r: kOscarDarkTan.red, g: kOscarDarkTan.green, b: kOscarDarkTan.blue),
        data: data,
      )
    ];
  }
}

class ScoreSet {
  final String email;
  final int score;

  ScoreSet(this.email, this.score);
}