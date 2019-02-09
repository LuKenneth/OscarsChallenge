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

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Nominee {

  Category category;
  String name;
  String associate;
  int points = 0;
  String img;
  Card card;

  Nominee(this.category, this.name, this.associate, this.img);

  String get assetName => 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07134409/e0e0b612a16885b02848f38ead529fffaed84d06d9651396218a2515a73ea823-370x492.jpg';
  String get assetPackage => '';

  @override
    String toString() {
      // TODO: implement toString
      return name;
    }
}

class Category {

  int points;
  String name;
  List<Nominee> nominees;
  String img = 'assets/oscar.png';

  Category(this.points, this.name);

  @override
    String toString() {
      // TODO: implement toString
      return name;
    }
}

class Ballot {

static final Ballot _singleton = new Ballot._internal();
  User user;
  Map<String, Nominee> slip = Map();
  int points = 0;

  factory Ballot(user) {
    return _singleton;
  }

  @override
  String toString() {
    return slip.toString();
  }

  Map<String, String> submission() {
    Map<String, String> submission = new Map<String, String>();
    slip.forEach((k,v) => submission.addAll({k:v.name}));
    return submission;
  }

  Ballot._internal();

}

class User {
  static final User _singleton = new User._internal();
  static String name;
  static String email;
  static int points;
  static Ballot ballot = Ballot(_singleton);

  factory User(email) {
    return _singleton;
  }

  User._internal();
}