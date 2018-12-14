// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'category.dart';

final _backgroundColor = Colors.green[100];

/// Category Route (screen).
///
/// This is the 'home' screen of the Unit Converter. It shows a header and
/// a list of [Categories].
///
/// While it is named CategoryRoute, a more apt name would be CategoryScreen,
/// because it is responsible for the UI at the route's destination.
class CategoryRoute extends StatelessWidget {
  const CategoryRoute();

  static const _categoryNames = <String>[
    'Length',
    'Area',
    'Volume',
    'Mass',
    'Time',
    'Digital Storage',
    'Energy',
    'Currency',
  ];

  static const _baseColors = <Color>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red,
  ];
  
  @override
  Widget build(BuildContext context) {
    // TODO: Create a list of the eight Categories, using the names and colors
    // from above. Use a placeholder icon, such as `Icons.cake` for each
    // Category. We'll add custom icons later.

    // TODO: Create a list view of the Categories
    final listView = Container(
      color: _backgroundColor,
      padding: EdgeInsets.only(left: 8.0, right: 8.0),
      child: ListView(
        children: <Widget>[
          Category(
              name: _categoryNames[0],
              color: _baseColors[0],
              iconLocation: Icons.cake),
          Category(
              name: _categoryNames[1],
              color: _baseColors[1],
              iconLocation: Icons.cake),
          Category(
              name: _categoryNames[2],
              color: _baseColors[2],
              iconLocation: Icons.cake),
          Category(
              name: _categoryNames[3],
              color: _baseColors[3],
              iconLocation: Icons.cake),
          Category(
              name: _categoryNames[4],
              color: _baseColors[4],
              iconLocation: Icons.cake),
          Category(
              name: _categoryNames[5],
              color: _baseColors[5],
              iconLocation: Icons.cake),
          Category(
              name: _categoryNames[6],
              color: _baseColors[6],
              iconLocation: Icons.cake),
          Category(
              name: _categoryNames[7],
              color: _baseColors[7],
              iconLocation: Icons.cake)
        ],
      ),
    );

    // TODO: Create an App Bar
    final appBar = AppBar(
      backgroundColor: _backgroundColor,
      title: Text(
        'Unit Converter',
        style: TextStyle(fontSize: 30.0, color: Colors.black),
      ),
      centerTitle: true,
      elevation: 0.0,
    );

    return Scaffold(
      appBar: appBar,
      body: listView,
    );
  }
}