import 'package:flutter/material.dart';
import 'package:interest_calculator/components/common/typography/index.dart';
import 'package:interest_calculator/components/home/compound.dart';
import 'package:interest_calculator/components/home/simple.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 0,
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              bottom: const TabBar(tabs: [
                // Tab(
                //   text: "Simple",
                // ),
                CustomTypography("Simple", as: "Header3"),
                CustomTypography("Compound", as: "Header3"),
              ]),
            ),
            body: Container(
              padding: const EdgeInsets.all(20),
              child: TabBarView(children: [Simple(), Compound()]),
            )));
  }
}
