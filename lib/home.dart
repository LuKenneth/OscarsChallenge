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
import 'package:firebase_auth/firebase_auth.dart';


class HomePage extends StatelessWidget {
  // TODO: Make a collection of cards (102)
  // TODO: Add a variable for Category (104)
  Category category; 

  HomePage(this.category);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NOMINEES", style: TextStyle(color: kOscarBackgroundWhite),), 
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            semanticLabel: "menu",
          ),
          onPressed: () {
            Navigator.pop(context);
          }
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
    List<Nominee> products = NomineeRepository.loadNominees(Category(0,category.name));

    if (products == null || products.isEmpty) {
      return const <GestureDetector>[];
    }

    final ThemeData theme = Theme.of(context);
    final NumberFormat formatter = NumberFormat.simpleCurrency(
      locale: Localizations.localeOf(context).toString());
    
    return products.map((nominee) {
      return GestureDetector (
        onTap: () {
          Navigator.pop(context, nominee);
        },
          child: generateCard(theme, nominee)
      );
    }).toList();
  }

  Card generateCard(ThemeData theme, Nominee nominee) {
    Card nomineeCard =  Card (
          color: kOscarLightTan,
          elevation: 25,
          clipBehavior: Clip.antiAlias,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.only(bottom: 0.0, start: 0.0, top: 20.0, end: 0.0),
                  child: Image.network(nominee.img,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        nominee == null ? '' : '${nominee.name} \n ${nominee.associate}',
                        style: theme.textTheme.button,
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

        nominee.card = nomineeCard;
        return nomineeCard;
  }

  Future<FirebaseUser>getUser() async {

    FirebaseUser user = await FirebaseAuth.instance.currentUser();
    return user;
  }
}
