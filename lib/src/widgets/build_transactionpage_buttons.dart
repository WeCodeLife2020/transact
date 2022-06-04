import 'package:app_template/src/utils/utils.dart';
import 'package:flutter/material.dart';

class BuildTransactionPageButtons extends StatelessWidget {
  final String indexpts;
  final IconData transactionIcons;
  final Function selectTransaction;
  const BuildTransactionPageButtons({
    Key? key,
    required this.indexpts,
    required this.transactionIcons,
    required this.selectTransaction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: screenWidth(context, dividedBy: 10),
          vertical: screenHeight(context, dividedBy: 400)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        // color: Theme.of(context).primaryColor,
      ),
      child: Card(
        elevation: 1,
        child: ListTile(
          leading: Icon(
            transactionIcons,
            color: Colors.black,
          ),
          title: Text(
            indexpts,
            style: const TextStyle(color: Colors.black),
          ),
          onTap: () {
            selectTransaction();
          },
        ),
      ),
    );
  }
}
