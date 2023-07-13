import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
// import 'package:prokit_flutter/main/utils/AppWidget.dart';
import 'package:socialv_prokit/themes/theme12_digital_wallet/models/T12Models.dart';
import 'package:socialv_prokit/themes/theme12_digital_wallet/utils/t12_colors.dart';
import 'package:socialv_prokit/themes/theme12_digital_wallet/utils/t12_corousel_widget.dart';
import 'package:socialv_prokit/themes/theme12_digital_wallet/utils/t12_images.dart';

import 't12_constant.dart';

Widget toolBarTitle(var title, {textColor = t12_text_color_primary}) {
  return Text(
    title,
    style: TextStyle(
        fontSize: textSizeNormal, fontFamily: fontBold, color: textColor),
  );
  // return text(title, fontSize: textSizeNormal, fontFamily: fontBold, textColor: textColor);
}

Widget themeLogo() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Image.asset(t12_ic_logo, width: 30, height: 30),
      Text("Werolla",
              style: TextStyle(
                  fontSize: textSizeLarge,
                  fontFamily: fontBold,
                  color: t12_text_color_primary))
          .paddingLeft(spacing_standard_new)
      // text("Werolla", fontSize: textSizeLarge, fontFamily: fontBold, textColor: appStore.textPrimaryColor).paddingLeft(spacing_standard_new)
    ],
  );
}

Widget formField(context, hint,
    {isEnabled = true,
    isDummy = false,
    controller,
    isPasswordVisible = false,
    isPassword = false,
    keyboardType = TextInputType.text,
    FormFieldValidator<String>? validator,
    onSaved,
    textInputAction = TextInputAction.next,
    FocusNode? focusNode,
    FocusNode? nextFocus,
    IconData? suffixIcon,
    IconData? prefixIcon,
    maxLine = 1,
    suffixIconSelector}) {
  return TextFormField(
    controller: controller,
    obscureText: isPassword ? isPasswordVisible : false,
    cursorColor: t12_primary_color,
    maxLines: maxLine,
    keyboardType: keyboardType,
    validator: validator,
    onSaved: onSaved,
    textInputAction: textInputAction,
    focusNode: focusNode,
    onFieldSubmitted: (arg) {
      if (nextFocus != null) {
        FocusScope.of(context).requestFocus(nextFocus);
      }
    },
    decoration: InputDecoration(
      focusedBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(spacing_standard),
          borderSide: BorderSide(color: Colors.transparent)),
      enabledBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(spacing_standard),
          borderSide: BorderSide(color: Colors.transparent)),
      filled: true,
      fillColor: t12_edittext_background,
      hintText: hint,
      hintStyle: TextStyle(fontSize: textSizeMedium, color: t12_text_secondary),
      prefixIcon: Icon(
        prefixIcon,
        color: t12_text_secondary,
        size: 20,
      ),
      suffixIcon: isPassword
          ? GestureDetector(
              onTap: suffixIconSelector,
              child: new Icon(
                suffixIcon,
                color: t12_text_secondary,
                size: 20,
              ),
            )
          : Icon(
              suffixIcon,
              color: t12_text_secondary,
              size: 20,
            ),
    ),
    style: TextStyle(
        fontSize: textSizeNormal,
        color: isDummy ? Colors.transparent : t12_text_color_primary,
        fontFamily: fontRegular),
  );
}

// ignore: must_be_immutable
class T12SliderWidget extends StatelessWidget {
  List<T12Slider> mSliderList;
  var callBack;

  T12SliderWidget(this.mSliderList, this.callBack);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    final Size cardSize = Size(width, width * (10 / 16));
    return T12CarouselSlider.builder(
      viewportFraction: 0.92,
      height: cardSize.height,
      enlargeCenterPage: true,
      onPageChanged: callBack,
      itemCount: mSliderList.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Container(
          width: MediaQuery.of(context).size.width,
          height: cardSize.height,
          padding: EdgeInsets.only(top: 16),
          margin: EdgeInsets.symmetric(horizontal: 4.0),
          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: t12_gradient_colors[
                            index % t12_gradient_colors.length],
                        begin: Alignment.topRight),
                    borderRadius:
                        BorderRadius.all(Radius.circular(spacing_standard))),
                width: MediaQuery.of(context).size.width,
                height: cardSize.height,
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
                            Text("CARD HOLDER",
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.7),
                                  fontSize: textSizeMedium,
                                )),
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
      },
    );
  }
}

Widget headingText(String content) {
  return Text(
    content,
    style: TextStyle(
      color: t12_text_color_primary,
      fontFamily: fontBold,
      fontSize: textSizeNormal,
    ),
  );
  // return text(content, textColor: appStore.textPrimaryColor, fontFamily: fontBold, fontSize: textSizeNormal);
}

Widget transactionWidget(T12Transactions transaction, var categoryWidth) {
  return Container(
    decoration: BoxDecoration(
      color: t12_primary_color,
      // showShadow: true,
      borderRadius: BorderRadius.circular(spacing_standard),
    ),
    // decoration: boxDecoration(bgColor: appStore.scaffoldBackground, showShadow: true, radius: spacing_standard),
    padding: EdgeInsets.all(spacing_standard),
    margin: EdgeInsets.only(bottom: spacing_standard),
    child: Row(
      children: <Widget>[
        Image.asset(
          transaction.img,
          width: categoryWidth * 0.75,
          height: categoryWidth * 0.75,
        )
            .cornerRadiusWithClipRRect(spacing_standard)
            .paddingRight(spacing_standard),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                transaction.type,
                style: TextStyle(
                    fontSize: textSizeMedium,
                    color: t12_text_color_primary,
                    fontFamily: fontMedium),
              ),
              // text(transaction.type, fontSize: textSizeMedium, textColor: appStore.textPrimaryColor, fontFamily: fontMedium),
              Text(
                transaction.subType,
                style: TextStyle(
                  fontSize: textSizeMedium,
                  color: t12_text_secondary,
                ),
              ).paddingTop(spacing_control_half),
              // text(transaction.subType, fontSize: textSizeMedium, textColor: appStore.textSecondaryColor).paddingTop(spacing_control_half),
            ],
          ),
        ),
        Column(
          children: <Widget>[
            Text(
              transaction.transactionType == "credited"
                  ? "+ \$" + transaction.amount.toString()
                  : "- \$" + transaction.amount.toString(),
              style: TextStyle(
                fontSize: textSizeMedium,
                color: transaction.transactionType == "credited"
                    ? t12_success
                    : t12_error,
                fontFamily: fontBold,
              ),
            ),
            // text(transaction.transactionType == "credited" ? "+ \$" + transaction.amount.toString() : "- \$" + transaction.amount.toString(),
            //     fontSize: textSizeMedium, textColor: transaction.transactionType == "credited" ? t12_success : t12_error, fontFamily: fontBold),
            Text(
              transaction.time,
              style: TextStyle(
                fontSize: textSizeMedium,
                color: t12_text_secondary,
              ),
            ).paddingTop(spacing_control)
            // text(transaction.time, fontSize: textSizeMedium, textColor: appStore.textSecondaryColor).paddingTop(spacing_control)
          ],
        )
      ],
    ),
  );
}
