import 'package:flutter/material.dart';

class BuildTextFieldInputs extends StatefulWidget {
  final String hintlabel;
  final IconData labelicon;

  BuildTextFieldInputs({
    Key? key,
    required this.hintlabel,
    required this.labelicon,
  }) : super(key: key);
  

  @override
  State<BuildTextFieldInputs> createState() => _BuildTextFieldInputsState();
}

class _BuildTextFieldInputsState extends State<BuildTextFieldInputs> {
  final textinputcontroller = TextEditingController();
  bool isPassword = false;
  @override
  void initState() {
    super.initState();
    textinputcontroller.addListener(() {setState(() {
      debugPrint(textinputcontroller.text);
      
    });});
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textinputcontroller,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: widget.hintlabel,
        prefixIcon: Icon(widget.labelicon,size: 15),
        suffixIcon: textinputcontroller.text.isEmpty
            ? Container(
                width: 0,
              )
            : IconButton(
                onPressed: () => textinputcontroller.clear(),
                icon: const Icon(Icons.close),
              ),
        border: const OutlineInputBorder(),
      ),
      textInputAction: TextInputAction.done,
    );
  }
}
