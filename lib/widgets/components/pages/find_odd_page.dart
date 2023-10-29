import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:never_situp_test/never_situp/find_odd.dart';

import 'package:never_situp_test/widgets/components/buttons/submit_button.dart';
import 'package:never_situp_test/widgets/components/dialogs/result_dialog.dart';

class FindOddPage extends StatefulWidget {
  final String header;
  const FindOddPage({super.key, required this.header});

  @override
  State<FindOddPage> createState() => _FindOddState();
}

class _FindOddState extends State<FindOddPage> {
  TextEditingController inputController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Text(widget.header),
          TextField(
            controller: inputController,
            decoration: InputDecoration(labelText: 'Enter an Integer'),
            keyboardType:
                TextInputType.number, // Set the keyboard type to number
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly, // Allow only digits (0-9)
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          submit_button(onPresser: () => _submit(), text: "Submit")
        ],
      ),
    );
  }

  _submit() {
    if (inputController.text.isEmpty) {
      return;
    } else {
      List<int> ints = inputController.text.split('').map(int.parse).toList();
      int reult = findOdd(ints);
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return ResultDialog(
              text: reult.toString(),
            );
          });
    }
  }
}
