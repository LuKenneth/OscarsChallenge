import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ScoresPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: charts.BarChart(
        _createSampleData(),
        animate: true,
        vertical: false
      )

    );
  }

  List<charts.Series> getList() {
    return List<charts.Series>();
  }
  
  List<charts.Series<ScoreSet, String>> _createSampleData() {
    final data = [
      new ScoreSet('fasfsdagsgdsa', 5),
      new ScoreSet('pshort', 25),
      new ScoreSet('luke.k.patterson@gmail.com', 100),
      new ScoreSet('gahiuonsedakgnr4', 75),
    ];
    getScoresFromFirebase();

    return [
      new charts.Series<ScoreSet, String>(
        id: 'Score',
        domainFn: (ScoreSet score, _) => score.email,
        measureFn: (ScoreSet score, _) => score.score,
        data: data,
      )
    ];
  }

  List<ScoreSet> getScoresFromFirebase() {
    List<ScoreSet> scores;
    Firestore.instance.collection('ballots').snapshots().listen((data) => print(data));
  }
}

class ScoreSet {
  final String email;
  final int score;

  ScoreSet(this.email, this.score);
}