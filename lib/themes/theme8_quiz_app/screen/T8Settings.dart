import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
// import 'package:prokit_flutter/main/utils/AppWidget.dart';
import 'package:socialv_prokit/themes/theme8_quiz_app/utils/T8Colors.dart';
import 'package:socialv_prokit/themes/theme8_quiz_app/utils/T8Constant.dart';
import 'package:socialv_prokit/themes/theme8_quiz_app/utils/T8Strings.dart';

// import '../../../main.dart';

class T8Setting extends StatefulWidget {
  static String tag = '/T8Setting';

  @override
  T8SettingState createState() => T8SettingState();
}

class T8SettingState extends State<T8Setting> {
  @override
  Widget build(BuildContext context) {
    // Uncomment
    // changeStatusColor(appStore.appBarColor!);

    return Scaffold(
      backgroundColor: context.scaffoldBackgroundColor,
      appBar: AppBar(
          title: Text(
        t8_lbl_setting,
        style: TextStyle(
          color: t8_textColorPrimary,
        ),
      )),
      // appBar: appBar(context, t8_lbl_setting),
      body: Column(
        children: <Widget>[
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.all(20),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 8),
                    Container(
                      decoration: BoxDecoration(
                        color: context.scaffoldBackgroundColor,
                        borderRadius: BorderRadius.circular(8),
                        // showShadow: true
                      ),
                      // decoration: boxDecoration(bgColor: context.scaffoldBackgroundColor, radius: 8, showShadow: true),
                      margin: EdgeInsets.only(bottom: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          T8SettingOptionPattern1(
                              Icons.person, t8_lbl_profile, t8_username),
                          T8SettingOptionPattern1(
                              Icons.edit, t8_lbl_edit_profile, t8_email),
                          T8SettingOptionPattern1(
                              Icons.help, t8_lbl_faq, t8_sub_info_faq),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: context.scaffoldBackgroundColor,
                        borderRadius: BorderRadius.circular(8),
                        // showShadow: true,
                      ),
                      // decoration: boxDecoration(bgColor: context.scaffoldBackgroundColor, radius: 8, showShadow: true),
                      margin: EdgeInsets.only(bottom: 20),
                      child: Column(
                        children: <Widget>[
                          T8SettingOptionPattern2(Icons.info, t8_lbl_about_app),
                          T8SettingOptionPattern2(Icons.star, t8_lbl_rate_app),
                          T8SettingOptionPattern2(
                              Icons.share, t8_lbl_share_app),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: context.scaffoldBackgroundColor,
                        borderRadius: BorderRadius.circular(8),
                        // showShadow: true
                      ),
                      // decoration: boxDecoration(bgColor: context.scaffoldBackgroundColor, radius: 8, showShadow: true),
                      margin: EdgeInsets.only(bottom: 20),
                      child: Column(
                        children: <Widget>[
                          T8SettingOptionPattern3(
                              Icons.dark_mode, t8_lbl_dark_mode),
                          T8SettingOptionPattern3(
                              Icons.security, t8_lbl_privacy),
                          T8SettingOptionPattern3(
                              Icons.help_outline, t8_lbl_help_center),
                        ],
                      ),
                    ),
                    Text(
                      t8_lbl_logout,
                      style: TextStyle(
                        color: t8_colorPrimary,
                        fontSize: textSizeLargeMedium,
                        fontFamily: fontBold,
                        // textAllCaps: true,
                      ),
                    )
                    // text(t8_lbl_logout, textColor: t8_colorPrimary, fontSize: textSizeLargeMedium, textAllCaps: true, fontFamily: fontBold)
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

// ignore: non_constant_identifier_names
Widget T8SettingOptionPattern1(var settingIcon, var heading, var info) {
  return Padding(
    padding: EdgeInsets.fromLTRB(16, 10, 16, 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: t8_color_setting),
              width: 45,
              height: 45,
              padding: EdgeInsets.all(4),
              child: Icon(settingIcon, color: t8_white),
            ),
            SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  heading,
                  style: TextStyle(color: t8_textColorPrimary),
                ),
                // text(heading, textColor: appStore.textPrimaryColor),
                Text(
                  info,
                  style: TextStyle(
                    color: t8_textColorSecondary,
                    fontSize: textSizeSMedium,
                  ),
                ),
                // text(info, textColor: appStore.textSecondaryColor, fontSize: textSizeSMedium),
              ],
            ),
          ],
        ),
        Icon(Icons.keyboard_arrow_right, color: t8_icon_color),
        // Icon(Icons.keyboard_arrow_right, color: appStore.iconColor)
      ],
    ),
  );
}

// ignore: non_constant_identifier_names
Widget T8SettingOptionPattern2(var icon, var heading) {
  bool isSwitched1 = false;

  return Padding(
    padding: EdgeInsets.fromLTRB(16, 10, 16, 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: t8_color_setting),
              width: 45,
              height: 45,
              padding: EdgeInsets.all(4),
              child: Icon(icon, color: t8_white),
            ),
            SizedBox(width: 16),
            Text(heading,
                style: TextStyle(
                  color: t8_textColorPrimary,
                )),
            // text(heading, textColor: appStore.textPrimaryColor),
          ],
        ),
        Switch(
          value: isSwitched1,
          onChanged: (value) {
            isSwitched1 = value;
          },
          activeTrackColor: t8_colorPrimary,
          activeColor: t8_view_color,
        )
      ],
    ),
  );
}

// ignore: non_constant_identifier_names
Widget T8SettingOptionPattern3(var icon, var heading) {
  return Padding(
    padding: EdgeInsets.fromLTRB(16, 10, 16, 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: t8_color_setting),
              width: 45,
              height: 45,
              padding: EdgeInsets.all(4),
              child: Icon(icon, color: t8_white),
            ),
            SizedBox(width: 16),
            Text(
              heading,
              style: TextStyle(
                color: t8_textColorPrimary,
              ),
            )
            // text(heading, textColor: appStore.textPrimaryColor),
          ],
        ),
        Icon(
          Icons.keyboard_arrow_right,
          color: t8_icon_color,
          // color: appStore.iconColor,
        )
      ],
    ),
  );
}
