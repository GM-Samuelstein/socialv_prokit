import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
// import 'package:prokit_flutter/main/utils/AppWidget.dart';
import 'package:socialv_prokit/themes/theme12_digital_wallet/models/T12Models.dart';
import 'package:socialv_prokit/themes/theme12_digital_wallet/utils/t12_colors.dart';
import 'package:socialv_prokit/themes/theme12_digital_wallet/utils/t12_constant.dart';
import 'package:socialv_prokit/themes/theme12_digital_wallet/utils/t12_data_generator.dart';

class T12Cards extends StatefulWidget {
  static String tag = '/T12Cards';

  @override
  T12CardsState createState() => T12CardsState();
}

class T12CardsState extends State<T12Cards> {
  List<T12Slider> mSliderList = [];

  @override
  void initState() {
    super.initState();
    mSliderList.addAll(getCards());
  }

  @override
  Widget build(BuildContext context) {
    var width = context.width();

    var cardHeight = (width - 32) * (9 / 16);
    return Scaffold(
      appBar: AppBar(title: Text("My Cards"), actions: [
        Container(
          padding: EdgeInsets.only(right: spacing_standard_new),
          child: Row(
            children: <Widget>[
              Icon(
                Icons.add_circle_outline,
                size: 16,
                color: t12_primary_color,
              ),
              Text(
                "Add Card",
                style: TextStyle(
                  fontSize: textSizeMedium,
                  color: t12_primary_color,
                  fontFamily: fontMedium,
                ),
              ).paddingLeft(spacing_control_half)
              // text("Add Card", fontSize: textSizeMedium, textColor: t12_primary_color, fontFamily: fontMedium).paddingLeft(spacing_control_half)
            ],
          ),
        )
      ]),
      body: Container(
        height: double.infinity,
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            padding: EdgeInsets.only(
                left: spacing_standard_new,
                right: spacing_standard_new,
                top: spacing_standard_new),
            itemCount: mSliderList.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                width: context.width(),
                height: cardHeight,
                margin: EdgeInsets.only(bottom: spacing_standard_new),
                child: Stack(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: t12_gradient_colors[
                                  index % t12_gradient_colors.length],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight),
                          borderRadius: BorderRadius.all(
                              Radius.circular(spacing_standard))),
                      width: double.infinity,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              height: 40,
                            )
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "CARD HOLDER",
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.7),
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "EXPIRES",
                                  style: TextStyle(
                                    color: Colors.white.withOpacity(0.7),
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "CVV",
                                  style: TextStyle(
                                    color: Colors.white.withOpacity(0.7),
                                    fontSize: textSizeMedium,
                                  ),
                                ),
                                // text("CVV", textColor: Colors.white.withOpacity(0.7), fontSize: textSizeMedium),
                                Text(
                                  "***",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: textSizeMedium,
                                    fontFamily: fontMedium,
                                  ),
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
            }),
      ),
    );
  }
}
