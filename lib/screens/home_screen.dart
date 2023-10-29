import 'package:flutter/material.dart';
import 'package:never_situp_test/widgets/components/pages/count_smileys_pages.dart';
import 'package:never_situp_test/widgets/components/pages/find_odd_page.dart';
import 'package:never_situp_test/widgets/components/pages/permutations_page.dart';
import 'package:never_situp_test/widgets/components/buttons/submit_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectPage = 0;

  List listMenu = [
    {"text": "Permutations", "index": 0},
    {"text": "Find Odd", "index": 1},
    {"text": "Count Smaileys", "index": 2},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nerver Situp Test"),
      ),
      body: Column(children: [
        Container(
          margin: EdgeInsets.only(bottom: 20),
          height: 30,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: listMenu.length,
              itemBuilder: (
                context,
                index,
              ) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 3),
                  child: submit_button(
                      text: listMenu[index]["text"],
                      onPresser: () {
                        setState(() {
                          selectPage = listMenu[index]["index"];
                        });
                      }),
                );
              }),
        ),
        if (selectPage == 0)
          Expanded(
              child: PermutationsScreen(
            header: listMenu[0]["text"],
          )),
        if (selectPage == 1)
          Expanded(
              child: FindOddPage(
            header: listMenu[1]["text"],
          )),
        if (selectPage == 2)
          Expanded(
              child: CountSmileysPage(
            header: listMenu[2]["text"],
          )),
      ]),
    );
  }
}
