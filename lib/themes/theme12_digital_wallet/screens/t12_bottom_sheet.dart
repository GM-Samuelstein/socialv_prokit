import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:socialv_prokit/themes/theme12_digital_wallet/utils/t12_colors.dart';
import 'package:socialv_prokit/themes/theme12_digital_wallet/utils/t12_constant.dart';
import 'package:socialv_prokit/themes/theme12_digital_wallet/utils/t12_images.dart';
import 'package:socialv_prokit/themes/theme12_digital_wallet/utils/t12_widget.dart';

class T12BottomSheet extends StatefulWidget {
  static String tag = '/T12BottomSheet';

  @override
  T12BottomSheetState createState() => T12BottomSheetState();
}

class T12BottomSheetState extends State<T12BottomSheet> {
  @override
  Widget build(BuildContext context) {
    // Uncomment
    // changeStatusColor(appStore.appBarColor!);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Electricity Bill",
          style: TextStyle(
            color: t12_text_color_primary,
          ),
        ),
      ),
      // appBar: appBar(context, "Electricity Bill"),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              margin: EdgeInsets.all(spacing_standard_new),
              decoration: BoxDecoration(
                  // showShadow: true,
                  color: context.scaffoldBackgroundColor),
              // decoration: boxDecoration(showShadow: true, bgColor: context.scaffoldBackgroundColor),
              child: Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      // showShadow: true,
                      color: Color(0xffBBd2fc),
                      borderRadius: BorderRadius.circular(spacing_standard),
                    ),
                    // decoration: boxDecoration(showShadow: true, bgColor: Color(0xffBBd2fc), radius: spacing_standard),
                    child: Image.asset(t12_bill, width: 24, height: 24)
                        .paddingAll(spacing_standard_new),
                  ),
                  toolBarTitle("\$122.50", textColor: t12_text_color_primary)
                      .paddingTop(spacing_standard_new),
                  Text(
                    "Desko Electricity",
                    style: TextStyle(
                      color: t12_text_color_primary,
                      fontFamily: fontMedium,
                    ),
                  ).paddingTop(spacing_standard),
                  // text("Desko Electricity", textColor: appStore.textPrimaryColor, fontFamily: fontMedium).paddingTop(spacing_standard),
                  Text(
                    "Last Payment Date: 24 May 2020",
                    style: TextStyle(
                        color: t12_text_secondary, fontSize: textSizeMedium),
                  ).paddingTop(spacing_control_half),
                  // text("Last Payment Date: 24 May 2020", textColor: appStore.textSecondaryColor, fontSize: textSizeMedium).paddingTop(spacing_control_half),
                ],
              ).paddingAll(spacing_standard_new),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: context.scaffoldBackgroundColor,
                // showShadow: true,
                borderRadius: BorderRadius.circular(spacing_standard),
              ),
              // decoration: boxDecoration(bgColor: context.scaffoldBackgroundColor, showShadow: true, radius: spacing_standard),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Subscriber ID",
                    style: TextStyle(
                      color: t12_text_color_primary,
                    ),
                  ),
                  // text("Subscriber ID", textColor: appStore.textPrimaryColor),
                  formField(context, "Your Subcriber Id",
                          prefixIcon: Icons.person_outline)
                      .paddingTop(spacing_standard),
                  Text(
                    "Bill No",
                    style: TextStyle(
                      color: t12_text_color_primary,
                    ),
                  ).paddingTop(spacing_standard),
                  // text("Bill No", textColor: appStore.textPrimaryColor).paddingTop(spacing_standard),
                  formField(context, "Enter the bill number",
                          prefixIcon: Icons.device_unknown)
                      .paddingTop(spacing_standard),
                  Text(
                    "Amount",
                    style: TextStyle(
                      color: t12_text_color_primary,
                    ),
                  ).paddingTop(spacing_standard),
                  // text("Amount", textColor: appStore.textPrimaryColor).paddingTop(spacing_standard),
                  formField(context, "Enter the amount",
                          prefixIcon: Icons.attach_money)
                      .paddingTop(spacing_standard),
                  SizedBox(
                    width: double.infinity,
                    child: MaterialButton(
                      padding: EdgeInsets.only(
                          top: spacing_standard_new,
                          bottom: spacing_standard_new),
                      child: Text(
                        "Pay Now",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: fontMedium,
                        ),
                      ),
                      // child: text("Pay Now", textColor: Colors.white, fontFamily: fontMedium),
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              new BorderRadius.circular(spacing_standard)),
                      color: t12_primary_color,
                      onPressed: () => {
                        showModalBottomSheet(
                            backgroundColor: Colors.transparent,
                            context: context,
                            isScrollControlled: true,
                            builder: (BuildContext context) {
                              return Container(
                                decoration: BoxDecoration(
                                    color: context.scaffoldBackgroundColor,
                                    borderRadius: BorderRadius.only(
                                        topLeft:
                                            Radius.circular(spacing_standard),
                                        topRight:
                                            Radius.circular(spacing_standard))),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        // showShadow: true,
                                        color:
                                            Color(0xffBBd2fc).withOpacity(0.3),
                                        borderRadius: BorderRadius.circular(
                                            spacing_standard),
                                      ),
                                      // decoration: boxDecoration(showShadow: true, bgColor: Color(0xffBBd2fc).withOpacity(0.3), radius: spacing_standard),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Container(
                                            decoration: BoxDecoration(
                                              // showShadow: true,
                                              color: Color(0xffBBd2fc),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      spacing_standard),
                                            ),
                                            // decoration: boxDecoration(showShadow: true, bgColor: Color(0xffBBd2fc), radius: spacing_standard),
                                            child: Image.asset(t12_bill,
                                                    width: 24, height: 24)
                                                .paddingAll(
                                                    spacing_standard_new),
                                          ).paddingRight(spacing_standard_new),
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Text("Paying"),
                                                // text("Paying"),
                                                Text(
                                                  "Electricity Bill",
                                                  style: TextStyle(
                                                    fontSize: textSizeMedium,
                                                    color:
                                                        t12_text_color_primary,
                                                    fontFamily: fontMedium,
                                                  ),
                                                ).paddingTop(
                                                    spacing_control_half),
                                                // text("Electricity Bill", fontSize: textSizeMedium, textColor: t12_text_color_primary, fontFamily: fontMedium).paddingTop(spacing_control_half),
                                              ],
                                            ),
                                          ),
                                          toolBarTitle("\$122.50")
                                              .paddingTop(spacing_standard_new),
                                        ],
                                      ).paddingAll(spacing_standard),
                                    ).paddingBottom(spacing_standard_new),
                                    Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: context.scaffoldBackgroundColor,
                                        // showShadow: true,
                                        borderRadius: BorderRadius.circular(
                                            spacing_standard),
                                      ),
                                      // decoration: boxDecoration(bgColor: context.scaffoldBackgroundColor, showShadow: true, radius: spacing_standard),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            "Subscriber ID",
                                            style: TextStyle(
                                              color: t12_text_color_primary,
                                            ),
                                          ),
                                          // text("Subscriber ID", textColor: appStore.textPrimaryColor),
                                          formField(
                                                  context, "Your Subcriber Id",
                                                  prefixIcon:
                                                      Icons.person_outline)
                                              .paddingTop(spacing_standard),
                                          Text(
                                            "Bill No",
                                            style: TextStyle(
                                              color: t12_text_color_primary,
                                            ),
                                          ).paddingTop(spacing_standard),
                                          // text("Bill No", textColor: appStore.textPrimaryColor).paddingTop(spacing_standard),
                                          formField(context,
                                                  "Enter the bill number",
                                                  prefixIcon:
                                                      Icons.device_unknown)
                                              .paddingTop(spacing_standard),
                                          Text(
                                            "Amount",
                                            style: TextStyle(
                                              color: t12_text_color_primary,
                                            ),
                                          ).paddingTop(spacing_standard),
                                          // text("Amount", textColor: appStore.textPrimaryColor).paddingTop(spacing_standard),
                                          formField(context, "Enter the amount",
                                                  prefixIcon:
                                                      Icons.attach_money)
                                              .paddingTop(spacing_standard),
                                          SizedBox(
                                            width: double.infinity,
                                            child: MaterialButton(
                                              padding: EdgeInsets.only(
                                                  top: spacing_standard_new,
                                                  bottom: spacing_standard_new),
                                              child: Text(
                                                "Pay Now",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontFamily: fontMedium),
                                              ),
                                              // child: text("Pay Now", textColor: Colors.white, fontFamily: fontMedium),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      new BorderRadius.circular(
                                                          spacing_standard)),
                                              color: t12_primary_color,
                                              onPressed: () => {
                                                showModalBottomSheet(
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    context: context,
                                                    builder:
                                                        (BuildContext context) {
                                                      return Container(
                                                        decoration: BoxDecoration(
                                                            color: Colors.white,
                                                            borderRadius: BorderRadius.only(
                                                                topLeft: Radius
                                                                    .circular(
                                                                        spacing_standard),
                                                                topRight: Radius
                                                                    .circular(
                                                                        spacing_standard))),
                                                        child: Column(
                                                          children: <Widget>[
                                                            Container(
                                                              width: double
                                                                  .infinity,
                                                              margin: EdgeInsets
                                                                  .all(
                                                                      spacing_standard_new),
                                                              decoration:
                                                                  BoxDecoration(
                                                                // showShadow: true,
                                                                color: Color(
                                                                    0xfff1f4fb),
                                                              ),
                                                              // decoration: boxDecoration(showShadow: true, bgColor: Color(0xfff1f4fb)),
                                                              child: Row(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: <Widget>[
                                                                  Container(
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      // showShadow: true,
                                                                      color: Color(
                                                                          0xffBBd2fc),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              spacing_standard),
                                                                    ),
                                                                    // decoration: boxDecoration(showShadow: true, bgColor: Color(0xffBBd2fc), radius: spacing_standard),
                                                                    child: Image
                                                                        .asset(
                                                                      t12_bill,
                                                                      width: 24,
                                                                      height:
                                                                          24,
                                                                    ).paddingAll(
                                                                        spacing_standard_new),
                                                                  ),
                                                                  Expanded(
                                                                    child:
                                                                        Column(
                                                                      children: <Widget>[
                                                                        Text(
                                                                            "Paying"),
                                                                        // text("Paying"),
                                                                        Text(
                                                                          "Electricity Bill",
                                                                          style: TextStyle(
                                                                              fontSize: textSizeMedium,
                                                                              color: t12_text_color_primary,
                                                                              fontFamily: fontMedium),
                                                                        ).paddingTop(
                                                                            spacing_control_half),
                                                                        // text("Electricity Bill", fontSize: textSizeMedium, textColor: t12_text_color_primary, fontFamily: fontMedium)
                                                                        //     .paddingTop(spacing_control_half),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  toolBarTitle(
                                                                          "\$122.50")
                                                                      .paddingTop(
                                                                          spacing_standard_new),
                                                                ],
                                                              ).paddingAll(
                                                                  spacing_standard_new),
                                                            ),
                                                          ],
                                                        ).paddingAll(
                                                            spacing_standard_new),
                                                      );
                                                    })
                                              },
                                            ),
                                          ).paddingTop(spacing_standard_new)
                                        ],
                                      ).paddingAll(spacing_standard_new),
                                    )
                                  ],
                                ).paddingAll(spacing_standard_new),
                              );
                            })
                      },
                    ),
                  ).paddingTop(spacing_standard_new)
                ],
              ).paddingAll(spacing_standard_new),
            ).paddingAll(spacing_standard_new)
          ],
        ),
      ),
    );
  }
}
