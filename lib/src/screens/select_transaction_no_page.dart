import 'package:app_template/src/screens/image_input_page.dart';
import 'package:flutter/material.dart';

class SelectTransactionNoPage extends StatelessWidget {
  final String contentText;

  const SelectTransactionNoPage({
    Key? key,
    required this.contentText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // Text("Selected Transaction",style: TextStyle(color: Colors.black),),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) =>
                    Center(child: Text(contentText)),
                itemCount: 6,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) =>Image_Input_Page() )));
                },
                child: Text("nxt page"))
          ],
        ),
      ),
    );
  }
}
