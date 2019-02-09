// Copyright 2018-present the Flutter authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:flutter/material.dart';

import 'model/nominees_repository.dart';
import 'model/classes.dart';
import 'colors.dart';
import 'home.dart';
import 'scores_page.dart';

class CategoryPage extends StatelessWidget {
  User user = new User("luke.k.patterson@gmail.com");
  var result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MY PREDICTIONS", style: TextStyle(color: kOscarBackgroundWhite)),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Menu', style: TextStyle(color: kOscarBackgroundWhite, fontSize: 24.0),),
              decoration: BoxDecoration(
                color: kOscarDarkTan,
              ),
            ),
            ListTile(
              title: Text('My Predictions'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Scoreboard'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, 
                MaterialPageRoute(builder: (context) => ScoresPage()),);
              },
            ),
            ListTile(
              title: Text('Submit Predictions'),
              onTap: () {
                // sendScore();
              },
            ),
          ],
        ),
      ),
      body: GridView.count(
        crossAxisCount: 1,
        padding: EdgeInsets.all(16.0),
        childAspectRatio: 15 / 7,
        children: _buildGridCards(context),
      )
    );
  }

  List<GestureDetector> _buildGridCards(BuildContext context) {
    List<Category> categories = CategoryRespository.loadCategories();

    if (categories == null || categories.isEmpty) {
      return const <GestureDetector>[];
    }

    final ThemeData theme = Theme.of(context);

    return categories.map((category) {
      return GestureDetector(
        onTap: () {
          _navigateToNominations(context, category);
        },
          child: generateCard(context, theme, category),
      );
    }).toList();
  }

  _navigateToNominations(BuildContext context, Category category) async {
    result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomePage(category)),
    );
    var vote = {category.name : result as Nominee};
    User.ballot.slip.addAll(vote);
    print(User.ballot);
  }

  Card generateCard(BuildContext context, ThemeData theme, Category category) {
    bool nomineePredicted = User.ballot.slip[category.name] != null;
    Nominee nominee;
    if(nomineePredicted) {
      nominee = User.ballot.slip[category.name];
    }
      return Card(
        elevation: 12,
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
        child: ListTile(
          leading: nomineePredicted ? Image.network(nominee.img,
          width: 75,) : Image.asset(category.img),
          title: Column(children: [getCardTitle(nomineePredicted, nominee, category),
                  ],
                  crossAxisAlignment: CrossAxisAlignment.start,),
          subtitle: nomineePredicted ? Text(nominee.associate) : null,
        ),),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[ 
              Padding(
                padding:EdgeInsets.fromLTRB(0, 0, 20, 0),
                  child: RaisedButton(
                  elevation: 12,
                  padding: EdgeInsets.all(0),
                  child: nomineePredicted ? const Text('CHANGE') : const Text('SELECT'),
                  onPressed: () { 
                    _navigateToNominations(context, category);
                  },
                ),
              ),
            ],
          ), 
      ],
    ),
      );
  }

  Text getCardTitle(bool nomineePredicted, Nominee nominee, Category category) {
    return nomineePredicted ? 
      Text(nominee.name, 
      style: TextStyle(
              color: Colors.black)) : 
      Text(category.name);
  }
}
