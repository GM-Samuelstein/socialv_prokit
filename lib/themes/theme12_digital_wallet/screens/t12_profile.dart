import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
// import 'package:prokit_flutter/main/utils/AppWidget.dart';
// import 'package:prokit_flutter/main/utils/dots_indicator/dots_indicator.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:socialv_prokit/themes/theme12_digital_wallet/models/T12Models.dart';
import 'package:socialv_prokit/themes/theme12_digital_wallet/utils/t12_colors.dart';
import 'package:socialv_prokit/themes/theme12_digital_wallet/utils/t12_constant.dart';
import 'package:socialv_prokit/themes/theme12_digital_wallet/utils/t12_data_generator.dart';
import 'package:socialv_prokit/themes/theme12_digital_wallet/utils/t12_images.dart';

class T12Profile extends StatefulWidget {
  static String tag = '/T12Profile';

  @override
  T12ProfileState createState() => T12ProfileState();
}

class T12ProfileState extends State<T12Profile> {
  List<T12Slider> cards = [];
  List<T12Slider> accounts = [];
  var position = 0;

  // ignore: non_constant_identifier_names
  var ac_position = 0;

  @override
  void initState() {
    super.initState();
    cards.addAll(getCards());
  }

  @override
  Widget build(BuildContext context) {
    var width = context.width();
    var cardHeight = (width - 48) * (9 / 16);
    // changeStatusColor(appStore.appBarColor!);

    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      // appBar: appBar(context, "Profile"),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: context.scaffoldBackgroundColor,
                // showShadow: true,
                borderRadius: BorderRadius.circular(spacing_standard),
              ),
              // decoration: boxDecoration(bgColor: context.scaffoldBackgroundColor, showShadow: true, radius: spacing_standard),
              child: Stack(
                alignment: Alignment.topRight,
                children: <Widget>[
                  Container(
                    color: context.scaffoldBackgroundColor,
                    child: Column(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: t12_primary_color, width: 2)),
                          child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  backgroundImage: AssetImage(t12_profile),
                                  radius: 45)
                              .paddingAll(3),
                        ),
                        Text(
                          "James Dennis",
                          style: TextStyle(
                            color: t12_text_color_primary,
                            fontFamily: fontBold,
                            fontSize: textSizeNormal,
                          ),
                        ).paddingTop(spacing_control),
                        // text("James Dennis", textColor: appStore.textPrimaryColor, fontFamily: fontBold, fontSize: textSizeNormal).paddingTop(spacing_control),
                        Text(
                          "Ui/UX Designer",
                          style: TextStyle(
                            color: t12_text_secondary,
                            fontSize: textSizeMedium,
                          ),
                        ).paddingTop(spacing_control_half),
                        // text("Ui/UX Designer", textColor: appStore.textSecondaryColor, fontSize: textSizeMedium).paddingTop(spacing_control_half),
                      ],
                    ).paddingAll(spacing_standard_new),
                    width: double.infinity,
                  ),
                  Text(
                    "Edit",
                    style: TextStyle(
                      color: t12_primary_color,
                      fontFamily: fontMedium,
                    ),
                  ).paddingAll(spacing_standard).onTap(() {})
                  // text("Edit", textColor: t12_primary_color, fontFamily: fontMedium).paddingAll(spacing_standard).onTap(() {})
                ],
              ),
            ).paddingAll(spacing_standard_new),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: context.scaffoldBackgroundColor,
                // showShadow: true,
                borderRadius: BorderRadius.circular(spacing_standard),
              ),
              // decoration: boxDecoration(bgColor: context.scaffoldBackgroundColor, showShadow: true, radius: spacing_standard),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        "Cards",
                        style: TextStyle(
                          color: t12_text_color_primary,
                          fontFamily: fontBold,
                          fontSize: textSizeLargeMedium,
                        ),
                      ),
                      // text("Cards", textColor: appStore.textPrimaryColor, fontFamily: fontBold, fontSize: textSizeLargeMedium),
                      Expanded(
                          child: Text(
                        "(" +
                            (position + 1).toString() +
                            "/" +
                            cards.length.toString() +
                            ")",
                        style: TextStyle(
                          color: t12_text_secondary,
                          fontSize: textSizeMedium,
                          fontFamily: fontMedium,
                        ),
                      )
                              // child: text("(" + (position + 1).toString() + "/" + cards.length.toString() + ")", textColor: appStore.textSecondaryColor, fontSize: textSizeMedium, fontFamily: fontMedium)
                              .paddingLeft(spacing_control)),
                      Icon(Icons.add_circle_outline,
                          size: 20, color: t12_primary_color)
                    ],
                  ).paddingAll(spacing_standard_new),
                  Container(
                    height: cardHeight,
                    child: PageView.builder(
                      itemCount: cards.length,
                      itemBuilder: (context, index) {
                        return Container(
                          width: double.infinity,
                          height: cardHeight,
                          margin: EdgeInsets.symmetric(horizontal: 16.0),
                          child: Stack(
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      colors: t12_gradient_colors[
                                          index % t12_gradient_colors.length],
                                      begin: Alignment.topRight),
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(spacing_standard)),
                                ),
                                width: double.infinity,
                                height: double.infinity,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        "Shopping Card",
                                        style: TextStyle(
                                          color: Colors.white.withOpacity(0.7),
                                          fontSize: textSizeMedium,
                                        ),
                                      ),
                                      // text("Shopping Card", textColor: Colors.white.withOpacity(0.7), fontSize: textSizeMedium),
                                      Image.asset(
                                          "images/theme12/mastercard.png",
                                          width: 40,
                                          height: 40)
                                    ],
                                  ),
                                  Expanded(
                                      child: Text(
                                    "**** **** **** 3960",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: fontBold,
                                      fontSize: textSizeNormal,
                                    ),
                                  ).paddingTop(spacing_standard)),
                                  // Expanded(child: text("**** **** **** 3960", textColor: Colors.white, fontFamily: fontBold, fontSize: textSizeNormal).paddingTop(spacing_standard)),
                                  Row(
                                    children: <Widget>[
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              "CARD HOLDER",
                                              style: TextStyle(
                                                color: Colors.white
                                                    .withOpacity(0.7),
                                                fontSize: textSizeMedium,
                                              ),
                                            ),
                                            // text("CARD HOLDER", textColor: Colors.white.withOpacity(0.7), fontSize: textSizeMedium),
                                            Text(
                                              "JAMES DENNIS",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: textSizeMedium,
                                                fontFamily: fontMedium,
                                              ),
                                            ),
                                            // text("JAMES DENNIS", textColor: Colors.white, fontSize: textSizeMedium, fontFamily: fontMedium),
                                          ],
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            "EXPIRES",
                                            style: TextStyle(
                                              color:
                                                  Colors.white.withOpacity(0.7),
                                              fontSize: textSizeMedium,
                                            ),
                                          ),
                                          // text("EXPIRES", textColor: Colors.white.withOpacity(0.7), fontSize: textSizeMedium),
                                          Text(
                                            "10/22",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: textSizeMedium,
                                              fontFamily: fontMedium,
                                            ),
                                          ),
                                          // text("10/22", textColor: Colors.white, fontSize: textSizeMedium, fontFamily: fontMedium),
                                        ],
                                      ).paddingRight(spacing_standard_new),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            "CVV",
                                            style: TextStyle(
                                                color: Colors.white
                                                    .withOpacity(0.7),
                                                fontSize: textSizeMedium),
                                          ),
                                          // text("CVV", textColor: Colors.white.withOpacity(0.7), fontSize: textSizeMedium),
                                          Text(
                                            "***",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: textSizeMedium,
                                                fontFamily: fontMedium),
                                          ),
                                          // text("***", textColor: Colors.white, fontSize: textSizeMedium, fontFamily: fontMedium),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ).paddingAll(spacing_standard_new)
                            ],
                          ),
                        );
                      },
                      onPageChanged: (index) {
                        setState(() {
                          position = index;
                        });
                      },
                    ),
                  ),
                  DotsIndicator(
                    dotsCount: cards.length,
                    position: position,
                    decorator: DotsDecorator(
                      color: t12_text_secondary.withOpacity(0.15),
                      activeColor: t12_primary_color,
                      activeSize: Size.square(spacing_middle),
                      spacing: EdgeInsets.all(3),
                    ),
                  ).paddingAll(spacing_standard)
                ],
              ).paddingBottom(spacing_standard),
            ).paddingOnly(
                left: spacing_standard_new, right: spacing_standard_new),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: context.scaffoldBackgroundColor,
                  // showShadow: true,
                  borderRadius: BorderRadius.circular(spacing_standard)),
              // decoration: boxDecoration(bgColor: context.scaffoldBackgroundColor, showShadow: true, radius: spacing_standard),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        "Bank Accounts",
                        style: TextStyle(
                            color: t12_text_color_primary,
                            fontFamily: fontBold,
                            fontSize: textSizeLargeMedium),
                      ),
                      // text("Bank Accounts", textColor: appStore.textPrimaryColor, fontFamily: fontBold, fontSize: textSizeLargeMedium),
                      Expanded(
                          child: Text(
                        "(" + (ac_position + 1).toString() + "/2)",
                        style: TextStyle(
                            color: t12_text_secondary,
                            fontSize: textSizeMedium,
                            fontFamily: fontMedium),
                      ).paddingLeft(spacing_control)),
                      // text("(" + (ac_position + 1).toString() + "/2)", textColor: appStore.textSecondaryColor, fontSize: textSizeMedium, fontFamily: fontMedium).paddingLeft(spacing_control)),
                      Icon(Icons.add_circle_outline,
                          size: 20, color: t12_primary_color)
                    ],
                  ).paddingAll(spacing_standard_new),
                  Container(
                    height: cardHeight * 0.7,
                    child: PageView.builder(
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Bank Name",
                                  style: TextStyle(
                                      color: t12_text_color_primary,
                                      fontSize: textSizeMedium),
                                ),
                                // text("Bank Name", textColor: appStore.textPrimaryColor, fontSize: textSizeMedium),
                                Text(
                                  "City Bank",
                                  style: TextStyle(
                                      color: t12_text_secondary,
                                      fontFamily: fontMedium),
                                ),
                                // text("City Bank", textColor: appStore.textSecondaryColor, fontFamily: fontMedium),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "Account Name",
                                        style: TextStyle(
                                            color: t12_text_color_primary,
                                            fontSize: textSizeMedium),
                                      ),
                                      // text("Account Name", textColor: appStore.textPrimaryColor, fontSize: textSizeMedium),
                                      Text(
                                        "James Dennis",
                                        style: TextStyle(
                                            color: t12_text_secondary,
                                            fontFamily: fontMedium),
                                      ),
                                      // text("James Dennis", textColor: appStore.textSecondaryColor, fontFamily: fontMedium),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "Ac. Number",
                                        style: TextStyle(
                                            color: t12_text_color_primary,
                                            fontSize: textSizeMedium),
                                      ),
                                      // text("Ac. Number", textColor: appStore.textPrimaryColor, fontSize: textSizeMedium),
                                      Text("737427527",
                                          style: TextStyle(
                                            color: t12_text_secondary,
                                            fontFamily: fontMedium,
                                          )),
                                      // text("737427527", textColor: appStore.textSecondaryColor, fontFamily: fontMedium),
                                    ],
                                  ),
                                ),
                              ],
                            ).paddingTop(spacing_standard)
                          ],
                        ).paddingOnly(
                            left: spacing_standard_new,
                            right: spacing_standard_new);
                      },
                      onPageChanged: (index) {
                        setState(() {
                          ac_position = index;
                        });
                      },
                    ),
                  ),
                ],
              ).paddingBottom(spacing_standard),
            ).paddingAll(spacing_standard_new)
          ],
        ),
      ),
    );
  }
}
