// ----------------------------------------------------------------------------
// -                        Prestige Medical Ltd.                             -
// -                       East House, Duttons Way                            -
// -                            Blackburn,                                    -
// -                           Lancashire,                                    -
// -                               UK.                                        -
// -                             BB1 2QR                                      -
// -                                                                          -
// -       (c) Copyright 2016, Prestige Medical Ltd., Blackburn, UK.          -
// -                                                                          -
// ----------------------------------------------------------------------------
// - Packet Communication Interface
// - Main Header
// ----------------------------------------------------------------------------
// -
// - Author:    Joshua Longhurst MSc BEng
// - Created:   April 2022
// -
// ----------------------------------------------------------------------------
import 'package:flutter/material.dart';

import 'pages/main_page.dart';

void main() => runApp(const MyApplication());

class MyApplication extends StatelessWidget {
  const MyApplication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: MainPage(
      title: '',
    ));
  }
}
