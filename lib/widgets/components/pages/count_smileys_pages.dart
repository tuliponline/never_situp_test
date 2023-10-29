import 'package:flutter/material.dart';
import 'package:never_situp_test/never_situp/count_smileys.dart';
import 'package:never_situp_test/widgets/components/buttons/submit_button.dart';
import 'package:never_situp_test/widgets/components/dialogs/result_dialog.dart';

class CountSmileysPage extends StatefulWidget {
  final String header;
  const CountSmileysPage({super.key, required this.header});

  @override
  State<CountSmileysPage> createState() => _CountSmileysState();
}

class _CountSmileysState extends State<CountSmileysPage> {
  List<String> items = [
    ';D',
    ':-(',
    ':-)',
    ';~)',
    ':)',
    ';)',
    ';-|',
    ':~)',
    ';-)',
    ':~D'
  ];
  List<String> selectedItems = [];

  bool isSelected(String item) {
    return selectedItems.contains(item);
  }

  void toggleSelection(String item) {
    setState(() {
      if (isSelected(item)) {
        selectedItems.remove(item);
      } else {
        selectedItems.add(item);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(widget.header),
        Expanded(
          child: CustomScrollView(
            slivers: <Widget>[
              SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  childAspectRatio: 1.0,
                ),
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    final item = items[index];
                    final itemSelected = isSelected(item);

                    return GestureDetector(
                      onTap: () {
                        toggleSelection(item);
                      },
                      child: Card(
                        margin: EdgeInsets.all(8.0),
                        color: itemSelected ? Colors.blue : Colors.white,
                        child: Center(
                          child: Text(
                            item,
                            style: TextStyle(
                              color: itemSelected ? Colors.white : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  childCount: items.length,
                ),
              ),
            ],
          ),
        ),
        Expanded(
            child: Column(
          children: [
            submit_button(onPresser: () => _submit(), text: "Count"),
          ],
        ))
      ],
    );
  }

  _submit() {
    if (selectedItems.isEmpty) {
      return;
    } else {
      int result = countSmileys(selectedItems);
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return ResultDialog(
              text: result.toString(),
            );
          });
    }
  }
}
