import 'package:app_template/src/screens/select_transaction_no_page.dart';
import 'package:app_template/src/widgets/build_transactionpage_buttons.dart';
import 'package:flutter/material.dart';

class TransactionPage extends StatelessWidget {
  final List<String> transactionList = [
    "Sales Inquiry",
    "Sales Quote",
    "Sales Order",
    "Shipment",
    "Sales Invoise",
    "Credit Memo",
    "Purchase Request",
    "RFQ",
    "Purchase Order",
    "GRN",
    "Demit Memo",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    "Select Transaction",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(padding: const EdgeInsets.only(bottom: 10),
                itemBuilder: ((context, index) => BuildTransactionPageButtons(
                    selectTransaction: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((context) => SelectTransactionNoPage(
                                  contentText: transactionList[index],
                                )),
                          ),
                        ),
                    indexpts: transactionList[index],
                    transactionIcons: Icons.panorama_fish_eye_outlined)),
                itemCount: transactionList.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
