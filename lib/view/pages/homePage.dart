import 'package:baseview/core/base/base_view.dart';
import 'package:baseview/extensions/context_extension.dart';
import 'package:baseview/model/Currency_model.dart';
import 'package:baseview/service/Currency_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView(
        viewModel: HomePage,
        OnPageBuilder: (context, widget) {
          return Scaffold(
              body: FutureBuilder(
                  future: CurrencyService.getData(),
                  builder: (context,AsyncSnapshot<List<CurrencyModel>> snapshot) {
                    if (!snapshot.hasData) {
                      return const Center(child: CircularProgressIndicator());
                    } else if (snapshot.hasError) {
                      return const Center(
                        child: Text('error'),
                      );
                    } else {
                      var data = snapshot.data!;
                      return ListView.builder(itemBuilder: (_, __) {
                        return ListTile(
                          trailing: Icon(CupertinoIcons.money_dollar),
                          title : Text(data[__].title.toString()),
                          leading: Padding(padding: EdgeInsets.only(bottom: context.h * 0.010),child: CircleAvatar(radius: 30,backgroundColor: CupertinoColors.activeBlue,child: Text(data[__].code.toString(), style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 20, color: CupertinoColors.activeGreen),))),
                        );
                      }, itemCount: data.length,);
                    }
                  }));
        });
  }
}
