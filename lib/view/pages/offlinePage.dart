import 'package:baseview/service/Currency_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OffLinePage extends StatelessWidget {
  const OffLinePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var data = CurrencyService.mybox!;
    return Scaffold(body: ListView.builder(itemBuilder: (_, __) {
      return ListTile(leading: Padding(padding: EdgeInsets.only(bottom: 10),child: CircleAvatar(radius: 30,backgroundColor: CupertinoColors.activeBlue,child: Text(data.getAt(__)!.code.toString(), style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 20, color: CupertinoColors.activeGreen),))),title: Text(data.getAt(__)!.title.toString()),);
    }));
  }
}
