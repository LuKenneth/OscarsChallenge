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
import 'package:intl/intl.dart';

import 'model/nominees_repository.dart';
import 'model/classes.dart';
import 'colors.dart';
import 'home.dart';
import 'scores_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CategoryPage extends StatelessWidget {
  // TODO: Make a collection of cards (102)
  // TODO: Add a variable for Category (104)
  User user = new User("luke.k.patterson@gmail.com");
  var result;

  @override
  Widget build(BuildContext context) {
    // TODO: Return an AsymmetricView (104)
    // TODO: Pass Category variable to AsymmetricView (104)
    return Scaffold(
      // Add app bar (102)
      appBar: AppBar(
        // TODO: Add buttons and title (102)
        title: Text("CATEGORIES", style: TextStyle(color: kOscarBackgroundWhite)),
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Menu', style: TextStyle(color: kOscarBackgroundWhite, fontSize: 24.0),),
              decoration: BoxDecoration(
                color: kOscarDarkTan,
              ),
            ),
            ListTile(
              title: Text('My Submission'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Categories'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Scoreboard'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
                Navigator.push(context, 
                MaterialPageRoute(builder: (context) => ScoresPage()),);
              },
            ),
            ListTile(
              title: Text('Submit Predictions'),
              onTap: () {
                sendScore();
              },
            ),
          ],
        ),
      ),
      // Add a grid view (102)
      body: GridView.count(
        crossAxisCount: 1,
        padding: EdgeInsets.all(16.0),
        childAspectRatio: 3.0 / 4.0,
        // build a grid of cards (102)
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
    final NumberFormat formatter = NumberFormat.simpleCurrency(
      locale: Localizations.localeOf(context).toString());
    
    return categories.map((category) {
      return GestureDetector(
        onTap: () {
          _navigateToNominations(context, category);
        },
          child: generateCard(theme, category),
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

  Card generateCard(ThemeData theme, Category category) {
    
    Card defaultCard = Card (
          color: kOscarLightTan,
          elevation: 20,
          clipBehavior: Clip.antiAlias,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
                Padding(
                  padding: EdgeInsetsDirectional.only(bottom: 0.0, start: 0.0, top: 20.0, end: 0.0),
                  child: Image.asset(category.img,
                    fit: BoxFit.none,
                  ),
                ),
              Text(
                "Tap to select a nominee",
                style: theme.textTheme.headline,
                textAlign: TextAlign.center,
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        category == null ? '' : '${category.name}',// \n ${nominee.associate}',
                        style: theme.textTheme.body1,
                        softWrap: false,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                        textAlign: TextAlign.center,
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.end,
                  ),
                ),
            ],
          ),
        );
        bool contains = User.ballot.slip.containsKey(category.name);

        return  contains ? User.ballot.slip[category.name].card : defaultCard;
  }

  sendScore() {
    //if(User.ballot.slip.length != CategoryRespository.loadCategories().length) return;

    print(User.ballot);
    User.ballot.submission().forEach((k,v) {
      DocumentReference vote = Firestore.instance.collection('nominees').document('$k');

      Map<String, DocumentReference> ballot = {
        User.email : vote
      };
      Firestore.instance.collection('ballots').add(ballot).then((doc) {
        doc.updateData(ballot);
      });
    });
    
  }
}
