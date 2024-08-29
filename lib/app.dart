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

import 'home.dart';
import 'login.dart';

// TODO: Convert ShrineApp to stateful widget
class ShrineApp extends StatelessWidget {
  const ShrineApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shrine',
      initialRoute: '/login',
      routes: {
        '/login': (BuildContext context) => const LoginPage(),
        // TODO: Change to a Backdrop with a HomePage frontLayer
        '/': (BuildContext context) => const HomePage(),
        // TODO: Make currentCategory field take _currentCategory
        // TODO: Pass _currentCategory for frontLayer
        // TODO: Change backLayer field value to CategoryMenuPage
      },
      // TODO: Customize the theme
      theme: ThemeData.light(useMaterial3: true),
    );
  }
}

// TODO: Build a Shrine Theme
// TODO: Build a Shrine Text Theme
