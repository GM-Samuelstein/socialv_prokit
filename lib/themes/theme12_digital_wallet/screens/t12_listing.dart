import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
// import 'package:prokit_flutter/main/utils/AppWidget.dart';
import 'package:socialv_prokit/themes/theme12_digital_wallet/models/T12Models.dart';
import 'package:socialv_prokit/themes/theme12_digital_wallet/utils/t12_colors.dart';
import 'package:socialv_prokit/themes/theme12_digital_wallet/utils/t12_constant.dart';
import 'package:socialv_prokit/themes/theme12_digital_wallet/utils/t12_data_generator.dart';
import 'package:socialv_prokit/themes/theme12_digital_wallet/utils/t12_widget.dart';

class T12TransactionList extends StatefulWidget {
  static String tag = '/T12TransactionList';

  @override
  T12TransactionListState createState() => T12TransactionListState();
}

class T12TransactionListState extends State<T12TransactionList> {
  var selectedTab = 0;
  List<T12Transactions> list = [];

  @override
  void initState() {
    super.initState();
    list.addAll(getAllTransactions());
  }

  @override
  Widget build(BuildContext context) {
    var width = context.width();
    var categoryWidth = (width - 56) / 4;

    var allList = ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: list.length,
      padding: EdgeInsets.only(
          left: spacing_standard_new, right: spacing_standard_new),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              list[index].transactionDate,
              style: TextStyle(
                fontSize: textSizeMedium,
                color: t12_text_secondary,
                fontFamily: fontMedium,
              ),
            )
                .paddingOnly(top: 12, bottom: spacing_standard_new)
                .visible(list[index].transactionDate.toString().isNotEmpty),
            transactionWidget(list[index], categoryWidth),
          ],
        );
      },
    );

    return Scaffold(
      appBar: AppBar(title: Text("Transactions")),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(spacing_standard),
                decoration: BoxDecoration(
                    // showShadow: true,
                    color: selectedTab == 0
                        ? t12_primary_color
                        : context.scaffoldBackgroundColor,
                    borderRadius: BorderRadius.circular(spacing_large)),
                child: Text(
                  "All",
                  style: TextStyle(
                    color: selectedTab == 0 ? Colors.white : t12_text_secondary,
                    fontFamily: fontMedium,
                    fontSize: textSizeMedium,
                  ),
                )
                    .paddingOnly(
                        top: spacing_standard,
                        bottom: spacing_standard,
                        left: spacing_large,
                        right: spacing_large)
                    .onTap(() {
                  setState(() {
                    selectedTab = 0;
                  });
                }, borderRadius: BorderRadius.circular(spacing_large)),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(spacing_standard),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      // showShadow: true,
                      color: selectedTab == 1
                          ? t12_primary_color
                          : context.scaffoldBackgroundColor,
                      borderRadius: BorderRadius.circular(spacing_large)),
                  child: Text(
                    "Received",
                    style: TextStyle(
                      color:
                          selectedTab == 1 ? Colors.white : t12_text_secondary,
                      fontFamily: fontMedium,
                      fontSize: textSizeMedium,
                    ),
                  )
                      .paddingOnly(
                          top: spacing_standard,
                          bottom: spacing_standard,
                          left: spacing_large,
                          right: spacing_large)
                      .onTap(() {
                    setState(() {
                      selectedTab = 1;
                    });
                  }, borderRadius: BorderRadius.circular(spacing_large)),
                ),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(spacing_standard),
                  decoration: BoxDecoration(
                      // showShadow: true,
                      color: selectedTab == 2
                          ? t12_primary_color
                          : context.scaffoldBackgroundColor,
                      borderRadius: BorderRadius.circular(spacing_large)),
                  child: Text(
                    "Spend",
                    style: TextStyle(
                      color:
                          selectedTab == 2 ? Colors.white : t12_text_secondary,
                      fontFamily: fontMedium,
                      fontSize: textSizeMedium,
                    ),
                  )
                      .paddingOnly(
                          top: spacing_standard,
                          bottom: spacing_standard,
                          left: spacing_large,
                          right: spacing_large)
                      .onTap(() {
                    setState(() {
                      selectedTab = 2;
                    });
                  }, borderRadius: BorderRadius.circular(spacing_large)),
                ),
              )
            ],
          ).paddingOnly(
              left: spacing_standard,
              right: spacing_standard,
              top: spacing_standard_new),
          Expanded(child: allList)
        ],
      ),
    );
  }
}
