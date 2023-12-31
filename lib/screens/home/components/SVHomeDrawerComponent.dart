import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:socialv_prokit/models/SVCommonModels.dart';
import 'package:socialv_prokit/screens/home/screens/SVForumScreen.dart';
import 'package:socialv_prokit/screens/profile/screens/SVGroupProfileScreen.dart';
import 'package:socialv_prokit/utils/SVColors.dart';
import 'package:socialv_prokit/utils/SVCommon.dart';
import 'package:socialv_prokit/themes/theme8_quiz_app/screen/T8Settings.dart';

class SVHomeDrawerComponent extends StatefulWidget {
  @override
  State<SVHomeDrawerComponent> createState() => _SVHomeDrawerComponentState();
}

class _SVHomeDrawerComponentState extends State<SVHomeDrawerComponent> {
  List<SVDrawerModel> options = getDrawerOptions();

  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        50.height,
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset('images/socialv/faces/face_1.png',
                        height: 62, width: 62, fit: BoxFit.cover)
                    .cornerRadiusWithClipRRect(8),
                16.width,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Mal Nurrisht', style: boldTextStyle(size: 18)),
                    8.height,
                    Text('malnur@gmail.com',
                        style: secondaryTextStyle(color: svGetBodyColor())),
                  ],
                ),
              ],
            ),
            IconButton(
              icon: Image.asset('images/socialv/icons/ic_CloseSquare.png',
                  height: 16,
                  width: 16,
                  fit: BoxFit.cover,
                  color: context.iconColor),
              onPressed: () {
                finish(context);
              },
            ),
          ],
        ).paddingOnly(left: 16, right: 8, bottom: 20, top: 20),
        20.height,
        Column(
          mainAxisSize: MainAxisSize.min,
          children: options.map((e) {
            int index = options.indexOf(e);
            return SettingItemWidget(
              decoration: BoxDecoration(
                  color: selectedIndex == index
                      ? SVAppColorPrimary.withAlpha(30)
                      : context.cardColor),
              title: e.title.validate(),
              titleTextStyle: boldTextStyle(size: 14),
              leading: Image.asset(e.image.validate(),
                  height: 22,
                  width: 22,
                  fit: BoxFit.cover,
                  color: SVAppColorPrimary),
              onTap: () {
                selectedIndex = index;
                setState(() {});
                if (selectedIndex == options.length - 1) {
                  finish(context);
                  finish(context);
                } else if (selectedIndex == 4) {
                  finish(context);
                  SVForumScreen().launch(context);
                } else if (selectedIndex == 2) {
                  finish(context);
                  SVGroupProfileScreen().launch(context);
                } else if (selectedIndex == 6) {
                  finish(context);
                  T8Setting().launch(context);
                }
              },
            );
          }).toList(),
        ).expand(),
        Divider(indent: 16, endIndent: 16),
        4.height,
        SnapHelperWidget<PackageInfo>(
          future: PackageInfo.fromPlatform(),
          onSuccess: (data) =>
              Text(data.version, style: boldTextStyle(color: svGetBodyColor())),
        ),
        20.height,
      ],
    );
  }
}
