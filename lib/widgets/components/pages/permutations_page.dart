import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:never_situp_test/never_situp/permutations.dart';
import 'package:never_situp_test/widgets/components/buttons/submit_button.dart';
import 'package:never_situp_test/widgets/components/dialogs/result_dialog.dart';

class PermutationsScreen extends StatefulWidget {
  final String header;
  const PermutationsScreen({super.key, required this.header});

  @override
  State<PermutationsScreen> createState() => _PermutationsScreenState();
}

class _PermutationsScreenState extends State<PermutationsScreen> {
  TextEditingController inputController = TextEditingController();
  final RegExp _stringRegExp = RegExp(r'^[a-zA-Z]+$');

  bool isInputValid(String input) {
    return _stringRegExp.hasMatch(input);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Text(widget.header),
          TextField(
            controller: inputController,
            decoration: const InputDecoration(hintText: "Input String"),
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
    if (inputController.text.isEmpty || !isInputValid(inputController.text)) {
      return;
    } else {
      List<String> resoute = permutations(inputController.text);
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return ResultDialog(
              text: resoute.toString(),
            );
          });
    }
  }
}
